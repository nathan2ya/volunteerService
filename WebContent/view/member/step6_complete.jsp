<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>

	<title>ȸ������</title>
	
	<script type="text/javascript">
			
		function goMain() {
			var url = "/volunteerService/main.do";
			location.href = url;
		}
	
	</script>

</head>

<body>

	������ �����մϴ�. <br/>
	<input type="button" name="main"  value="��������" onclick="goMain()"/>
	
</body>
</html>