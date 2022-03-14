package Pack01;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class QuestionController {
	@Autowired
	QuestionDao questionDao;
	
	@RequestMapping("/Exam")
	String f1() {
		return "ExamView";
	}
	
	
	@RequestMapping("/examStart")
	String QuestionStart(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		TesterDto testerDto = new TesterDto(name, number);
		
		if (questionDao.Select(testerDto)) {
			return "QuestionView";
		}
		return "ExamView";
	}
	
//	@RequestMapping("/Exam")
//	String Question(Model model) {
//		model.addAttribute("result", questionDao.QuizIndex()); 
//		return "QuestionView";
//	}
//	@RequestMapping("/Question2")
//	String Question2(Model model, HttpServletRequest request) {
//
//		model.addAttribute("index", questionDao.Select(request));
//		return "QuestionView2";
//	}
}
