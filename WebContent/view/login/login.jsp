<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>�α���</title>
	
	<script language=JavaScript>
	
		//�α���
		function goLogin(){
			loginForm.submit();
		}
		
		//�α׾ƿ�
		function goLogout() {
			alert("�α׾ƿ� �Ǿ����ϴ�.");
			var url = "/volunteerService/logout.do";
			location.href = url;
		}
		
	</script>
	
</head>


<body>
	
	<!-- �� �α��λ��� -->
	<c:if test="${sessionScope.session_volunteerId == null && sessionScope.session_demanderId == null}">
		<form name="loginForm" action="/volunteerService/login.do" method="post">
			
			<table>
			
				<tr>
					<td bgcolor=#ffffff colspan=3>
						<input type="radio" name="memberType" value="vo" checked> �Ϲ�
						<input type="radio" name="memberType" value="de"> ���
					</td>
				</tr>
				
				<tr>
				<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>���̵�</font></td>
					<td bgcolor=#ffffff>
						<font color=#555555 size=2>
							<input type="text" name="user_id" id="user_id" /> 
						</font>
					</td>
				</tr>
				
				<tr>
				<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>��й�ȣ</font></td>
					<td bgcolor=#ffffff>
						<font color=#555555 size=2>
							<input type="password" name="user_pw" id="user_pw" />   
						</font>
					</td>
				</tr>
													
				<tr>
					<td>
						<input  type="button" name="login"  value="�α���" onclick="goLogin()"/>
					</td>
				</tr>
				
			</table>
			
		</form>
	</c:if>
	
	<!-- �α��λ��� -->
	<c:if test="${sessionScope.session_volunteerId != null || sessionScope.session_demanderId != null}">
		
		<input type="button" name="logout" value="�α׾ƿ�" onclick="goLogout()"/>
		
	</c:if>
	<!-- .//�α��εȻ��� -->
	
</body>
</html>