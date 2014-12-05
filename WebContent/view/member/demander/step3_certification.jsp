<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>

<head>

<title>회원가입</title>

<script type="text/javascript">
		
	function cofirm() {
		var url = "/volunteerService/step4_deCreateMemberBasicForm.do";
				
		location.href = url;
	}

</script>

</head>

<body>
	
	기관확인<br/>
	<input type="button" name="confrim"  value="인증완료" onclick="cofirm()"/>
	
</body>
</html>