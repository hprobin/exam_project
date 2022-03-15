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

	// �닔寃�踰덊샇 諛쒓툒 硫붿꽌�뱶
	boolean Insert(RegisterDto registerDto){
		String sql = "insert into member values"
				+ "(concat(date_format(now(), '%d%H%i'), cast( cast( rand()*100 as unsigned) as char)), ?, ?, ?, now(), default);";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, registerDto.getName()); // �씠由�
			pstmt.setString(2, registerDto.getNumber()); // 二쇰�쇰벑濡앸쾲�샇 �븵�옄由�
			pstmt.setString(3, registerDto.getNumber2()); // 二쇰�쇰벑濡앸쾲�샇 �뮮�옄由�

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

			pstmt.setString(1, registerDto.getNumber()); // 二쇰�쇰벑濡앸쾲�샇 �븵�옄由�
			pstmt.setString(2, registerDto.getNumber2()); // 二쇰�쇰벑濡앸쾲�샇 �뮮�옄由�

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				if(rs.getInt(1) >= 3)
					return false;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return true;
	}

	// �닔寃�踰덊샇 諛쒓툒�떆 諛쒓툒�맂 �젙蹂� 由ы꽩 硫붿꽌�뱶 
	ResultSet Select(HttpServletRequest request) {
		String sql = "select number, name from member where name=? and rrn1=? and rrn2=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			System.out.println(request.getParameter("name"));

			pstmt.setString(1, request.getParameter("name")); // �씠由�
			pstmt.setString(2, request.getParameter("number")); // 二쇰�쇰벑濡앸쾲�샇 �븵�옄由�
			pstmt.setString(3, request.getParameter("number2")); // 二쇰�쇰벑濡앸쾲�샇 �뮮�옄由�

			ResultSet rs = pstmt.executeQuery();

			return rs;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	// 寃곌낵蹂닿린 jsp
	boolean SelectOk(ResultDto resultDto){
		String sql = "select number from mAnswer where number=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, resultDto.getNumber()); // �닔�뿕踰덊샇

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

	// member join mAnswer
	ResultSet resultSelect(HttpServletRequest request) {
		String sql = "select m.number, name, q1, a1, q2, a2, q3, a3, q4, a4, q5, a5, cnt\r\n"
				+ "from member m join mAnswer ma\r\n"
				+ "on m.number = ma.number\r\n"
				+ "where m.number = ?; ";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, request.getParameter("number"));

			ResultSet rs = pstmt.executeQuery();

			return rs;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	// question table 異붿텧 硫붿냼�뱶
	ResultSet resultSelect_2() {
		String sql = "select q.index as idx, ans from question q;";
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

	// adminlogin
	boolean Adminlogin(RegisterDto adminDto){
		String sql = "select number from member where number=? and name=?;";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, adminDto.getNumber()); // �븘�씠�뵒
			pstmt.setString(2, adminDto.getName()); // 鍮꾨�踰덊샇

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				return true;
			}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}

	// �쟾泥� �쓳�떆�옄 寃��깋(admin) 
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



	ResultSet SelectAllQuestion() {
		String sql = "select * from question;";
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