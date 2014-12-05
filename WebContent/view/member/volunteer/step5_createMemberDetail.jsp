<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>회원가입</title>
	
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		//submit
		function goCreateDetail(){
			alert("select_2 테스트시작");
			
			var index = $("#select_2 option").index($("#select_2 option:selected"));
			alert(index);
			
			//체크된 희망요일
			var days = "";
			if(document.getElementById("mon").checked){ days += "1"; }
			if(document.getElementById("tue").checked){ days += "2"; }
			if(document.getElementById("wen").checked){ days += "3"; }
			if(document.getElementById("thu").checked){ days += "4"; }
			if(document.getElementById("fri").checked){ days += "5"; }
			if(document.getElementById("sat").checked){ days += "6"; }
			if(document.getElementById("sun").checked){ days += "7"; }
			document.getElementById("vol_hope_date").value = days.split("", days.length);
			
			//step5_createMemberDetail.submit();
		}
		
		
		// 첫번째 셀렉트 구간 배열 선언 
		var Arr1 = new Array(
				"도/시 선택","서울특별시","부산광역시","대구광역시","인천광역시","광주광역시","대전광역시","울산광역시","세종특별자치시",
				"경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주특별자치도");
		
		// 두번째 셀렉트 구간 배열 
		var Arr2 = new Array( 
			// Arr1 배열값, 선택된 값에 보여줄 값들 
			new Array("도/시 선택","구/군 선택")
			,new Array("서울특별시","전체","종로구","중구","용산구","성동구","광진구","동대문구","중랑구","성북구","강북구","도봉구","노원구","은평구",
					  "서대문구","마포구","양천구","강서구","구로구","금천구","영등포구","동작구","관악구","서초구","강남구","송파구","강동구")
			,new Array("부산광역시","전체","중구","서구","동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","강서구","연제구","수영구","사상구","기장군")
			,new Array("대구광역시","전체","중구","동구","서구","남구","북구","수성구","달서구","달성군")
			,new Array("인천광역시","전체","41","42","43","44","45","46","47") 
			,new Array("광주광역시","51")
			,new Array("대전광역시","61") 
			,new Array("울산광역시","71") 
			,new Array("세종특별자치시","81") 
			,new Array("경기도","91") 
			,new Array("강원도","101") 
			,new Array("충청북도","111") 
			,new Array("충청남도","121") 
			,new Array("전라북도","131") 
			,new Array("전라남도","141") 
			,new Array("경상북도","151") 
			,new Array("경상남도","161")
			,new Array("제주특별자치도","171")
		); 
		
	
		// span S1 에 넣을 셀렉트 태그구문 
		// Selected() << 선택시 호출할 function 
		var selecthtml1 = ""; 
		selecthtml1 += '<select id="select1" name="select1" onChange="Selected();">'; 
		
		for(var i = 0;i < Arr1.length ; i++){ 
		   selecthtml1 += '<option value="'+Arr1[i]+'">'+Arr1[i]+'</option>'; 
		} 
		selecthtml1 += '</select>'; 
		
		
		// select1 선택시 select2값들을 span S2 에 뿌려줌 
		function Selected(){ 
		
		   // select1 에서 선택한 값 
		   var str = document.getElementById("select1").value; 
		
		   // span S2 에 넣을 셀렉트 태그구문 
		   var selecthtml2 = ""; 
		   selecthtml2 += '<select id="select2" name="select2">'; 
		
		   for(var i = 0;i < Arr2.length ; i++){ 
		      if(Arr2[i][0] == str ){ 
		         for(var j = 1 ; j < Arr2[i].length; j++){ 
		            selecthtml2 += '<option value="'+Arr2[i][j]+'">'+Arr2[i][j]+'</option>'; 
		         } 
		      } 
		   } 
		
		   selecthtml2 += '</select>'; 
		
		   // selecthtml2을 span S2 에 넣어준다 
		   document.getElementById("select_2").innerHTML = selecthtml2; 
		
		} 
		
		window.onload = function(){ 
		
		   // selecthtml1을 span S1 에 넣어준다 
		   document.getElementById("select_1").innerHTML = selecthtml1; 
		
		   // select1 이 선택되어 있을경우 같이 보여주기 위해 
		   Selected(); 
		} 
		
		//여기까지
		
		
	</script>
