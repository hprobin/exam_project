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
	String CreateNumber(Model model, HttpServletRequest requset) {
		String name = requset.getParameter("name");
		String number = requset.getParameter("number");
		
		RegisterDto registerdto = new RegisterDto(name, number);
		
		/*if(RegisterDao.Insert(registerdto)) {
			model.addAttribute("result", RegisterDao.Select());
			return "recExamNum";
		}*/
		return null;
	}
	
	
}
