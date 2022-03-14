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
	String ExamStart(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");

		System.out.println(name + number);
		TesterDto testerDto = new TesterDto(name, number);
		int index = questionDao.SelectQuizIndex(number);
		
		if(questionDao.Select(testerDto)) {
			if (questionDao.QuizInsert(testerDto)) {
				model.addAttribute("result", questionDao.QuizIndex(testerDto, 1));
				model.addAttribute("resultnum", 1);
				return "QuestionView";
			}else if(index > 0){
				model.addAttribute("result", questionDao.QuizIndex(testerDto, index));
				model.addAttribute("resultnum", index);
				return "QuestionView";
			}
		}
		//예외처리
		return "QuestionView2";
	}

}
