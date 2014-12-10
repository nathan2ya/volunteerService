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
	function goLoginForm() {
		var url = "/volunteerService/loginForm.do";
		location.href=url;
	}
	
	//����������
	function goMyPage(memberType) {
		var url = "";
		
		//�Ʒ��� url 2������ ���� myPage 1��° �޴� annotation���� ����� ����
		if(memberType == 'vo'){
			url = "/volunteerService/voMyInformation_bsc.do";
		}else{
			url = "/volunteerService/deMyInformation_bsc.do";
		}
		location.href=url;
	}
	
</script>

</head>

<body>

	<b>�ӽ� ���� ������</b>
	
	<!-- �� �α��λ��� -->
	<c:if test="${sessionScope.session_volunteerId == null && sessionScope.session_demanderId == null}">
		<input  type="button" name="join"  value="ȸ������" onclick="goStep1_chooseType()"/>
		<input  type="button" name="login"  value="�α���" onclick="goLoginForm()"/>
	</c:if>
	
	<!-- �α��λ��� -->
	<c:if test="${sessionScope.session_volunteerId != null || sessionScope.session_demanderId != null}">
		<input  type="button" name="myPage"  value="����������" onclick="goMyPage('${memberType}')"/>
		<input  type="button" name="logout"  value="�α׾ƿ�" onclick="goLoginForm()"/>
	</c:if>
	
</body>
</html>