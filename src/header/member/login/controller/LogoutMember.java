package header.member.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * 작성자: 류재욱
 * 설  명: 회원 logout 클래스
 * 용  도: 회원 세션제거
*/

@Controller
public class LogoutMember {
	
	//회원 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) throws Exception{
		
		//세션제거
		session.invalidate();
		return "redirect:/main.do";
	}
	
}//end of class
