package Pack01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
	@Autowired
	RegisterDao registerdao;
	
	//�닔寃�踰덊샇 �깮�꽦
	@RequestMapping("/createNumber")
	String CreateNumber(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String number2 = request.getParameter("number2");
		System.out.println(name + number + number2);
		
		RegisterDto registerdto = new RegisterDto(name, number, number2);
		if(registerdao.checkRrn(registerdto)) {
			if(registerdao.Insert(registerdto)) {
				model.addAttribute("result", registerdao.Select(request));
				return "recExamNum";
			}
		}
		//�삁�쇅 泥섎━
		return "FailCreateNum";
	}
	
	//�닔寃�踰덊샇 寃��깋(�삁�쇅泥섎━ �빐�빞�븿)
	@RequestMapping("/selectNum")
	String SelectNum(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String number2 = request.getParameter("number2");
		System.out.println(name + number + number2);
		
		if(registerdao.Select(request) != null) {
			model.addAttribute("selectNum", registerdao.Select(request));
			return "recSelectNum";
		}
		return "../index";
	}
	
	// 愿�由ъ옄 濡쒓렇�씤
	@RequestMapping("/AdminLogin")
	String AdminLogin(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		RegisterDto admindto = new RegisterDto(id, pwd);
		System.out.println(id + pwd);
		
		if(registerdao.Adminlogin(admindto)) {
			return "AdminPage";
		}
		return "AdminLogin";
	}
	
	//admin �닔寃�踰덊샇 �쟾泥� 寃��깋(�삁�쇅泥섎━ �빐�빞�븿)
	@RequestMapping("/SelectAllMember")
	String SelectAllMember(HttpServletRequest request, Model model) {
		model.addAttribute("selectAll", registerdao.SelectAll());
		return "SelectAllMember"; 
	}
	

	//수험번호 찾기
	@RequestMapping("/findNum")
	String FindNum(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String number2 = request.getParameter("number2");
		System.out.println(name + number + number2);
		try {
			if(registerdao.Select(request).next()) {
				model.addAttribute("result", registerdao.Select(request));
				return "recExamNum";
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "notFoundNumber";		
		}

	@RequestMapping("/SelectAllQuize")
	String SelectAllQuestion(HttpServletRequest request, Model model) {
		model.addAttribute("result", registerdao.SelectAllQuestion());
		return "SelectAllQuestion";

	}
}
