<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>�α���</title>
	
	<script language=JavaScript>
	
		//�Ϲ�, ��� ����
		function group_change(){
			if(document.forms[0].memberType[0].checked == true){
				volunteer.style.display = "block";
				demander.style.display = "none";
			}else if(document.forms[0].memberType[1].checked == true){
				volunteer.style.display = "none";
				demander.style.display = "block";
			}
		}
		
		//�α���
		function goLogin(type){
			loginForm.submit();
		}
		
		//�α׾ƿ�
		function goLogout() {
			alert("logout!!");
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
			
				<tbody>
					<tr>
						<td bgcolor=#ffffff colspan=3>
							<input onclick="group_change();" type="radio" name="memberType" value="vo" checked> �Ϲ�
							<input onclick="group_change();" type="radio" name="memberType" value="de"> ���
						</td>
					</tr>
					
					<tr valign=top>
					
						<td style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px" colspan=4>
						
							<div id = "volunteer">
								<table cellspacing=1 cellpadding=5 width="100%">
									<tbody>
										<tr>
										<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>�Ϲ� ���̵�</font></td>
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
												<input  type="button" name="login"  value="�α���" onclick="goLogin('vo')"/>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							
							<div id = "demander" style="display: none">
								<table cellspacing=1 cellpadding=5 width="100%">
									<tbody>
										<tr>
										<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>��� ���̵�</font></td>
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
												<input  type="button" name="login"  value="�α���" onclick="goLogin('de')"/>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							
						</td>
						
					</tr>
				</tbody>
				
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
