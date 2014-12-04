<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>

	<title>회원가입</title>
	
	<script type="text/javascript">
			
		function goMain() {
			var url = "/volunteerService/main.do";
			location.href = url;
		}
	
	</script>

</head>

<body>

	가입을 축하합니다. <br/>
	<input type="button" name="main"  value="매인으로" onclick="goMain()"/>
	
</body>
</html>