</head>


<h2 align="left">자원봉사자 회원가입(선택사항)</h2>



<body style="padding-left: 50px">
	
	<form name="step5_createMemberDetail" action="/volunteerService/voCreateMemberDetail.do" method="post">
		
		<!-- 자원봉사자 회원가입(선택사항) -->
		<table border="0" align="left" width="700" >
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">휴대폰번호</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_1_1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input type="text" name="vol_phone_1_2" id="vol_phone_1_2" size="6" maxlength="4" />
					<input type="text" name="vol_phone_1_3" id="vol_phone_1_3" size="6" maxlength="4" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">유선전화번호</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_2_1">
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
					<input type="text" name="vol_phone_2_2" id="vol_phone_2_2" size="6" maxlength="4" />
					<input type="text" name="vol_phone_2_3" id="vol_phone_2_3" size="6" maxlength="4" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(소속센터)</td>
				<td width="500" height="8" align="left">
					<span id="select_1"></span>
					<span id="select_2"></span>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(선택1)</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_plc_1 // 봉사희망지역(소속센터) 필드가 완료되면 개발예정
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(선택2)</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_plc_2 // 봉사희망지역(소속센터) 필드가 완료되면 개발예정
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망분야1</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_sev_1	
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망분야2</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_sev_2	
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망분야3</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_sev_3
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">직업</td>
				<td width="500" height="8" align="left">
					<select name="vol_job" id="vol_job">
						<option value="0" >선택하세요</option>
						<option value="1" >공무원</option>
						<option value="2" >사무직</option>
						<option value="3" >전문직</option>
						<option value="4" >서비스직</option>
						<option value="5" >자영업</option>
						<option value="6" >농수산업</option>
						<option value="7" >군인</option>
						<option value="8" >주부</option>
						<option value="9" >무직</option>
						<option value="10" >기타</option>
						<option value="11" >초등학생</option>
						<option value="12" >중학생</option>
						<option value="13" >고등학생</option>
						<option value="14" >대학(원)생</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망요일</td>
				<td width="500" height="8" align="left">
					<input type="checkbox" id="mon" name="mon" value="1" /> <label for="mon">월</label>
					<input type="checkbox" id="tue" name="tue" value="2" /> <label for="tue">화</label>
					<input type="checkbox" id="wen" name="wen" value="3" /> <label for="wen">수</label>
					<input type="checkbox" id="thu" name="thu" value="4" /> <label for="thu">목</label>
					<input type="checkbox" id="fri" name="fri" value="5" /> <label for="fri">금</label>
					<input type="checkbox" id="sat" name="sat" value="6" /> <label for="sat">토</label>
					<input type="checkbox" id="sun" name="sun" value="7" /> <label for="sun">일</label>
					<input type="hidden" name="vol_hope_date" id="vol_hope_date" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망 시작 시간</td>
				<td width="500" height="8" align="left">
					<select name="vol_hope_str_time" id="vol_hope_str_time">
						<option value="99" selected>선택</option>
						<option value="0">00</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
					</select>
					~
					<select name="vol_hope_end_time" id="vol_hope_end_time">
						<option value="99" selected>선택</option>
						<option value="0">00</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">개인전문분야</td>
				<td width="500" height="8" align="left">
					<input type="text" name="vol_spec_dtl" id="vol_spec_dtl" size="20" maxlength="50" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">단체가입여부</td>
				<td width="500" height="8" align="left">
					<input type="radio" name="vol_group_yn" id="vol_group_yn" value="Y" /> <label for="join_check">가입</label>
					<input type="radio" name="vol_group_yn" id="vol_group_yn" value="N" /> <label for="not_join_check">미가입</label>
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
