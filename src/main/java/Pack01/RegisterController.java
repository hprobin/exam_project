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
	String CreateNumber(HttpServletRequest request) {
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		System.out.println(name + number);
		
		RegisterDto registerdto = new RegisterDto(name, number);
		
		if(registerdao.Insert(registerdto)) {
			//model.addAttribute("result", RegisterDao.Select());
			return "recExamNum";
		}
		return null;
	}
	
	
}
