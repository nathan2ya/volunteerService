<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>�α���</title>
	
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script language=JavaScript>
		
		$(document).ready(function(){
			var type = "${type}";
			if(type == 1){
				alert("���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
			}
			document.loginForm.user_id.focus();
		});
	
		//��������
		function toPass(){
			var input = document.loginForm.user_id.value;//����ڰ� �Է��� ��
			document.loginForm.user_id.value = input.replace(/^\s+|\s+$/g,""); //�յ� ������ ������
		}
		
		//�빮�ڸ� �ҹ��ڷ� ����
		function toPass1(){ 
			var input = document.loginForm.user_id.value;//����ڰ� �Է��� ��
			document.loginForm.user_id.value = input.toLowerCase(); //�빮�ڸ� �ҹ��ڷ� ����
		}
		
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
							<input type="text" name="user_id" id="user_id" style="width:180px; IME-MODE:disabled;" onkeypress="toPass(); toPass1();" onblur="toPass(); toPass1();" /> 
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
		������ġ:�α�����<br/>
		���� �α��� �Ǿ��ֽ��ϴ�. �α׾ƿ� �Ͻðڽ��ϱ�?
		<input type="button" name="logout" value="�α׾ƿ�" onclick="goLogout()"/>
		
	</c:if>
	<!-- .//�α��εȻ��� -->
	
</body>
</html>
