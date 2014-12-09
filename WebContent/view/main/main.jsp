<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<html>
<head>

<script type="text/javascript">
	
	//ȸ������
	function goStep1_chooseType() {
		var url = "/volunteerService/step1_chooseType.do";
		location.href=url;
	}
	
	//�α�����
	function gologinForm() {
		var url = "/volunteerService/loginForm.do";
		location.href=url;
	}
	
</script>

</head>
<body>
	<b>�ӽ� ���� ������</b>
	
	<!-- �� �α��λ��� -->
	<c:if test="${sessionScope.session_volunteerId == null && sessionScope.session_demanderId == null}">
		<input  type="button" name="join"  value="ȸ������" onclick="goStep1_chooseType()"/>
		<input  type="button" name="login"  value="�α���" onclick="gologinForm()"/>
	</c:if>
	
	<!-- �α��λ��� -->
	<c:if test="${sessionScope.session_volunteerId != null || sessionScope.session_demanderId != null}">
		<input  type="button" name="myPage"  value="����������" onclick="aaaa()"/>
		<input  type="button" name="logout"  value="�α׾ƿ�" onclick="gologinForm()"/>
	</c:if>
	
</body>
</html>