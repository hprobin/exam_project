package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;

public class RegisterDao {
	@Autowired
	ConnectionDB conn;

	RegisterDao(){ }
	
	Random random = new Random();

	boolean Insert(RegisterDto registerDto){
		String sql = "insert into member values(?, ?, ?, ?, now(), ?);";
		try {
			Connection conn = ConnectionDB.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, random.nextInt(10000)); // 수험번호
			pstmt.setString(2, registerDto.getName()); // 이름
			pstmt.setString(3, registerDto.getNumber()); // 주민등록번호 앞자리
			pstmt.setString(4, registerDto.getNumber2()); // 주민등록번호 뒷자리
			pstmt.setInt(5, 0);	// default : 0 or 1

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