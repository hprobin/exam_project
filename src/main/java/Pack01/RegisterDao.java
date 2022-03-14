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

	// 수검번호 발급 메서드
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

	boolean checkRrn(RegisterDto registerDto){
		String sql = "select count(name) as cnt from member where rrn1=? and rrn2=?";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, registerDto.getNumber()); // 주민등록번호 앞자리
			pstmt.setString(2, registerDto.getNumber2()); // 주민등록번호 뒷자리

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				if(Integer.parseInt(rs.getString(1)) > 3)
					return false;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return true;
	}

	// 수검번호 발급시 발급된 정보 리턴 메서드 
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

	// 결과보기 jsp
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

	// 결과보기 jsp
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

	// adminlogin
	boolean Adminlogin(RegisterDto adminDto){
		String sql = "select number from member where number=? and name=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, adminDto.getNumber()); // 아이디
			pstmt.setString(2, adminDto.getName()); // 비밀번호

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				return true;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	// 전체 응시자 검색(admin) 
	ResultSet SelectAll() {
		String sql = "select * from member;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			ResultSet rs = pstmt.executeQuery();

			return rs;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

}