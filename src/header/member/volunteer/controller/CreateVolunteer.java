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
import common.lib.VolunteerCode;


/*
 * �ۼ��� : �����
 * ��  �� : �ڿ������� ȸ������ ��Ʈ�ѷ�
*/


@Controller
public class CreateVolunteer {
	
	private String city; // ��/�� �� (ex. ��󳲵� or ����Ư����)
	private String gun; // ��/�� ��
	private String dong; // �� �� 
	
	//DBĿ��Ʈ �ν��Ͻ� ����
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DBĿ��Ʈ ������
	public CreateVolunteer() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DBĿ��Ʈ ������ ���� ��
	
	
	//ȸ������.�ڿ������� step2 - �������
	@RequestMapping("/step2_stipulation.do")
	public String step2_stipulation() throws Exception{
		return "/view/member/volunteer/step2_stipulation.jsp";
	}
	
	
	//ȸ������.�ڿ������� step3 - ��������
	@RequestMapping("/step3_certification.do")
	public String step3_certification() throws Exception{
		return "/view/member/volunteer/step3_certification.jsp";
	}
	
	
	//ȸ������.�ڿ������� step4 - ��
	@RequestMapping("/step4_createMemberForm.do")
	public String step4_createMember() throws Exception{
		return "/view/member/volunteer/step4_createMember.jsp";
	}
	
	
	//ȸ������.�ڿ������� last - DB insert
	@RequestMapping("/step5_createMember.do")
	public String memberCreate(HttpServletRequest request, @ModelAttribute("VolunteerDTO") VolunteerDTO dto) throws Exception{
		
		//���ڵ�����
		request.setCharacterEncoding("euc-kr");
		
		//�ҼӼ��� ������ (���� ����� �� ����)
		int vol_center_seq = Integer.parseInt(request.getParameter("vol_center_seq"));
		
		//�ڿ������ڵ�
		VolunteerCode volunteerCode = new VolunteerCode("11","22","33","44");
		String vol_code = volunteerCode.createVolunteerCode();
		
		//�����ȣ
		String post1 = request.getParameter("post1"); // �����ȣ ���ڸ�
		String post2 = request.getParameter("post2"); // �����ȣ ���ڸ�
		String vol_zipcode = post1 + "-" + post2; // ���ڸ� - ���ڸ�
		
		//�����Ͻ�
		Calendar today = Calendar.getInstance(); //��¥
		
		// DTO set
		dto.setVol_center_seq(vol_center_seq);
		dto.setVol_code(vol_code);
		dto.setVol_zipcode(vol_zipcode);
		dto.setVol_type_yn("0");
		dto.setVol_company_yn("0");
		dto.setVol_admin_yn("0");
		dto.setVol_reg_date(today.getTime());
		dto.setVol_mod_date(today.getTime());
		
		//DB insert
		sqlMapper.insert("Volunteer.insertVolunteerBasic", dto);
		return "redirect:/main.do";
	}
	
	
}//end of class
