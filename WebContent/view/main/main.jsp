<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<html>
<head>

<script type="text/javascript">
	
	//회원가입
	function goStep1_chooseType() {
		var url = "/volunteerService/step1_chooseType.do";
		location.href=url;
	}
	
	//로그인폼
	function goLoginForm() {
		var url = "/volunteerService/loginForm.do";
		location.href=url;
	}
	
	//마이페이지
	function goMyPage(memberType) {
		var url = "";
		
		//아래의 url 2가지는 향후 myPage 1번째 메뉴 annotation으로 변경될 예정
		if(memberType == 'vo'){
			url = "/volunteerService/voMyInformation_bsc.do";
		}else{
			url = "/volunteerService/deMyInformation_bsc.do";
		}
		location.href=url;
	}
	
</script>

</head>

<body>

	<b>임시 매인 페이지</b>
	
	<!-- 비 로그인상태 -->
	<c:if test="${sessionScope.session_volunteerId == null && sessionScope.session_demanderId == null}">
		<input  type="button" name="join"  value="회원가입" onclick="goStep1_chooseType()"/>
		<input  type="button" name="login"  value="로그인" onclick="goLoginForm()"/>
	</c:if>
	
	<!-- 로그인상태 -->
	<c:if test="${sessionScope.session_volunteerId != null || sessionScope.session_demanderId != null}">
		<input  type="button" name="myPage"  value="마이페이지" onclick="goMyPage('${memberType}')"/>
		<input  type="button" name="logout"  value="로그아웃" onclick="goLoginForm()"/>
	</c:if>
	
</body>
</html>