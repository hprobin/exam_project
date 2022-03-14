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
	
	@RequestMapping("/createNumber")
	String CreateNumber(HttpServletRequest request, Model model) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String number2 = request.getParameter("number2");
		System.out.println(name + number + number2);
		
		RegisterDto registerdto = new RegisterDto(name, number, number2);
		
		if(registerdao.Insert(registerdto)) {
			model.addAttribute("result", registerdao.Select(request));
			return "recExamNum";
		}
		return null;
	}
	
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
	
	
}
