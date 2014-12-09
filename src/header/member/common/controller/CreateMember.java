package header.member.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * �ۼ��� : �����
 * ��  �� : �ڿ�������, ����ó ���� ȸ������ ��Ʈ�ѷ�
*/


@Controller
public class CreateMember {
	
	private String url;
	
	//ȸ������ step1
	@RequestMapping("/step1_chooseType.do")
	public String step1_choiceType(HttpServletRequest request) throws Exception{
		String type = "";
		
		//0:��������, 1:�����̷�����
		if(request.getParameter("type") == null){
			type = "0";
		}else{
			type = request.getParameter("type");
		}
		request.setAttribute("type", type);
		return "/view/member/step1_chooseType.jsp";
	}
	
	
	//ȸ������ step6
	@RequestMapping("/step6_complete.do")
	public String step6_complete() throws Exception{
		return "/view/member/step6_complete.jsp";
	}
	
	
}//end of class
