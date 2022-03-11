package Pack01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectionDB {

	public static Connection getConnection()
	{			
		Connection conn = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://54.242.127.2:3306/test?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC";
			conn = DriverManager.getConnection(url, "test", "1234");
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
	
	public static void close(ResultSet rs, Statement stmt, Connection conn)
	{
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
