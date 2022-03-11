package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;

public class RegisterDao {
	@Autowired
	ConnectionDB conn;

	RegisterDao(){ }

	boolean Insert(RegisterDto registerDto){
		String sql = "insert into member values(?, ?, ?, now(), ?);";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, 12);
			pstmt.setString(2, registerDto.getName());
			pstmt.setString(3, registerDto.getNumber());
			pstmt.setInt(4, 0);			

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
}