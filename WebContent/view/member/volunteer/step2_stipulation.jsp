<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>

<head>

<title>회원가입</title>

<script type="text/javascript">

	function checkCheckBox(f){
		if(f.agree.checked == false ){
			alert('동의 후 이동할 수 있습니다.');
			return false;
		}else{
			return true;
		}
	}

</script>

</head>

<body>
	
	<form action="/volunteerService/step3_voCertification.do" method="POST" onsubmit="return checkCheckBox(this)">
		
		<textarea cols=30 rows=5> 
보우테크 자원봉사서비스 입니다. 여기에 약관내용이 들어갈 예정.
		</textarea><br/><br/>
		
		동의합니다. <input type="checkbox" value="0" name="agree">
		<input type="submit" value="다음">
	</form>

	
</body>
</html>