package Pack01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Tiger {
	@RequestMapping("/t1")
	String func01() {
		//��Ʈ�ѷ��� �ϴ� �������� �ܼ�â�� �̿��ؼ� Ȯ���ϴ� ����
		System.out.println("ȣ����1");
		
		//return ���� ���� jsp���Ϸ� �ν� �Ͽ� TigerView.jsp�� ��
		return "TigerView";
	}
	
	
}
