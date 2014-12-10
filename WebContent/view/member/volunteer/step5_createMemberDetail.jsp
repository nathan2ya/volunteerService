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
		
		window.onload = function(){ 
			document.getElementById("hope_cen_1").innerHTML = hopeHtml_1;
			Selected();
			document.getElementById("hope_plc1_1").innerHTML = hopeHtml1_1;
			Selected1();
			document.getElementById("hope_plc2_1").innerHTML = hopeHtml2_1;
			Selected2();
		}; 
		
		// 도/시 
		var Arr1 = new Array(
				"도/시 선택","서울특별시","부산광역시","대구광역시","인천광역시","광주광역시","대전광역시","울산광역시","세종특별자치시",
				"경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주특별자치도");
		
		// 구/군
		var Arr2 = new Array( 
			// Arr1 배열값, 선택된 값에 보여줄 값들 
			new Array("도/시 선택","구/군 선택")
			,new Array("서울특별시","전체","종로구","중구","용산구","성동구","광진구","동대문구","중랑구","성북구","강북구","도봉구","노원구","은평구",
					   "서대문구","마포구","양천구","강서구","구로구","금천구","영등포구","동작구","관악구","서초구","강남구","송파구","강동구")
			,new Array("부산광역시","전체","중구","서구","동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","강서구","연제구","수영구","사상구","기장군")
			,new Array("대구광역시","전체","중구","동구","서구","남구","북구","수성구","달서구","달성군")
			,new Array("인천광역시","전체","중구","동구","남구","연수구","남동구","부평구","계양구","서구","강화군","옹진군") 
			,new Array("광주광역시","전체","동구","서구","남구","북구","광산구")
			,new Array("대전광역시","전체","동구","중구","서구","유성구","대덕구") 
			,new Array("울산광역시","전체","중구","남구","동구","북구","울주군") 
			,new Array("세종특별자치시","세종시") 
			,new Array("경기도","전체","수원시","성남시","의정부시","안양시","부천시","광명시","평택시","동두천시","안산시","고양시","과천시","구리시",
					   "남양주시","오산시","시흥시","군포시","의왕시","하남시","용인시","파주시","이천시","안성시","김포시","연천군","가평군","양평군","화성시","광주시","양주시","포천시","여주시") 
			,new Array("강원도","전체","춘천시","원주시","강릉시","동해시","태백시","속초시","삼척시","홍천군","횡성군","영월군","평창군","정선군","철원군","화천군","양구군","인제군","고성군","양양군") 
			,new Array("충청북도","전체","청주시","충주시","제천시","보은군","옥천군","영동군","진천군","괴산군","음성군","단양군","증평군") 
			,new Array("충청남도","전체","천안시","공주시","보령시","아산시","서산시","논산시","금산군","부여군","서천군","청양군","홍성군","예산군","태안군","당진시","계룡시") 
			,new Array("전라북도","전체","전주시","군산시","익산시","정읍시","남원시","김제시","완주군","진안군","무주군","장수군","임실군","순창군","고창군","부안군") 
			,new Array("전라남도","전체","목포시","여수시","순천시","나주시","광양시","담양군","곡성군","구례군","고흥군","보성군","화순군","장흥군","강진군","해남군","영암군","무안군","함평군","영광군","장성군","완도군","진도군","신안군") 
			,new Array("경상북도","전체","포항시","경주시","김천시","안동시","구미시","영주시","영천시","상주시","문경시","경산시","군위군","의성군","청송군","영양군","영덕군","청도군","고령군","성추군","칠곡군","예천군","봉화군","울진군","울릉군") 
			,new Array("경상남도","전체","진주시","통영시","사천시","김해시","밀양시","거제시","양산시","의령군","함안군","창녕군","고성군","남해군","하동군","산청군","함양군","거창군","합천군","창원시")
			,new Array("제주특별자치도","전체","제주시","서귀포시")
		); 

		//봉사희망지역(소속센터)
		var hopeHtml_1 = ""; 
		hopeHtml_1 += '<select id="hopeSelect_1" name="hopeSelect_1" onChange="Selected();">'; 
		for(var i = 0;i < Arr1.length ; i++){ 
		   hopeHtml_1 += '<option value="'+Arr1[i]+'">'+Arr1[i]+'</option>'; 
		} 
		hopeHtml_1 += '</select>'; 
		
		function Selected(type){
		   var str = document.getElementById("hopeSelect_1").value;
		   var hopeHtml_2 = ""; 
		   hopeHtml_2 += '<select id="hopeSelect_2" name="hopeSelect_2">'; 
		   for(var i = 0;i < Arr2.length ; i++){ 
		      if(Arr2[i][0] == str ){ 
		         for(var j = 1 ; j < Arr2[i].length; j++){ 
		            hopeHtml_2 += '<option value="'+Arr2[i][j]+'">'+Arr2[i][j]+'</option>'; 
		         } 
		      } 
		   } 
		   hopeHtml_2 += '</select>'; 
		   document.getElementById("hope_cen_2").innerHTML = hopeHtml_2; 
		}
		
		//봉사희망지역(선택1)
		var hopeHtml1_1 = ""; 
		hopeHtml1_1 += '<select id="hopeSelect1_1" name="hopeSelect1_1" onChange="Selected1();">'; 
		for(var i = 0;i < Arr1.length ; i++){ 
		   hopeHtml1_1 += '<option value="'+Arr1[i]+'">'+Arr1[i]+'</option>'; 
		} 
		hopeHtml1_1 += '</select>'; 
		
		function Selected1(type){
		   var str = document.getElementById("hopeSelect1_1").value;
		   var hopeHtml1_2 = ""; 
		   hopeHtml1_2 += '<select id="hopeSelect1_2" name="hopeSelect1_2">'; 
		   for(var i = 0;i < Arr2.length ; i++){ 
		      if(Arr2[i][0] == str ){ 
		         for(var j = 1 ; j < Arr2[i].length; j++){ 
		            hopeHtml1_2 += '<option value="'+Arr2[i][j]+'">'+Arr2[i][j]+'</option>'; 
		         } 
		      } 
		   } 
		   hopeHtml1_2 += '</select>'; 
		   document.getElementById("hope_plc1_2").innerHTML = hopeHtml1_2; 
		}
		
		//봉사희망지역(선택2)
		var hopeHtml2_1 = ""; 
		hopeHtml2_1 += '<select id="hopeSelect2_1" name="hopeSelect2_1" onChange="Selected2();">'; 
		for(var i = 0;i < Arr1.length ; i++){ 
		   hopeHtml2_1 += '<option value="'+Arr1[i]+'">'+Arr1[i]+'</option>'; 
		} 
		hopeHtml2_1 += '</select>'; 
		
		function Selected2(type){
		   var str = document.getElementById("hopeSelect2_1").value;
		   var hopeHtml2_2 = ""; 
		   hopeHtml2_2 += '<select id="hopeSelect2_2" name="hopeSelect2_2">'; 
		   for(var i = 0;i < Arr2.length ; i++){ 
		      if(Arr2[i][0] == str ){ 
		         for(var j = 1 ; j < Arr2[i].length; j++){ 
		            hopeHtml2_2 += '<option value="'+Arr2[i][j]+'">'+Arr2[i][j]+'</option>'; 
		         } 
		      } 
		   } 
		   hopeHtml2_2 += '</select>'; 
		   document.getElementById("hope_plc2_2").innerHTML = hopeHtml2_2; 
		}
		
		//submit
		function goCreateDetail(){
			
			//휴대폰번호
			var vol_phone_1_1 = document.getElementById("vol_phone_1_1").value;
			var vol_phone_1_2 = document.getElementById("vol_phone_1_2").value;
			var vol_phone_1_3 = document.getElementById("vol_phone_1_3").value;
			document.getElementById("vol_phone_1").value = vol_phone_1_1 + "-" + vol_phone_1_2 + "-" + vol_phone_1_3;
			
			//유선전화번호
			var vol_phone_2_1 = document.getElementById("vol_phone_2_1").value;
			var vol_phone_2_2 = document.getElementById("vol_phone_2_2").value;
			var vol_phone_2_3 = document.getElementById("vol_phone_2_3").value;
			document.getElementById("vol_phone_2").value = vol_phone_2_1 + "-" + vol_phone_2_2 + "-" + vol_phone_2_3;
			
			//체크된 희망요일 (요일,요일)
			var days = "";
			if(document.getElementById("mon").checked){ days += "1"; }
			if(document.getElementById("tue").checked){ days += "2"; }
			if(document.getElementById("wen").checked){ days += "3"; }
			if(document.getElementById("thu").checked){ days += "4"; }
			if(document.getElementById("fri").checked){ days += "5"; }
			if(document.getElementById("sat").checked){ days += "6"; }
			if(document.getElementById("sun").checked){ days += "7"; }
			document.getElementById("vol_hope_date").value = days.split("", days.length);
			
			//선택된 봉사희망지역(소속센터) (1차선택,2차선택)
			var hope_cen_1 = $("#hopeSelect_1 option").index($("#hopeSelect_1 option:selected"));
			var hope_cen_2 = $("#hopeSelect_2 option").index($("#hopeSelect_2 option:selected"));
			document.getElementById("vol_hope_center_code").value = hope_cen_1+","+hope_cen_2;
			
			//봉사희망지역(선택1)
			var hope_cen1_1 = $("#hopeSelect1_1 option").index($("#hopeSelect1_1 option:selected"));
			var hope_cen1_2 = $("#hopeSelect1_2 option").index($("#hopeSelect1_2 option:selected"));
			document.getElementById("vol_hope_plc_1").value = hope_cen1_1+","+hope_cen1_2;
			
			//봉사희망지역(선택2)
			var hope_cen2_1 = $("#hopeSelect2_1 option").index($("#hopeSelect2_1 option:selected"));
			var hope_cen2_2 = $("#hopeSelect2_2 option").index($("#hopeSelect2_2 option:selected"));
			document.getElementById("vol_hope_plc_2").value = hope_cen2_1+","+hope_cen2_2;
			
			step5_voCreateMemberForm.submit();
		}
		
	</script>
