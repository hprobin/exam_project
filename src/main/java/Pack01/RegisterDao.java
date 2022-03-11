package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

public class RegisterDao {
	@Autowired
	ConnectionDB conn;

	RegisterDao(){ }
	boolean Insert(RegisterDto registerDto){
		String sql = "insert into member values"
				+ "(concat(date_format(now(), '%d%H%i'), cast( cast( rand()*100 as unsigned) as char)), ?, ?, ?, now(), default);";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, registerDto.getName()); // 이름
			pstmt.setString(2, registerDto.getNumber()); // 주민등록번호 앞자리
			pstmt.setString(3, registerDto.getNumber2()); // 주민등록번호 뒷자리

			int rs = pstmt.executeUpdate();

			if(rs>=1)
			{
				return true;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	ResultSet Select(HttpServletRequest request) {
		String sql = "select number, name from member where name=? and rrn1=? and rrn2=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			System.out.println(request.getParameter("name"));
			
			pstmt.setString(1, request.getParameter("name")); // 이름
			pstmt.setString(2, request.getParameter("number")); // 주민등록번호 앞자리
			pstmt.setString(3, request.getParameter("number2")); // 주민등록번호 뒷자리
			
			ResultSet rs = pstmt.executeQuery();

			return rs;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	boolean SelectOk(ResultDto resultDto){
		String sql = "select number from mAnswer where number=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, resultDto.getNumber()); // 수험번호

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				if(rs.getString("number").equals(resultDto.getNumber())) {
					return true;
				}
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	ResultSet resultSelect(HttpServletRequest request) {
		String sql = "select * from mAnswer where number=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			System.out.println(request.getParameter("number"));
			
			pstmt.setString(1, request.getParameter("number"));
			
			ResultSet rs = pstmt.executeQuery();
	
			return rs;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
}