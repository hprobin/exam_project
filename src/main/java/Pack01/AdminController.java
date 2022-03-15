package Pack01;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;

	// 문제 추가
	@RequestMapping("/AddQ")
	String AdminLogin(HttpServletRequest request, Model model) {
		String ques = request.getParameter("ques");
		String ex1 = request.getParameter("ex1");
		String ex2 = request.getParameter("ex2");
		String ex3 = request.getParameter("ex3");
		String ex4 = request.getParameter("ex4");
		String ans = request.getParameter("ans");

		AdminDto admindto = new AdminDto(ques, ex1, ex2, ex3, ex4, ans);
		
		System.out.println(ques + ex1 + ex2 + ex3 + ex4 + ans);

		if (adminDao.AddQuestion(admindto)) {
			return "AdminPage";
		}
		return "AddQuestion";
	}

}
