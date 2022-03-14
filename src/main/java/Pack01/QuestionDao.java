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
	boolean Select(TesterDto testerDto) {
		String sql = "select number from member where name = ? and number = ? and exam_ox = 'X';";
		try {
			Connection conn = ConnectionDB.getConnection();	
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, testerDto.getName());
			pstmt.setString(2, testerDto.getNumber());
			ResultSet rs = pstmt.executeQuery();
			
			System.out.println(testerDto.getNumber());
			while(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	boolean QuizInsert(TesterDto testerDto) {
		String sqlSelect = "select q.index from question q order by rand() limit 5;";	
		String sqlInsert = "insert into mAnswer values(?,?,default,?,default,?,default,?,default,?,default,default)";			
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
			if(rs2>=1)
			{
				return true;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	List<QuestionDto> QuizIndex(TesterDto testerDto) {
		String sql = "select * from question q where q.index = (select q1 from mAnswer where number = ?);";	
		List<QuestionDto> list = new ArrayList<QuestionDto>();
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);	//5개 조회쿼리
			
			pstmt.setString(1, testerDto.getNumber());
			ResultSet rs = pstmt.executeQuery();	//5개 조회
			
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
	
//	boolean Insert() {
//		
//		return false;
//	}
	
	
//	List<Integer> QuizIndex() {
//		String sql = "select q.index from question q order by rand() limit 5;";	
//		List<Integer> list = new ArrayList<Integer>();
//		try {
//			Connection conn = ConnectionDB.getConnection();
//			PreparedStatement pstmt = conn.prepareStatement(sql);	//5개 조회쿼리
//			ResultSet rs = pstmt.executeQuery();	//5개 조회
//			
//			while(rs.next()) {				
//				list.add(rs.getInt("q.index"));
//			}
//			return list;
//		}catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		return null;
//	}
//	
//	boolean Insert() {
//		
//		return false;
//	}
	
//	ResultSet Select(HttpServletRequest request) {
//		String sql = "select * from question where index = ?;";
//		try {
//			Connection conn = ConnectionDB.getConnection();
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			
//			pstmt.setString(1, request.getParameter("index"));
//			ResultSet rs = pstmt.executeQuery();
//			return rs;
//		}catch (Exception e) {
//			
//		}
//		return null;
//	}
}
