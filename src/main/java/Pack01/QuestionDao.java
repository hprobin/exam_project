package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

public class QuestionDao {
	@Autowired
	ConnectionDB conn;

	QuestionDao(){}

	// 수검번호의 시험 응시 내역 조회
	boolean Select(TesterDto testerDto) {
		String sql = "select number from member where name =? and number =? and exam_ox = 'X';";
		try {
			Connection conn = ConnectionDB.getConnection();	
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, testerDto.getName());
			pstmt.setString(2, testerDto.getNumber());

			ResultSet rs = pstmt.executeQuery();
			System.out.println(testerDto.getNumber());
			while(rs.next()) {
				if (rs.getString("number").equals(testerDto.getNumber())) {					
					return true;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// 신규 응시자 문제 생성, mAnswer에 기본 default value 저장
	boolean QuizInsert(TesterDto testerDto) {
		String sqlSelect = "select q.index from question q order by rand() limit 5;";	
		String sqlInsert = "insert into mAnswer values(?,?,default,?,default,?,default,?,default,?,default,default)";
		String sqlStart = "update member set startTime=now() where number=?";
		List<String> list = new ArrayList<String>();
		try {
			Connection conn = ConnectionDB.getConnection();

			PreparedStatement pstmt = conn.prepareStatement(sqlSelect);	//5개 조회쿼리
			ResultSet rs = pstmt.executeQuery();	//5개 조회

			PreparedStatement pstmt2 = conn.prepareStatement(sqlInsert);	//5개 삽입 

			while(rs.next()) {				
				list.add(rs.getString("q.index"));
			}
			pstmt2.setString(1, testerDto.getNumber());
			pstmt2.setString(2, list.get(0));
			pstmt2.setString(3, list.get(1));
			pstmt2.setString(4, list.get(2));
			pstmt2.setString(5, list.get(3));
			pstmt2.setString(6, list.get(4));
			int rs2 = pstmt2.executeUpdate();	//5개 삽입

			PreparedStatement pstmt3 = conn.prepareStatement(sqlStart);
			pstmt3.setString(1, testerDto.getNumber());
			int rs3 = pstmt3.executeUpdate();

			if(rs2>=1 && rs3 >=1)
			{
				return true;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	//index 값에 해당하는 문제 가져오기
	List<QuestionDto> QuizIndex(TesterDto testerDto, int num) {
		String sql = "select * from question q where q.index = (select q? from mAnswer where number = ?);";	
		List<QuestionDto> list = new ArrayList<QuestionDto>();
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);	//5개 조회쿼리

			pstmt.setInt(1, num);
			pstmt.setString(2, testerDto.getNumber());
			ResultSet rs = pstmt.executeQuery();	//5개 조회

			// 쿼리로 가져온 question list에 저장
			while(rs.next()) {				
				list.add(new QuestionDto(rs.getInt("index"), rs.getString("ques"), 
						rs.getString("n1"), rs.getString("n2"), 
						rs.getString("n3"),  rs.getString("n4"), 
						rs.getInt("ans")));
			}
			return list;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	// mAnswer value에 0이 있는 컬럼 index select
	int SelectQuizIndex(String number) {
		String sql = "select a1, a2, a3, a4, a5 from mAnswer where number =?;";	
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, number);
			pstmt.setString(1, number);
			ResultSet rs = pstmt.executeQuery();

			int i = 1;

			//mAnswer에서 입력값이 0인 컬럼 검색
			while(rs.next()) {
				for (int j = 0; j < 5; j++) {
					if(rs.getInt(i) == 0) {
						return i;
					}
					i++;	
				}
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	// 정답 선택시 mAnswer 테이블에 정답 update
	boolean UpdateAnswer(int index, int value, int number) {
		String sql = "update mAnswer set a?=? where number=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, index);
			pstmt.setInt(2, value);
			pstmt.setInt(3, number);
			int rs = pstmt.executeUpdate();

			if(rs>=1)
				return true;

		}catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return false;
	}

	// 시간차 구하는 함수
	boolean TimeDiff(int number) {
		String sql = "SELECT TIMESTAMPDIFF(MINUTE, (select startTime from member where number=?),now()) AS Timediff;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, Integer.toString(number));
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getInt("Timediff") < 5) {
					return true;
				}
			}

		}catch (Exception e) {
			System.out.println(e.getMessage());
		}

		return false;
	}

	// 수험 상태 업데이트
	boolean cntUpdate(int number) {
		String sql = "update member set exam_ox='O' where number=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			System.out.println(number);
			pstmt.setString(1, Integer.toString(number));

			int rs = pstmt.executeUpdate();

			if(rs>=1)
				return true;

		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
}
