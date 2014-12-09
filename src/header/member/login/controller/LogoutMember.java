package header.member.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * �ۼ���: �����
 * ��  ��: ȸ�� logout Ŭ����
 * ��  ��: ȸ�� ��������
*/

@Controller
public class LogoutMember {
	
	//ȸ�� �α׾ƿ�
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) throws Exception{
		
		//��������
		session.invalidate();
		return "redirect:/main.do";
	}
	
}//end of class
