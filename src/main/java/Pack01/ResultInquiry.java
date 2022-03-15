package Pack01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResultInquiry {
	@Autowired
	RegisterDao registerdao;

	@RequestMapping("/result")
	String Result(HttpServletRequest request, Model model) {
		String number = request.getParameter("number");
		ResultDto resultdto = new ResultDto(number);
		
		if (registerdao.SelectOk(resultdto)) {
			model.addAttribute("result", registerdao.resultSelect(request));
			model.addAttribute("result_2", registerdao.resultSelect_2());
			return "Result";
		}
		return null;
	}
}
