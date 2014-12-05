package header.member.demander.controller;

import java.io.IOException;
import java.io.Reader;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
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
	public String step2_deStipulation() throws Exception{
		return "/view/member/demander/step2_stipulation.jsp";
	}
	
	//ȸ������.�ڿ������� step3 - ��������
	@RequestMapping("/step3_deCertification.do")
	public String step3_deCertification() throws Exception{
		return "/view/member/demander/step3_certification.jsp";
	}
	
	//ȸ������.�ڿ������� step4 - Basic ��
	@RequestMapping("/step4_deCreateMemberBasicForm.do")
	public String step4_deCreateMemberBasicForm() throws Exception{
		return "/view/member/demander/step4_createMemberBasic.jsp";
	}
	

}//end of class
