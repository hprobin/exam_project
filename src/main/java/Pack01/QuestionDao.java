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
		String sql = "select number from member name = ? and number = ? and exam_ox = 'X';";
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
//	boolean QuizInsert() {
//		String sqlSelect = "select q.index from question q order by rand() limit 5;";	
//		String sqlInsert = "insert into mAnswer values(?,?,default,?,default,?,default,?,default,?,default,default)";			
//		List<Integer> list = new ArrayList<Integer>();
//		try {
//			Connection conn = ConnectionDB.getConnection();
//			
//			PreparedStatement pstmt = conn.prepareStatement(sqlSelect);	//5개 조회쿼리
//			ResultSet rs = pstmt.executeQuery();	//5개 조회
//			
//			PreparedStatement pstmt2 = conn.prepareStatement(sqlInsert);	//5개 삽입 
//			int rs2 = pstmt2.executeUpdate();	//5개 삽입
//			
//			while(rs.next()) {				
//				list.add(rs.getInt("q.index"));
//			}
//			pstmt2.setInt(1, );
//			return list;
//		}catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		return null;
//	}
//	
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
