package Pack01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QuestionController {
	@Autowired
	QuestionDao questionDao;
	
	@RequestMapping("/Exam")
	String Question(Model model) {

		model.addAttribute("result", questionDao.listQues());
		return "QuestionView";
	}

}
