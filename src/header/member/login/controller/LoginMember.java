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
 * �ۼ���: �����
 * ��  ��: ȸ�� login Ŭ����
 * ��  ��: ȸ�� ���ǻ���
*/

@Controller
public class LoginMember {
	
	private String url; // return URL
	
	//�α��� ���� DTO
	private VolunteerDTO volunteerDTO = new VolunteerDTO();
	private DemanderDTO demanderDTO = new DemanderDTO();
	
	//DBĿ��Ʈ �ν��Ͻ� ����
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DBĿ��Ʈ ������
	public LoginMember() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DBĿ��Ʈ ������ ���� ��
	
	//ȸ���α�����
	@RequestMapping("/loginForm.do")
	public String loginForm(HttpServletRequest request){
		return "/view/login/login.jsp";
	}
	
	//ȸ�� �α���
	@RequestMapping("login.do")
	public String login(HttpServletRequest request, HttpSession session) throws SQLException{
		
		//����ڰ� �α��� ��û�� �Է°�
		String memberType = request.getParameter("memberType"); //vo:�Ϲ�, de:���
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		//����� ID, PW üũ
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
		
		//����� Ȯ�� �� ��� ���� ����
		if(count==1){
			if(memberType.equals("vo")){
				volunteerDTO = (VolunteerDTO)sqlMapper.queryForObject("Volunteer.selectVolunteerOne", user_id);
				session.setAttribute("session_volunteerId", volunteerDTO.getVolunteer_id()); //�ڿ�������ID ���ǻ���
			}else{
				demanderDTO = (DemanderDTO)sqlMapper.queryForObject("Demander.selectDemanderOne", user_id);
				session.setAttribute("session_demanderId", demanderDTO.getDemander_id()); //����óID ���ǻ���
			}
			url = "redirect:/main.do";
		}else{
			url = "redirect:/loginForm.do";
		}
		
		return url;
	}
	
}//end of class
