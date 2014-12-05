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
 * 작성자 : 류재욱
 * 설  명 : 수요처 회원가입 컨트롤러
*/

@Controller
public class CreateDemander {
	
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
	public String step2_deStipulation() throws Exception{
		return "/view/member/demander/step2_stipulation.jsp";
	}
	
	//회원가입.자원봉사자 step3 - 본인인증
	@RequestMapping("/step3_deCertification.do")
	public String step3_deCertification() throws Exception{
		return "/view/member/demander/step3_certification.jsp";
	}
	
	//회원가입.자원봉사자 step4 - Basic 폼
	@RequestMapping("/step4_deCreateMemberBasicForm.do")
	public String step4_deCreateMemberBasicForm() throws Exception{
		return "/view/member/demander/step4_createMemberBasic.jsp";
	}
	

}//end of class
