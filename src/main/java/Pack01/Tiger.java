package Pack01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Tiger {
	@RequestMapping("/t1")
	String func01() {
		//컨트롤러로 일단 들어오는지 콘솔창을 이용해서 확인하는 과정
		System.out.println("호랑이1");
		
		//return 뒤의 값을 jsp파일로 인식 하여 TigerView.jsp로 감
		return "TigerView";
	}
	
	
}
