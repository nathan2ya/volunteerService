package header.member.volunteer.controller;

import header.member.volunteer.dto.VolunteerDTO;

import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;


/*
 * 작성자 : 류재욱
 * 설  명 : 자원봉사자 회원가입 컨트롤러
*/


@Controller
public class CreateVolunteer {
	
	private String city; // 도/시 명 (ex. 경상남도 or 서울특별시)
	private String gun; // 군/구 명
	private String dong; // 동 명 
	
	
	//DB커넥트 인스턴스 변수
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DB커넥트 생성자
	public CreateVolunteer() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DB커넥트 생성자 버전 끝
	
	
	//회원가입.자원봉사자 step2 - 약관동의
	@RequestMapping("/step2_stipulation.do")
	public String step2_stipulation() throws Exception{
		return "/view/member/volunteer/step2_stipulation.jsp";
	}
	
	
	//회원가입.자원봉사자 step3 - 본인인증
	@RequestMapping("/step3_certification.do")
	public String step3_certification() throws Exception{
		return "/view/member/volunteer/step3_certification.jsp";
	}
	
	
	//회원가입.자원봉사자 step4 - 폼
	@RequestMapping("/step4_createMember.do")
	public String step4_createMember() throws Exception{
		return "/view/member/volunteer/step4_createMember.jsp";
	}
	
	
	//회원가입.자원봉사자 last - DB insert
	@RequestMapping("/step4_createMember.do")
	public String memberCreate(HttpServletRequest request, @ModelAttribute("VolunteerDTO") VolunteerDTO dto) throws Exception{
		
		//인코딩정의
		request.setCharacterEncoding("euc-kr");
		
		String post1 = request.getParameter("post1"); // 우편번호 앞자리
		String post2 = request.getParameter("post2"); // 우편번호 뒷자리
		String vol_zipcode = post1 + post2;
		dto.setVol_zipcode(vol_zipcode);
		dto.setVol_type_yn("0");
		dto.setVol_company_yn("0");
		dto.setVol_admin_yn("0");
		
		//Calendar today = Calendar.getInstance(); //날짜
		//paramClass.setReg_date(today.getTime());
		
		
		//insert 항목 확인
		System.out.println(dto.getVol_name());
		System.out.println(dto.getVol_sex());
		System.out.println(dto.getVol_birthday());
		System.out.println(dto.getVolunteer_id());
		System.out.println(dto.getVol_pw());
		System.out.println(dto.getVol_pw_ask());
		System.out.println(dto.getVol_pw_ans());
		System.out.println(dto.getVol_zipcode());
		System.out.println(dto.getVol_addr_bsc());
		System.out.println(dto.getVol_addr_dtl());
		System.out.println(dto.getVol_type_yn());
		System.out.println(dto.getVol_company_yn());
		System.out.println(dto.getVol_admin_yn());
		//.insert 항목 확인
		
		//sqlMapper.insert("Volunteer.insertVolunteerBasic",dto);
		
		return "redirect:/main.do";
	}
	
	
} //end of class
