<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

	
<html>
<head>

<script type="text/javascript">
	
	//ȸ������
	function goStep1_chooseType() {
		var url = "/volunteerService/step1_chooseType.do";
		location.href=url;
	}
	
	//�α�����
	loginForm
	function gologinForm() {
		var url = "/volunteerService/loginForm.do";
		location.href=url;
	}
	
</script>

</head>
<body>
	<b>�ӽ� ���� ������</b>
	<input  type="button" name="join"  value="ȸ������" onclick="goStep1_chooseType()"/>
	<input  type="button" name="login"  value="�α���" onclick="gologinForm()"/>
</body>
</html>