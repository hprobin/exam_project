package Pack01;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
	@Bean
	RegisterDao registerDao() {
		return new RegisterDao();
	}
	@Bean
	ConnectionDB connectionDB() {
		return new ConnectionDB();
	}
	@Bean
	QuestionDao questionDao() {
		return new QuestionDao();
	}
}
