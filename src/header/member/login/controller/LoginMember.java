package header.member.login.controller;

import header.member.demander.dto.DemanderDTO;
import header.member.volunteer.dto.VolunteerDTO;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

/*
 * 작성자: 류재욱
 * 설  명: 회원 login 클래스
 * 용  도: 회원 세션생성
*/

@Controller
public class LoginMember {
	
	private String url; // return URL
	
	//로그인 관련 DTO
	private VolunteerDTO volunteerDTO = new VolunteerDTO();
	private DemanderDTO demanderDTO = new DemanderDTO();
	
	//DB커넥트 인스턴스 변수
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DB커넥트 생성자
	public LoginMember() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DB커넥트 생성자 버전 끝
	
	//회원로그인폼
	@RequestMapping("/loginForm.do")
	public String loginForm(HttpServletRequest request){
		String type = "";
		String user_id = "";
		
		//0:최초진입, 1:아이디 또는 비밀번호 불일치
		if(request.getParameter("type") == null){
			type = "0";
			user_id = "0";
		}else{
			type = request.getParameter("type");
			user_id = request.getParameter("user_id");
		}
		
		request.setAttribute("type", type);
		request.setAttribute("user_id", user_id);
		return "/view/login/login.jsp";
	}
	
	//회원 로그인
	@RequestMapping("login.do")
	public String login(HttpServletRequest request, HttpSession session) throws SQLException{
		
		//사용자가 로그인 요청한 입력값
		String memberType = request.getParameter("memberType"); //vo:일반, de:기관
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		//사용자 ID, PW 체크
		Integer count = null;
		if(memberType.equals("vo")){
			volunteerDTO.setVolunteer_id(user_id);
			volunteerDTO.setVol_pw(user_pw);
			count = (Integer) sqlMapper.queryForObject("Volunteer.selectCountForLogin", volunteerDTO);
		}else{
			demanderDTO.setDemander_id(user_id);
			demanderDTO.setDem_pw(user_pw);
			count = (Integer) sqlMapper.queryForObject("Demander.selectCountForLogin", demanderDTO);
		}
		
		//사용자 확인 될 경우 세션 생성
		if(count==1){
			if(memberType.equals("vo")){
				volunteerDTO = (VolunteerDTO)sqlMapper.queryForObject("Volunteer.selectVolunteerOne", user_id);
				session.setAttribute("session_volunteerId", volunteerDTO.getVolunteer_id()); //자원봉사자ID 세션생성
			}else{
				demanderDTO = (DemanderDTO)sqlMapper.queryForObject("Demander.selectDemanderOne", user_id);
				session.setAttribute("session_demanderId", demanderDTO.getDemander_id()); //수요처ID 세션생성
			}
			url = "redirect:/main.do?memberType="+memberType;
		}else{
			url = "redirect:/loginForm.do?type=1&user_id="+user_id;
		}
		
		return url;
	}
	
}//end of class
