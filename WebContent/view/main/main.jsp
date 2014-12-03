<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

	
<html>
<head>

<script type="text/javascript">
	
	//회원가입
	function goStep1_choiceType() {
		var url = "/volunteerService/step1_choiceType.do";
		location.href=url;
	}

</script>

</head>
<body>
	<b>임시 매인 페이지</b>
	<input  type="button" name="replay"  value="회원가입" onclick="goStep1_choiceType()"/>
</body>
</html>