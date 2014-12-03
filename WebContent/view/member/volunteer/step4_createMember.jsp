<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>회원가입</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
	
		//다음 주소 API
		function openDaumPostcode() {
	    	new daum.Postcode({
	        	oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
	                document.getElementById("post1").value = data.postcode1;
	                document.getElementById("post2").value = data.postcode2;
	                document.getElementById("vol_addr_bsc").value = data.address;
	                
	                document.getElementById("vol_addr_dtl").focus();
	            }
	        }).open();
	    }
		//.다음 주소 API 종료
		
	</script>
</head>


<h2 align="left">자원봉사자 회원가입(임시)</h2>


<body style="padding-left: 50px">
	
	<form name="step4_createMemberForm" action="/volunteerService/step5_createMember.do" method="post">
		
		<!-- 회원가입 입력폼 테이블 -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">이름</td>
				<td width="550" height="8" align="left">
					<input type="text" name="vol_name" id="vol_name" size="20" maxlength="25" />
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">성별</td>
				<td width="550" height="8" align="left">
					남
					<input type="hidden" name="vol_sex" id="vol_sex" value="남"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">생년월일</td>
				<td width="550" height="8" align="left">
					1990 년 10 월 10 일 
					<font color="gray" size="2"> ※ 본인 확인을 위한 자료로 이용됩니다.</font>
					<input type="hidden" name="vol_birthday" id="vol_birthday" value="19001010"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">아이디</td>
				<td width="550" height="8" align="left">
					<input type="text" name="volunteer_id" id="volunteer_id" size="20" maxlength="12" />
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw" id="vol_pw" size="30" maxlength="20" />
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호 확인</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw_check" id="vol_pw_check" size="30" maxlength="20" />
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">비밀번호 힌트</td>
				<td width="550" height="8" align="left">
					<select name = vol_pw_ask>
						<option value = "1">질문1</option>
						<option value = "2">질문2</option>
						<option value = "3">질문3</option>
						<option value = "4">질문4</option>
						<option value = "5">질문5</option>
						<option value = "6">질문6</option>
					</select>
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">힌트 답변</td>
				<td width="550" height="8" align="left">
					<input type="text" name="vol_pw_ans" id="vol_pw_ans" size="30" maxlength="20" />
					<br/>
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">우편번호</td>
				<td width="550" height="8" align="left">
					<input type="text" id="post1" name="post1" size="8" class="d_form mini"> - <input type="text" id="post2" name="post2" size="8" class="d_form mini">
				    <input type="button" onclick="openDaumPostcode()" value="우편번호 찾기" class="d_btn">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">주소</td>
				<td width="550" height="8" align="left">
					<input type="text" id="vol_addr_bsc" name="vol_addr_bsc" class="d_form" size="45" placeholder="주소">
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
					<input type="text" name="vol_email" id="vol_email" size="45" maxlength="30"/>
				</td>
			</tr>
			
			<tr>
				<td height="8"colspan="2" align="center">
					<!-- 
					<input type="submit" name="submit" value="선택사항입력"/>
					 -->
					<input type="submit" name="submit" value="저장"/>
				</td>
			</tr>
			
			
		</table>
		<!-- .//회원가입 입력폼 테이블 -->
		
	</form>
	
</body>
</html>
