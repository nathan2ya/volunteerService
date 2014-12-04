<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

	
<html>
<head>

<script type="text/javascript">
	
	//회원가입
	function goStep1_chooseType() {
		var url = "/volunteerService/step1_chooseType.do";
		location.href=url;
	}

</script>

</head>
<body>
	<b>임시 매인 페이지</b>
	<input  type="button" name="join"  value="회원가입" onclick="goStep1_chooseType()"/>
</body>
</html>