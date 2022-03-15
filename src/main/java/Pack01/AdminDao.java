package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;

public class AdminDao {
	@Autowired
	ConnectionDB conn;

	AdminDao() {
	}

	// 문제 추가 dao
	boolean AddQuestion(AdminDto adminDto) {
		String sql = "insert into question values(default, ?, ?, ?, ?, ?, ?);";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, adminDto.getQues());
			pstmt.setString(2, adminDto.getEx1());
			pstmt.setString(3, adminDto.getEx2());
			pstmt.setString(4, adminDto.getEx3());
			pstmt.setString(5, adminDto.getEx4());
			pstmt.setString(6, adminDto.getAns());

			int rs = pstmt.executeUpdate();
			
			if(rs>=1)
			{
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
