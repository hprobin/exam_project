package Pack01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;



public class QuestionDao {
	@Autowired
	ConnectionDB conn;
	
	QuestionDao(){}
	List<QuestionDto> listQues() {
		String sql = "select * from question order by rand() limit 5;";	
		List<QuestionDto> list = new ArrayList<QuestionDto>();
		try {
			Connection conn = ConnectionDB.getConnection();
			
			PreparedStatement pstmt = conn.prepareStatement(sql);	//5개 조회쿼리
			ResultSet rs = pstmt.executeQuery();	//5개 조회
			
			while(rs.next()) {				
				list.add(new QuestionDto(rs.getInt("index"), rs.getString("ques"), 
						rs.getString("n1"), rs.getString("n2"), 
						 rs.getString("n3"),  rs.getString("n4"), 
						 rs.getInt("ans")));
			}
			System.out.println(list);
			return list;
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
