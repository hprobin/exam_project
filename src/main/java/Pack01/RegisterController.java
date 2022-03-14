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
	
	//수검번호 생성
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
	
	//수검번호 검색(예외처리 해야함)
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
	
	// 관리자 로그인
	@RequestMapping("/AdminLogin")
	String AdminLogin(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		RegisterDto admindto = new RegisterDto(id, pwd);
		System.out.println(id + pwd);
		
		if(registerdao.Adminlogin(admindto)) {
			return "AdminPage";
		}
		return null;
	}
	
	//수검번호 검색(예외처리 해야함)
		@RequestMapping("/SelectAllMember")
		String SelectAllMember(HttpServletRequest request, Model model) {
				model.addAttribute("selectAll", registerdao.SelectAll());
				return "SelectAllMember";
		}
	
}
