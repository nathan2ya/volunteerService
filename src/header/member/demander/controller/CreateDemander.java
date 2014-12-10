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
 * �ۼ��� : �����
 * ��  �� : ����ó ȸ������ ��Ʈ�ѷ�
*/

@Controller
public class CreateDemander {
	
	private String url; // return URL
	private DemanderDTO demanderDTO = new DemanderDTO();
	
	//DBĿ��Ʈ �ν��Ͻ� ����
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DBĿ��Ʈ ������
	public CreateDemander() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DBĿ��Ʈ ������ ���� ��
	
	
	//ȸ������.����ó step2 - �������
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
	
	//ȸ������.����ó step3 - ��������
	@RequestMapping("/step3_deCertification.do")
	public String step3_deCertification() throws Exception{
		return "/view/member/demander/step3_certification.jsp";
	}
	
	//ȸ������.����ó step4 - Basic ��
	@RequestMapping("/step4_deCreateMemberBasicForm.do")
	public String step4_deCreateMemberBasicForm() throws Exception{
		return "/view/member/demander/step4_createMemberBasic.jsp";
	}
	
	//ȸ������.����ó Basic - DB insert
	@RequestMapping("/deCreateMemberBasic.do")
	public String deCreateMemberBasic(HttpServletRequest request, @ModelAttribute("DemanderDTO") DemanderDTO dto) throws Exception{
		
		request.setCharacterEncoding("euc-kr");
		Calendar today = Calendar.getInstance();
		
		//â����
		String dem_birthday_year = request.getParameter("dem_birthday_year");
		String dem_birthday_month = request.getParameter("dem_birthday_month");
		String dem_birthday_day = request.getParameter("dem_birthday_day");
		String dem_birthday = dem_birthday_year + "-"  + dem_birthday_month  + "-"  + dem_birthday_day;
		
		//�ּ� �з�
		String dem_addr_bsc = request.getParameter("dem_addr_bsc");
		
		//��/�� . ��/�� . ��
		int space = dem_addr_bsc.indexOf(" ");
		String dem_addr_city = dem_addr_bsc.substring(0, space);//��,��
		String tempAddr = dem_addr_bsc.substring(space+1);
		space = tempAddr.indexOf(" ");
		String dem_addr_gun = tempAddr.substring(0, space);//��,��
		String dem_addr_dong = tempAddr.substring(space+1);//��
		
		//DTO set
		dto.setDem_gubun("2");// 1:����, 2:����ó
		dto.setDem_birthday(dem_birthday);
		dto.setDem_addr_city(dem_addr_city);
		dto.setDem_addr_gun(dem_addr_gun);
		dto.setDem_addr_dong(dem_addr_dong);
		dto.setDem_reg_date(today.getTime());
		dto.setDem_mod_date(today.getTime());
		
		//DB insert
		sqlMapper.insert("Demander.insertDemanderBasic", dto);
		
		/*
		 * 2���� ����� return URL
		 * 1. [����] ��ư ���� : ȸ�����ԿϷ� �������� �̵�
		 * 2. [���û��� �Է�] ��ư ���� : ���û����Է� �������� �̵�
		*/
		if(request.getParameter("confirmType").equals("save")){
			url = "redirect:/step6_complete.do";
		}else{ // equals("more");
			url = "redirect:/step5_deCreateMemberDetailForm.do?demander_id="+dto.getDemander_id();
		}
		return url;
	}
	
	//ȸ������.����ó step5 - Detail ��
	@RequestMapping("/step5_deCreateMemberDetailForm.do")
	public String step5_deCreateMemberDetailForm(HttpServletRequest request) throws Exception{
		request.setAttribute("demander_id", request.getParameter("demander_id"));
		return "/view/member/demander/step5_createMemberDetail.jsp";
	}
	
	//ȸ������.����ó detail - DB update
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
