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
 * 작성자: 류재욱
 * 설  명: 회원가입시 일반, 기관 에서 공통으로 쓰는 컨트롤러
*/


@Controller
public class CreateMember {
	
	/*
	//DB커넥트 인스턴스 변수
	SqlMapClientTemplate ibatis = null;
	public static Reader reader;
	public static SqlMapClient sqlMapper;
	
	//DB커넥트 생성자
	public Main() throws IOException{
		reader = Resources.getResourceAsReader("sqlMapConfig.xml");
		sqlMapper = SqlMapClientBuilder.buildSqlMapClient(reader);
		reader.close();
	}
	//.DB커넥트 생성자 버전 끝
	*/
	
	
	//회원가입 step1
	@RequestMapping("/step1_choiceType.do")
	public String step1_choiceType() throws Exception{
		return "/view/member/step1_choiceType.jsp";
	}
	
	
	
} //end of class
