<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>회원가입</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		function openDaumPostcode() {
	    	new daum.Postcode({
	        	oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
	                document.getElementById("post1").value = data.postcode1;
	                document.getElementById("post2").value = data.postcode2;
	                document.getElementById("dem_addr_bsc").value = data.address;
	                
	                document.getElementById("dem_addr_dtl").focus();
	            }
	        }).open();
	    }
		
		//이메일 select box
		function selectEmail(form){
	        if(form.email_select.value == '1'){
	        	form.email2.readOnly = false;
	        	form.email2.value = '';
	        	form.email2.focus();
	        }else{
	        	form.email2.readOnly = true;
	        	form.email2.value = form.email_select.value;
        	}
		}
		
		//비밀번호 일치여부 확인
		function checkPw() {
			if (step4_deCreateMemberForm.dem_pw.value != step4_deCreateMemberForm.dem_pw_check.value) {
				alert("비밀번호가 일치하지 않습니다.");
				step4_deCreateMemberForm.dem_pw.value = "";
				step4_deCreateMemberForm.dem_pw_check.value = "";
				step4_deCreateMemberForm.dem_pw.focus();
				return false;
			}
		}
		
		//submit
		function goCreateBasic(type){
			if(!step4_deCreateMemberForm.dem_dep.value){
				alert("부서를 입력해주세요.");
				step4_deCreateMemberForm.dem_dep.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_level.value){
				alert("직책을 입력해주세요.");
				step4_deCreateMemberForm.dem_level.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_birthday_year.value){
				alert("창립일을 입력해주세요.");
				step4_deCreateMemberForm.dem_birthday_year.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_birthday_month.value){
				alert("창립일을 입력해주세요.");
				step4_deCreateMemberForm.dem_birthday_month.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_birthday_day.value){
				alert("창립일을 입력해주세요.");
				step4_deCreateMemberForm.dem_birthday_day.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_id.value){
				alert("아이디를 입력해주세요.");
				step4_deCreateMemberForm.demander_id.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_pw.value){
				alert("비밀번호를 입력해주세요.");
				step4_deCreateMemberForm.dem_pw.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_pw_check.value){
				alert("비밀번호 확인을 위해 한번 더 입력해주세요.");
				step4_deCreateMemberForm.dem_pw_check.focus();
				return false;
			}
			if(step4_deCreateMemberForm.dem_pw_ask.value == "0"){
				alert("비밀번호 힌트 질문을 선택해주세요.");
				step4_deCreateMemberForm.dem_pw_ask.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_pw_ans.value){
				alert("비밀번호 힌트 답변을 입력해주세요.");
				step4_deCreateMemberForm.dem_pw_ans.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_ins_name.value){
				alert("근무기관명을 입력해주세요.");
				step4_deCreateMemberForm.dem_ins_name.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_ins_name.value){
				alert("근무기관명을 입력해주세요.");
				step4_deCreateMemberForm.dem_ins_name.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_rep_name.value){
				alert("대표자명을 입력해주세요.");
				step4_deCreateMemberForm.dem_rep_name.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_register1.value){
				alert("사업자등록번호를 모두 입력해주세요.");
				step4_deCreateMemberForm.demander_register1.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_register2.value){
				alert("사업자등록번호를 모두 입력해주세요.");
				step4_deCreateMemberForm.demander_register2.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_register3.value){
				alert("사업자등록번호를 모두 입력해주세요.");
				step4_deCreateMemberForm.demander_register3.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.post1.value && !step4_deCreateMemberForm.post2.value){
				alert("우편번호 찾기를 통해 주소를 입력해주세요.");
				openDaumPostcode();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_addr_bsc.value){
				alert("우편번호 찾기를 통해 회사주소를 입력해주세요.");
				step4_deCreateMemberForm.dem_addr_bsc.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_addr_dtl.value){
				alert("나머지주소를 입력해주세요.");
				step4_deCreateMemberForm.dem_addr_dtl.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.email1.value || !step4_deCreateMemberForm.email2.value){
				alert("이메일을 입력해주세요.");
				step4_deCreateMemberForm.email1.focus();
				return false;
			}
			
			//선택사항입력 or 저장
			document.getElementById("confrimType").value = type;
			
			//우편번호 형식으로 변경 = 앞자리-뒷자리
			document.getElementById("dem_zipcode").value = document.getElementById("post1").value + "-" +  document.getElementById("post2").value;
			
			//사업자등록번호
			document.getElementById("dem_resnum").value = document.getElementById("demander_register1").value +
														  document.getElementById("demander_register2").value +
														  document.getElementById("demander_register3").value;
			
			//이메일 형식으로 변경
			document.getElementById("dem_email").value = document.getElementById("email1").value + "@" + document.getElementById("email2").value;
			
			step4_deCreateMemberForm.submit();
		}
		
	</script>
</head>


<h2 align="left">기관 회원가입(기본정보)</h2>


