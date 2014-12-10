package header.member.demander.controller;

import header.member.demander.dto.DemanderDTO;

import java.io.IOException;
import java.io.Reader;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

/*
 * 작성자 : 류재욱
 * 설  명 : 수요처 회원가입 컨트롤러
*/

@Controller
public class CreateDemander {
	
	private String url; // return URL
	private DemanderDTO demanderDTO = new DemanderDTO();
	
	//DB커넥트 인스턴스 변수
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DB커넥트 생성자
	public CreateDemander() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DB커넥트 생성자 버전 끝
	
	
	//회원가입.수요처 step2 - 약관동의
	@RequestMapping("/step2_deStipulation.do")
	public String step2_deStipulation(HttpServletRequest request) throws Exception{
		String dem_ins_name = request.getParameter("dem_ins_name");
		String dem_resnum = request.getParameter("dem_resnum");
		
		demanderDTO.setDem_ins_name(dem_ins_name);
		demanderDTO.setDem_resnum(dem_resnum);
		Integer count = (Integer) sqlMapper.queryForObject("Demander.selectCountForStipulation", demanderDTO);
		
		if(count==1){
			url = "redirect:/step1_chooseType.do?type=1";
		}else{
			url = "/view/member/demander/step2_stipulation.jsp";
		}
		return url;
	}
	
	//회원가입.수요처 step3 - 본인인증
	@RequestMapping("/step3_deCertification.do")
	public String step3_deCertification() throws Exception{
		return "/view/member/demander/step3_certification.jsp";
	}
	
	//회원가입.수요처 step4 - Basic 폼
	@RequestMapping("/step4_deCreateMemberBasicForm.do")
	public String step4_deCreateMemberBasicForm() throws Exception{
		return "/view/member/demander/step4_createMemberBasic.jsp";
	}
	
	//회원가입.수요처 Basic - DB insert
	@RequestMapping("/deCreateMemberBasic.do")
	public String deCreateMemberBasic(HttpServletRequest request, @ModelAttribute("DemanderDTO") DemanderDTO dto) throws Exception{
		
		request.setCharacterEncoding("euc-kr");
		Calendar today = Calendar.getInstance();
		
		//창립일
		String dem_birthday_year = request.getParameter("dem_birthday_year");
		String dem_birthday_month = request.getParameter("dem_birthday_month");
		String dem_birthday_day = request.getParameter("dem_birthday_day");
		String dem_birthday = dem_birthday_year + "-"  + dem_birthday_month  + "-"  + dem_birthday_day;
		
		//주소 분류
		String dem_addr_bsc = request.getParameter("dem_addr_bsc");
		
		//도/시 . 구/군 . 동
		int space = dem_addr_bsc.indexOf(" ");
		String dem_addr_city = dem_addr_bsc.substring(0, space);//도,시
		String tempAddr = dem_addr_bsc.substring(space+1);
		space = tempAddr.indexOf(" ");
		String dem_addr_gun = tempAddr.substring(0, space);//구,군
		String dem_addr_dong = tempAddr.substring(space+1);//동
		
		//DTO set
		dto.setDem_gubun("2");// 1:센터, 2:수요처
		dto.setDem_birthday(dem_birthday);
		dto.setDem_addr_city(dem_addr_city);
		dto.setDem_addr_gun(dem_addr_gun);
		dto.setDem_addr_dong(dem_addr_dong);
		dto.setDem_reg_date(today.getTime());
		dto.setDem_mod_date(today.getTime());
		
		//DB insert
		sqlMapper.insert("Demander.insertDemanderBasic", dto);
		
		/*
		 * 2가지 경우의 return URL
		 * 1. [저장] 버튼 선택 : 회원가입완료 페이지로 이동
		 * 2. [선택사항 입력] 버튼 선택 : 선택사항입력 페이지로 이동
		*/
		if(request.getParameter("confirmType").equals("save")){
			url = "redirect:/step6_complete.do";
		}else{ // equals("more");
			url = "redirect:/step5_deCreateMemberDetailForm.do?demander_id="+dto.getDemander_id();
		}
		return url;
	}
	
	//회원가입.수요처 step5 - Detail 폼
	@RequestMapping("/step5_deCreateMemberDetailForm.do")
	public String step5_deCreateMemberDetailForm(HttpServletRequest request) throws Exception{
		request.setAttribute("demander_id", request.getParameter("demander_id"));
		return "/view/member/demander/step5_createMemberDetail.jsp";
	}
	
	//회원가입.수요처 detail - DB update
	@RequestMapping("/deCreateMemberDetail.do")
	public String deCreateMemberDetail(HttpServletRequest request, @ModelAttribute("DemanderDTO") DemanderDTO dto) throws Exception{
		
		System.out.println(dto.getDem_phone());
		System.out.println(dto.getDem_fax());
		System.out.println(dto.getDem_cha_phone());
		
		//DB update
		sqlMapper.update("Demander.updateDemanderDetail", dto);
		return "redirect:/step6_complete.do";
	}

}//end of class
