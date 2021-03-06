package header.member.volunteer.controller;

import header.member.volunteer.dto.VolunteerDTO;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

import common.lib.VolunteerCode;

/*
 * 작성자 : 류재욱
 * 설  명 : 자원봉사자 회원수정 컨트롤러
*/

@Controller
public class UpdateVolunteer {
	
	private String url; // return URL
	private VolunteerDTO volunteerDTO = new VolunteerDTO();
	
	//DB커넥트 인스턴스 변수
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DB커넥트 생성자
	public UpdateVolunteer() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DB커넥트 생성자 버전 끝
	
	//회원수정(기본).자원봉사자
	@RequestMapping("/voMyInformationForm_bsc.do")
	public String voMyInformation(HttpServletRequest request, HttpSession session) throws Exception{
		
		String session_volunteerId = (String) session.getAttribute("session_volunteerId");
		volunteerDTO = (VolunteerDTO)sqlMapper.queryForObject("Volunteer.selectVolunteerOne", session_volunteerId);
		request.setAttribute("volunteerDTO", volunteerDTO);
		return "/view/member/volunteer/myPage/myInformation_bsc.jsp";
	}
	
	
	
	
	
	
	/*
	//회원가입.자원봉사자 step2 - 약관동의
	@RequestMapping("/step2_voStipulation.do")
	public String step2_voStipulation(HttpServletRequest request) throws Exception{
		String vol_name = request.getParameter("vol_name");
		String vol_email = request.getParameter("vol_email");
		
		volunteerDTO.setVol_name(vol_name);
		volunteerDTO.setVol_email(vol_email);
		Integer count = (Integer) sqlMapper.queryForObject("Volunteer.selectCountForStipulation", volunteerDTO);
		
		if(count==1){
			url = "redirect:/step1_chooseType.do?type=1";
		}else{
			url = "/view/member/volunteer/step2_stipulation.jsp";
		}
		return url;
	}
	
	
	//회원가입.자원봉사자 step3 - 본인인증
	@RequestMapping("/step3_voCertification.do")
	public String step3_voCertification() throws Exception{
		return "/view/member/volunteer/step3_certification.jsp";
	}
	
	
	//회원가입.자원봉사자 step4 - Basic 폼
	@RequestMapping("/step4_voCreateMemberBasicForm.do")
	public String step4_voCreateMemberForm() throws Exception{
		return "/view/member/volunteer/step4_createMemberBasic.jsp";
	}
	
	
	//회원가입.자원봉사자 Basic - DB insert
	@RequestMapping("/voCreateMemberBasic.do")
	public String voCreateMemberBasic(HttpServletRequest request, @ModelAttribute("VolunteerDTO") VolunteerDTO dto) throws Exception{
		
		request.setCharacterEncoding("euc-kr");
		Calendar today = Calendar.getInstance();
		
		//소속센터 시퀀스 //TODO 소속센터 시퀀스 입력부분부터 다시 해야함
		int vol_center_seq = Integer.parseInt(request.getParameter("vol_center_seq"));
		
		//자원봉사코드 생성 //TODO 자원봉사코드 생성 프로세스 정의 후, 아래 createVolunteerCode 도 재정의
		VolunteerCode volunteerCode = new VolunteerCode("11","22","33","44");
		vol_code = volunteerCode.createVolunteerCode();
		
		//DTO set 
		dto.setVol_center_seq(vol_center_seq);
		dto.setVol_code(vol_code);
		dto.setVol_type_yn("0");
		dto.setVol_company_yn("0");
		dto.setVol_admin_yn("0");
		dto.setVol_reg_date(today.getTime());
		dto.setVol_mod_date(today.getTime());
		
		//DB insert
		sqlMapper.insert("Volunteer.insertVolunteerBasic", dto);
		
		
		 * 2가지 경우의 return URL
		 * 1. [저장] 버튼 선택 : 회원가입완료 페이지로 이동
		 * 2. [선택사항 입력] 버튼 선택 : 선택사항입력 페이지로 이동
		
		if(request.getParameter("confirmType").equals("save")){
			url = "redirect:/step6_complete.do";
		}else{ // equals("more");
			url = "redirect:/step5_voCreateMemberDetailForm.do?volunteer_id="+dto.getVolunteer_id();
		}
		return url;
	}
	
	//회원가입.자원봉사자 step5 - Detail 폼
	@RequestMapping("/step5_voCreateMemberDetailForm.do")
	public String step5_voCreateMemberDetailForm(HttpServletRequest request) throws Exception{
		request.setAttribute("volunteer_id", request.getParameter("volunteer_id"));
		return "/view/member/volunteer/step5_createMemberDetail.jsp";
	}
	
	//회원가입.자원봉사자 detail - DB update
	@RequestMapping("/voCreateMemberDetail.do")
	public String voCreateMemberDetail(HttpServletRequest request, @ModelAttribute("VolunteerDTO") VolunteerDTO dto) throws Exception{
		//DB update
		sqlMapper.update("Volunteer.updateVolunteerDetail", dto);
		return "redirect:/step6_complete.do";
	}
	*/
}//end of class
