<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>

<head>

<title>ȸ������</title>

<script type="text/javascript">
		
	function cofirm() {
		var url = "/volunteerService/step4_voCreateMemberBasicForm.do";
				
		location.href = url;
	}

</script>

</head>

<body>
	
	������ ��������<br/>
	<input type="button" name="confrim"  value="�����Ϸ�" onclick="cofirm()"/>
	
</body>
</html>