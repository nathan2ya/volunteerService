package header.member.common.controller;

import java.io.IOException;
import java.io.Reader;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;


/*
 * �ۼ��� : �����
 * ��  �� : �ڿ�������, ����ó ���� ȸ������ ��Ʈ�ѷ�
*/


@Controller
public class CreateMember {
	
	/*
	//DBĿ��Ʈ �ν��Ͻ� ����
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DBĿ��Ʈ ������
	public Main() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DBĿ��Ʈ ������ ���� ��
	*/
	
	
	//ȸ������ step1
	@RequestMapping("/step1_chooseType.do")
	public String step1_choiceType() throws Exception{
		return "/view/member/step1_chooseType.jsp";
	}
	
	
	//ȸ������ step6
	@RequestMapping("/step6_complete.do")
	public String step6_complete() throws Exception{
		return "/view/member/step6_complete.jsp";
	}
	
	
}//end of class
