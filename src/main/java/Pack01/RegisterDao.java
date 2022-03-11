package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;

public class RegisterDao {
   /*@Autowired
   ConnectionProvider conn;*/
   
   RegisterDao(){ }
   
   boolean Insert(RegisterDto registerDto){
      String sql = "insert into member values(null, ?, ?, null, null);";
      try {
			/* Connection conn = ConnectionProvider.getConnection();
			 PreparedStatement pstmt = conn.prepareStatement(sql);
			
			 pstmt.setString(1, registerDto.getName());
			 pstmt.setString(2, registerDto.getNumber());
			 int rs = pstmt.executeUpdate();
			
			 if(rs>=1)
			 {
			return true;
			 }*/
      }catch (Exception e) {
         // TODO: handle exception
         System.out.println(e.getMessage());
      }
      return false;
   }
}