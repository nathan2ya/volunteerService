package header.member.demander.controller;

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

import common.lib.VolunteerCode;

/*
 * �ۼ��� : �����
 * ��  �� : ����ó ȸ������ ��Ʈ�ѷ�
*/

@Controller
public class UpdateDemander {
	
	private String url; // return URL
	
	//DBĿ��Ʈ �ν��Ͻ� ����
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DBĿ��Ʈ ������
	public UpdateDemander() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DBĿ��Ʈ ������ ���� ��
	
	//ȸ������(�⺻).����ó
	@RequestMapping("/deMyInformationForm_bsc.do")
	public String voMyInformation(HttpServletRequest request) throws Exception{
		return "/view/member/demander/myPage/myInformation_bsc.jsp";
	}
	
	
	
	
	
	/*
	//ȸ������.�ڿ������� step2 - �������
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
	
	
	//ȸ������.�ڿ������� step3 - ��������
	@RequestMapping("/step3_voCertification.do")
	public String step3_voCertification() throws Exception{
		return "/view/member/volunteer/step3_certification.jsp";
	}
	
	
	//ȸ������.�ڿ������� step4 - Basic ��
	@RequestMapping("/step4_voCreateMemberBasicForm.do")
	public String step4_voCreateMemberForm() throws Exception{
		return "/view/member/volunteer/step4_createMemberBasic.jsp";
	}
	
	
	//ȸ������.�ڿ������� Basic - DB insert
	@RequestMapping("/voCreateMemberBasic.do")
	public String voCreateMemberBasic(HttpServletRequest request, @ModelAttribute("VolunteerDTO") VolunteerDTO dto) throws Exception{
		
		request.setCharacterEncoding("euc-kr");
		Calendar today = Calendar.getInstance();
		
		//�ҼӼ��� ������ //TODO �ҼӼ��� ������ �Էºκк��� �ٽ� �ؾ���
		int vol_center_seq = Integer.parseInt(request.getParameter("vol_center_seq"));
		
		//�ڿ������ڵ� ���� //TODO �ڿ������ڵ� ���� ���μ��� ���� ��, �Ʒ� createVolunteerCode �� ������
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
		
		
		 * 2���� ����� return URL
		 * 1. [����] ��ư ���� : ȸ�����ԿϷ� �������� �̵�
		 * 2. [���û��� �Է�] ��ư ���� : ���û����Է� �������� �̵�
		
		if(request.getParameter("confirmType").equals("save")){
			url = "redirect:/step6_complete.do";
		}else{ // equals("more");
			url = "redirect:/step5_voCreateMemberDetailForm.do?volunteer_id="+dto.getVolunteer_id();
		}
		return url;
	}
	
	//ȸ������.�ڿ������� step5 - Detail ��
	@RequestMapping("/step5_voCreateMemberDetailForm.do")
	public String step5_voCreateMemberDetailForm(HttpServletRequest request) throws Exception{
		request.setAttribute("volunteer_id", request.getParameter("volunteer_id"));
		return "/view/member/volunteer/step5_createMemberDetail.jsp";
	}
	
	//ȸ������.�ڿ������� detail - DB update
	@RequestMapping("/voCreateMemberDetail.do")
	public String voCreateMemberDetail(HttpServletRequest request, @ModelAttribute("VolunteerDTO") VolunteerDTO dto) throws Exception{
		//DB update
		sqlMapper.update("Volunteer.updateVolunteerDetail", dto);
		return "redirect:/step6_complete.do";
	}
	*/
}//end of class