</head>


<h2 align="left">자원봉사자 회원가입(선택사항)</h2>



<body style="padding-left: 50px">
	
	
	<form name="step5_voCreateMemberForm" action="/volunteerService/voCreateMemberDetail.do" method="post">
		
		<!-- 자원봉사자 회원가입(선택사항) -->
		<table align="left" width="700" >
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">휴대폰번호</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_1_1" id = "vol_phone_1_1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input type="text" name="vol_phone_1_2" id="vol_phone_1_2" size="6" maxlength="4" />
					<input type="text" name="vol_phone_1_3" id="vol_phone_1_3" size="6" maxlength="4" />
					<input type="hidden" name="vol_phone_1" id="vol_phone_1" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">유선전화번호</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_2_1" id = "vol_phone_2_1">
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
					<input type="hidden" name="vol_phone_2" id="vol_phone_2" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(소속센터)</td>
				<td width="500" height="8" align="left">
					<span id="hope_cen_1"></span>
					<span id="hope_cen_2"></span>
					<input type="hidden" name="vol_hope_center_code" id="vol_hope_center_code" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(선택1)</td>
				<td width="500" height="8" align="left">
					<span id="hope_plc1_1"></span>
					<span id="hope_plc1_2"></span>
					<input type="hidden" name="vol_hope_plc_1" id="vol_hope_plc_1" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">봉사희망지역(선택2)</td>
				<td width="500" height="8" align="left">
					<span id="hope_plc2_1"></span>
					<span id="hope_plc2_2"></span>
					<input type="hidden" name="vol_hope_plc_2" id="vol_hope_plc_2" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망분야1</td>
				<td width="500" height="8" align="left">
					<!-- TODO vol_hope_sev_1	 -->
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망분야2</td>
				<td width="500" height="8" align="left">
					<!-- TODO vol_hope_sev_2	 -->
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">희망분야3</td>
				<td width="500" height="8" align="left">
					<!-- TODO vol_hope_sev_3 -->
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
					<input type="hidden" name="volunteer_id" id="volunteer_id" value="${volunteer_id}"/>
					<input type="button" name="save" id="save" value="저장" onclick="goCreateDetail()"/>
				</td>
			</tr>
			
		</table>
		<!-- .//회원가입 입력폼 테이블 -->
		
	</form>
	
</body>
</html>
