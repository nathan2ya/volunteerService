<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>

	
<html>
<head>

<script type="text/javascript">
	
	//ȸ������
	function goStep1_choiceType() {
		var url = "/volunteerService/step1_choiceType.do";
		location.href=url;
	}

</script>

</head>
<body>
	<b>�ӽ� ���� ������</b>
	<input  type="button" name="replay"  value="ȸ������" onclick="goStep1_choiceType()"/>
</body>
</html>