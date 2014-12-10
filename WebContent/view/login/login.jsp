<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>로그인</title>
	
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script language=JavaScript>
		
		$(document).ready(function(){
			var type = "${type}";
			if(type == 1){
				alert("아이디 또는 비밀번호가 틀렸습니다.");
			}
			document.loginForm.user_id.focus();
		});
	
		//공백제거
		function toPass(){
			var input = document.loginForm.user_id.value;//사용자가 입력한 값
			document.loginForm.user_id.value = input.replace(/^\s+|\s+$/g,""); //앞뒤 공백을 제거함
		}
		
		//대문자를 소문자로 변경
		function toPass1(){ 
			var input = document.loginForm.user_id.value;//사용자가 입력한 값
			document.loginForm.user_id.value = input.toLowerCase(); //대문자를 소문자로 변경
		}
		
		//로그인
		function goLogin(){
			loginForm.submit();
		}
		
		//로그아웃
		function goLogout() {
			alert("로그아웃 되었습니다.");
			var url = "/volunteerService/logout.do";
			location.href = url;
		}
		
	</script>
	
</head>


<body>
	
	<!-- 비 로그인상태 -->
	<c:if test="${sessionScope.session_volunteerId == null && sessionScope.session_demanderId == null}">
		<form name="loginForm" action="/volunteerService/login.do" method="post">
			
			<table>
			
				<tr>
					<td bgcolor=#ffffff colspan=3>
						<input type="radio" name="memberType" value="vo" checked> 일반
						<input type="radio" name="memberType" value="de"> 기관
					</td>
				</tr>
				
				<tr>
				<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>아이디</font></td>
					<td bgcolor=#ffffff>
						<font color=#555555 size=2>
							<input type="text" name="user_id" id="user_id" style="width:180px; IME-MODE:disabled;" onkeypress="toPass(); toPass1();" onblur="toPass(); toPass1();" /> 
						</font>
					</td>
				</tr>
				
				<tr>
				<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>비밀번호</font></td>
					<td bgcolor=#ffffff>
						<font color=#555555 size=2>
							<input type="password" name="user_pw" id="user_pw" />   
						</font>
					</td>
				</tr>
													
				<tr>
					<td>
						<input  type="button" name="login"  value="로그인" onclick="goLogin()"/>
					</td>
				</tr>
				
			</table>
			
		</form>
	</c:if>
	
	<!-- 로그인상태 -->
	<c:if test="${sessionScope.session_volunteerId != null || sessionScope.session_demanderId != null}">
		현재위치:로그인폼<br/>
		현재 로그인 되어있습니다. 로그아웃 하시겠습니까?
		<input type="button" name="logout" value="로그아웃" onclick="goLogout()"/>
		
	</c:if>
	<!-- .//로그인된상태 -->
	
</body>
</html>
