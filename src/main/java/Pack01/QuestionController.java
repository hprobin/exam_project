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
	String f1() {
		return "ExamView";
	}

	// �떆�뿕 �떆�옉
	@RequestMapping("/examStart")
	String ExamStart(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");

		System.out.println(name + number);
		TesterDto testerDto = new TesterDto(name, number);
		int index = questionDao.SelectQuizIndex(number);

		if(questionDao.Select(testerDto)) {
			if (index > 0 && questionDao.TimeDiff(Integer.parseInt(request.getParameter("number")))) {
				model.addAttribute("result", questionDao.QuizIndex(testerDto, index));
				model.addAttribute("resultnum", index);
				model.addAttribute("number", number);
				model.addAttribute("name", name);
				return "QuestionView";
			}else if(questionDao.QuizInsert(testerDto)){
				model.addAttribute("result", questionDao.QuizIndex(testerDto, 1));
				model.addAttribute("resultnum", 1);
				model.addAttribute("number", number);
				model.addAttribute("name", name);
				return "QuestionView";
			}
		}
		//�삁�쇅泥섎━
		return "notFoundNumber";
	}

	// �젙�떟 �엯�젰 �븿�닔
	@RequestMapping("/inputAnswer")
	String InputAnswer(HttpServletRequest request, Model model) {

		int index = Integer.parseInt(request.getParameter("num"));
		int value = Integer.parseInt(request.getParameter("n"));
		int number = Integer.parseInt(request.getParameter("number"));

		if(questionDao.TimeDiff(number)) {
			if(questionDao.UpdateAnswer(index, value, number))
				return NextQuestion(request, model);
		}
		//questionDao.cntUpdate(number);
		//�삁�쇅泥섎━
		return "EndQuestion";
	}

	//�젙�떟 �엯�젰 �썑 �럹�씠吏� �씠�룞 �븿�닔
	String NextQuestion(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");

		TesterDto testerDto = new TesterDto(name, number);
		int index = questionDao.SelectQuizIndex(number);
		int index1 = Integer.parseInt(request.getParameter("num"));
		
		if(index1 < 5) {
			model.addAttribute("result", questionDao.QuizIndex(testerDto, index));
			model.addAttribute("resultnum", index);
			model.addAttribute("number", number);
			model.addAttribute("name", name);
			return "QuestionView";
		}
		questionDao.cntUpdate(Integer.parseInt(number));
		return "EndQuestion";
	}

}
