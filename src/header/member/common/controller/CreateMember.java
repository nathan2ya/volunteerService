package header.member.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * 작성자 : 류재욱
 * 설  명 : 자원봉사자, 수요처 공통 회원가입 컨트롤러
*/


@Controller
public class CreateMember {
	
	private String url;
	
	//회원가입 step1
	@RequestMapping("/step1_chooseType.do")
	public String step1_choiceType(HttpServletRequest request) throws Exception{
		String type = "";
		
		//0:최초진입, 1:가입이력있음
		if(request.getParameter("type") == null){
			type = "0";
		}else{
			type = request.getParameter("type");
		}
		request.setAttribute("type", type);
		return "/view/member/step1_chooseType.jsp";
	}
	
	
	//회원가입 step6
	@RequestMapping("/step6_complete.do")
	public String step6_complete() throws Exception{
		return "/view/member/step6_complete.jsp";
	}
	
	
}//end of class
