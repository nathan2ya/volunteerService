<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>

<head>

<title>ȸ������</title>

<script type="text/javascript">

	function checkCheckBox(f){
		if(f.agree.checked == false ){
			alert('���� �� �̵��� �� �ֽ��ϴ�.');
			return false;
		}else{
			return true;
		}
	}

</script>

</head>

<body>
	
	<form action="/volunService/step3_certification.do" method="POST" onsubmit="return checkCheckBox(this)">
		
		������⿡..<br/><br/>
		
		�����մϴ�. <input type="checkbox" value="0" name="agree">
		<input type="submit" value="����">
	</form>

	
</body>
</html>