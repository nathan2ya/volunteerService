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
	                document.getElementById("post1").value = data.postcode1;
	                document.getElementById("post2").value = data.postcode2;
	                document.getElementById("vol_addr_bsc").value = data.address;
	                document.getElementById("vol_addr_dtl").focus();
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
			if (step4_voCreateMemberForm.vol_pw.value != step4_voCreateMemberForm.vol_pw_check.value) {
				alert("비밀번호가 일치하지 않습니다.");
				step4_voCreateMemberForm.vol_pw.value = "";
				step4_voCreateMemberForm.vol_pw_check.value = "";
				step4_voCreateMemberForm.vol_pw.focus();
				return false;
			}
		}
		
		//submit
		function goCreateBasic(type){
			if(!step4_voCreateMemberForm.volunteer_id.value){
				alert("아이디를 입력해주세요.");
				step4_voCreateMemberForm.volunteer_id.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_pw.value){
				alert("비밀번호를 입력해주세요.");
				step4_voCreateMemberForm.vol_pw.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_pw_check.value){
				alert("비밀번호 확인을 위해 한번 더 입력해주세요.");
				step4_voCreateMemberForm.vol_pw_check.focus();
				return false;
			}
			if(step4_voCreateMemberForm.vol_pw_ask.value == "0"){
				alert("비밀번호 힌트 질문을 선택해주세요.");
				step4_voCreateMemberForm.vol_pw_ask.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_pw_ans.value){
				alert("비밀번호 힌트 답변을 입력해주세요.");
				step4_voCreateMemberForm.vol_pw_ans.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.post1.value && !step4_voCreateMemberForm.post2.value){
				alert("우편번호 찾기를 통해 주소를 입력해주세요.");
				openDaumPostcode();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_addr_bsc.value){
				alert("우편번호 찾기를 통해 주소를 입력해주세요.");
				step4_voCreateMemberForm.vol_addr_bsc.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_addr_dtl.value){
				alert("상세주소를 입력해주세요.");
				step4_voCreateMemberForm.vol_addr_dtl.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.email1.value || !step4_voCreateMemberForm.email2.value){
				alert("이메일을 입력해주세요.");
				step4_voCreateMemberForm.email1.focus();
				return false;
			}
			
			//선택사항입력 or 저장
			document.getElementById("confrimType").value = type;
			
			//우편번호 형식으로 변경 = 앞자리-뒷자리
			document.getElementById("vol_zipcode").value = document.getElementById("post1").value + "-" +  document.getElementById("post2").value;
			
			//이메일 형식으로 변경
			document.getElementById("vol_email").value = document.getElementById("email1").value + "@" + document.getElementById("email2").value;
			step4_voCreateMemberForm.submit();
		}
		
	</script>
</head>


<h2 align="left">일반 회원가입(기본정보)</h2>


<body style="padding-left: 50px">
	
	<form name="step4_voCreateMemberForm" action="/volunteerService/voCreateMemberBasic.do" method="post">
		
		<!-- 일반 회원가입(기본정보) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">이름</td>
				<td width="550" height="8" align="left">
					류재욱(아이핀정보)
					<input type="hidden" name="vol_name" id="vol_name" value="류재욱"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">성별</td>
				<td width="550" height="8" align="left">
					남(아이핀정보)
					<input type="hidden" name="vol_sex" id="vol_sex" value="1"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">생년월일</td>
				<td width="550" height="8" align="left">
					1990 년 10 월 10 일(아이핀정보)
					<font color="gray" size="2"> ※ 본인 확인을 위한 자료로 이용됩니다.</font>
					<input type="hidden" name="vol_birthday" id="vol_birthday" value="19001010"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">아이디</td>
				<td width="550" height="8" align="left">
					<input type="text" name="volunteer_id" id="volunteer_id" size="20" maxlength="12" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw" id="vol_pw" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호 확인</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw_check" id="vol_pw_check" size="30" maxlength="20" onblur="checkPw();" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호 힌트 질문</td>
				<td width="550" height="8" align="left">
					<select name = "vol_pw_ask">
						<option value = "0">-질문선택-</option>
						<option value = "1">질문1</option>
						<option value = "2">질문2</option>
						<option value = "3">질문3</option>
						<option value = "4">질문4</option>
						<option value = "5">질문5</option>
						<option value = "6">질문6</option>
						<option value = "6">질문7</option>
						<option value = "6">질문8</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">힌트 답변</td>
				<td width="550" height="8" align="left">
					<input type="text" name="vol_pw_ans" id="vol_pw_ans" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">소속 센터</td>
				<td width="550" height="8" align="left">
					1차선택, 2차선택, 3차선택 만들예정 (현재 히든값으로 들어간다.)
					<input type="hidden" name="vol_center_seq" id="vol_center_seq" value="777" />
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">우편번호</td>
				<td width="550" height="8" align="left">
					<input type="text" id="post1" name="post1" size="8" readonly="readonly" class="d_form mini"> - <input type="text" id="post2" name="post2" size="8" readonly="readonly" class="d_form mini">
					<input type="hidden" name="vol_zipcode" id="vol_zipcode" value=""/>
				    <input type="button" onclick="openDaumPostcode()" value="우편번호 찾기" class="d_btn">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">주소</td>
				<td width="550" height="8" align="left">
					<input type="text" id="vol_addr_bsc" name="vol_addr_bsc" readonly="readonly" class="d_form" size="45" placeholder="주소">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">상세주소</td>
				<td width="550" height="8" align="left">
					<input type="text" id="vol_addr_dtl" name="vol_addr_dtl" class="d_form" size="45" placeholder="상세주소">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="16" align="right" bgcolor="#D5D5D5">이메일</td>
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
					<input type="hidden" name="vol_email" id="vol_email"/>
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