<body style="padding-left: 50px">
	
	<form name="step4_deCreateMemberForm" action="/volunteerService/deCreateMemberBasic.do" method="post">
		
		<!-- 기관 회원가입(기본정보) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">담당자 이름</td>
				<td width="550" height="8" align="left">
					홍길동(아이핀정보)
					<input type="hidden" name="dem_cha_name" id="dem_cha_name" value="홍길동"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">성별</td>
				<td width="550" height="8" align="left">
					남(아이핀정보)
					<input type="hidden" name="dem_cha_sex" id="dem_cha_sex" value="1"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">부서</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_dep" id="dem_dep"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">직책</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_level" id="dem_level"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">창립일</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_birthday_year" id="dem_birthday_year" size="6" maxlength="4"/> 년
					<input type="text" name="dem_birthday_month" id="dem_birthday_month" size="4" maxlength="2"/> 월
					<input type="text" name="dem_birthday_day" id="dem_birthday_day" size="4" maxlength="2"/> 일
					<font color="gray" size="2"> ※ 본인 확인을 위한 자료로 이용됩니다.</font>
					<input type="hidden" name="dem_birthday" id="dem_birthday" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">아이디</td>
				<td width="550" height="8" align="left">
					<input type="text" name="demander_id" id="demander_id"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호</td>
				<td width="550" height="8" align="left">
					<input type="password" name="dem_pw" id="dem_pw" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호 확인</td>
				<td width="550" height="8" align="left">
					<input type="password" name="dem_pw_check" id="dem_pw_check" size="30" maxlength="20" onblur="checkPw();" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호 힌트</td>
				<td width="550" height="8" align="left">
					<select name = "dem_pw_ask">
						<option value = "0">-질문선택-</option>
						<option value = "1">질문1</option>
						<option value = "2">질문2</option>
						<option value = "3">질문3</option>
						<option value = "4">질문4</option>
						<option value = "5">질문5</option>
						<option value = "6">질문6</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">힌트 답변</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_pw_ans" id="dem_pw_ans" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">근무기관명</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_ins_name" id="dem_ins_name" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">대표자명</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_rep_name" id="dem_rep_name" size="12" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">사업자등록번호</td>
				<td width="550" height="8" align="left">
					<input type="text" name="demander_register1" id="demander_register1" size="6" maxlength="3" /> - 
					<input type="text" name="demander_register2" id="demander_register2" size="6" maxlength="2" /> - 
					<input type="text" name="demander_register3" id="demander_register3" size="6" maxlength="5" />
					<input type="hidden" name="dem_resnum" id="dem_resnum"/>
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">우편번호</td>
				<td width="550" height="8" align="left">
					<input type="text" id="post1" name="post1" size="8" class="d_form mini"> - <input type="text" id="post2" name="post2" size="8" class="d_form mini">
				    <input type="button" onclick="openDaumPostcode()" value="우편번호 찾기" class="d_btn">
				    <input type="hidden" name="dem_zipcode" id="dem_zipcode" value="" />
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">회사주소</td>
				<td width="550" height="8" align="left">
					<input type="text" id="dem_addr_bsc" name="dem_addr_bsc" class="d_form" size="45" placeholder="주소">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">나머지주소</td>
				<td width="550" height="8" align="left">
					<input type="text" id="dem_addr_dtl" name="dem_addr_dtl" class="d_form" size="45" placeholder="상세주소">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="16" align="right" bgcolor="#D5D5D5">담당자이메일</td>
				<td width="550" height="16" align="left">
					<input type="text" name="email1" id="email1" class="box" size="15"> @ 
					<input type="text" name="email2" id="email2" class="box" size="20">
					<select name="email_select" id="email_select" class="box" onChange="selectEmail(this.form);">
					    <option value="" selected>선택하세요</option>
					    <option value="empal.com">empal.com</option>
					    <option value="dreamwiz.com">dreamwiz.com</option>
					    <option value="naver.com">naver.com</option>
					    <option value="hotmail.com">hotmail.com</option>
					    <option value="chollian.net">chollian.net</option>
					    <option value="freechal.com">freechal.com</option>
					    <option value="hanafos.com">hanafos.com</option>
					    <option value="kebi.com">kebi.com</option>
					    <option value="korea.com">korea.com</option>
					    <option value="lycos.co.kr">lycos.co.kr</option>
					    <option value="netian.com">netian.com</option>
					    <option value="netsgo.com">netsgo.com</option>
					    <option value="unitel.co.kr">unitel.co.kr</option>
					    <option value="yahoo.co.kr">yahoo.co.kr</option>
					    <option value="1">직접입력</option>
					</select>
					<input type="hidden" name="dem_email" id="dem_email"/>
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="16" align="right" bgcolor="#D5D5D5">소속센터</td>
				<td width="550" height="16" align="left">
					도시선택, 군구선택, 센터선택
					<input type="hidden" name="dem_cen_name" id="dem_cen_name" value="성수동센터"/>
				</td>
			</tr>
			
			<tr>
				<td height="8"colspan="2" align="center">
					<input type="hidden" name="confirmType" id="confrimType" value=""/>
					<input type="button" name="more" id="more" value="선택사항 입력" onclick="goCreateBasic('more')"/>
					<input type="button" name="save" id="save" value="저장" onclick="goCreateBasic('save')"/>
				</td>
			</tr>
			
		</table>
		<!-- .//회원가입 입력폼 테이블 -->
		
	</form>
	
</body>
</html>
