<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>회원가입</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		//저장
		function goCreateDetail(){
			step5_createMemberDetail.submit();
		}
		
		//주소 선택
		var num_of_city = 18; //select box 1차선택(도/시), 첫번째 포함
		var option_array = new Array(num_of_city); //select box 2차선택(군/구)
		
		option_array[0] = new Array("------------"); //첫번째
		option_array[1] = new Array("-- 선택하세요 --", //서울특별시
						"종로구","중구","용산구","성동구","광진구","동대문구","중랑구","성북구","강북구","도봉구","노원구","은평구","서대문구","마포구",
						"양천구","강서구","구로구","금천구","영등포구","동작구","관악구","서초구","강남구","송파구","강동구");
		option_array[2] = new Array("-- 선택하세요 --", //부산광역시
						"중구","서구","동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","강서구","연제구","수영구","사상구","기장군");
		option_array[3] = new Array("-- 선택하세요 --", //대구광역시
						"중구","동구","서구","남구","북구","수성구","달서구","달성군");
		option_array[4] = new Array("-- 선택하세요 --", //인천광역시
				"1차의3번째",
				"1차의3번째");
		option_array[5] = new Array("-- 선택하세요 --", //광주광역시
				"1차의3번째",
				"1차의3번째");
		option_array[6] = new Array("-- 선택하세요 --", //대전광역시
				"1차의3번째",
				"1차의3번째");
		option_array[7] = new Array("-- 선택하세요 --", //울산광역시
				"1차의3번째",
				"1차의3번째");
		option_array[8] = new Array("-- 선택하세요 --", //세종특별자치시
				"1차의3번째",
				"1차의3번째");
		option_array[9] = new Array("-- 선택하세요 --", //경기도
				"1차의3번째",
				"1차의3번째");
		option_array[10] = new Array("-- 선택하세요 --", //강원도
				"1차의3번째",
				"1차의3번째");
		option_array[11] = new Array("-- 선택하세요 --", //충청북도
				"1차의3번째",
				"1차의3번째");
		option_array[12] = new Array("-- 선택하세요 --", //충청남도
				"1차의3번째",
				"1차의3번째");
		option_array[13] = new Array("-- 선택하세요 --", //전라북도
				"1차의3번째",
				"1차의3번째");
		option_array[14] = new Array("-- 선택하세요 --", //전라남도
				"1차의3번째",
				"1차의3번째");
		option_array[15] = new Array("-- 선택하세요 --", //경상북도
				"1차의3번째",
				"1차의3번째");
		option_array[16] = new Array("-- 선택하세요 --", //경상남도
				"1차의3번째",
				"1차의3번째");
		option_array[17] = new Array("-- 선택하세요 --", //제주특별자치도
				"1차의3번째",
				"1차의3번째");
		
		
		//주소선택 select box 컨트롤
		function switch_select() {
		  for (loop = window.document.step5_createMemberDetail.select_2.options.length-1; loop > 0; loop--) {
		    window.document.step5_createMemberDetail.select_2.options[loop] = null;
		  }
		  
		  for (loop = 0; loop < option_array[window.document.step5_createMemberDetail.select_1.selectedIndex].length; loop++)   {
		    window.document.step5_createMemberDetail.select_2.options[loop] = new Option(option_array[window.document.step5_createMemberDetail.select_1.selectedIndex][loop]);
		  }
		  window.document.step5_createMemberDetail.select_2.selectedIndex = 0;
		}
		
	</script>
</head>


<h2 align="left">자원봉사자 회원가입(선택사항)</h2>



vol_hope_center_code	봉사희망지역(소속센터)
vol_hope_plc_1	봉사희망지역(선택1)
vol_hope_plc_2	봉사희망지역(선택2)
vol_hope_sev_1	희망분야1
vol_hope_sev_2	희망분야2
vol_hope_sev_3	희망분야3
vol_job	직업
vol_hope_date	희망요일
vol_hope_str_time	희망 시작 시간
vol_hope_end_time	희망 종료 시간
vol_spec_dtl	개인전문분야
vol_group_yn	단체가입여부



<body style="padding-left: 50px">
	
	<form name="step5_createMemberDetail" action="/volunteerService/voCreateMemberBasic.do" method="post">
		
		<!-- 자원봉사자 회원가입(선택사항) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">휴대폰번호</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">유선전화번호</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_2">
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="044">044</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
						<option value="0502">0502</option>
						<option value="0503">0503</option>
						<option value="0504">0504</option>
						<option value="0505">0505</option>
						<option value="0506">0506</option>
						<option value="0507">0507</option>
						<option value="070">070</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(소속센터)</td>
				<td width="500" height="8" align="left">
					<select name="select_1" onChange="switch_select();">
					    <option>--도/시 선택--</option>
					    <option>서울특별시</option>
						<option>부산광역시</option>
						<option>대구광역시</option>
						<option>인천광역시</option>
						<option>광주광역시</option>
						<option>대전광역시</option>
						<option>울산광역시</option>
						<option>세종특별자치시</option>
						<option>경기도</option>
						<option>강원도</option>
						<option>충청북도</option>
						<option>충청남도</option>
						<option>전라북도</option>
						<option>전라남도</option>
						<option>경상북도</option>
						<option>경상남도</option>
						<option>제주특별자치도</option>
				    </select>
					
				    <select name="select_2" onChange="switch_text();">
					    <option>--군/구 선택--</option>
				    </select>
				</td>
			</tr>
			
			
			
			
			
			
			
		
			<tr>
				<td height="8"colspan="2" align="center">
					<input type="button" name="save" id="save" value="저장" onclick="goCreateDetail()"/>
				</td>
			</tr>
			
		</table>
		<!-- .//회원가입 입력폼 테이블 -->
		
	</form>
	
</body>
</html>
