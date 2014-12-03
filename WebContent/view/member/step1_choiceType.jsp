<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>회원가입</title>
	
	<script language=JavaScript>
		function group_change(){
			if (document.forms[0].group[0].checked == true){
				volunteer.style.display = "block";
				demander.style.display = "none";
			}else if(document.forms[0].group[1].checked == true){
				volunteer.style.display = "none";
				demander.style.display = "block";
			}
		}
		
		
		function cofirm(type) {
			var url = "";
			
			if(type == 'vo'){
				url = "/volunteerService/step2_stipulation.do";
			}else{
				url = "";
			}
			
			location.href=url;
		}
		
	</script>
	
</head>


<body>

	<form name="step1_choiceType">
	
		<table>
		
			<tbody>
				<tr>
					<td bgColor=#ffffff colSpan=3>
						<input onclick="group_change();" type="radio" value="volunteer" name="group" checked> 일반
						<input onclick="group_change();" type="radio" value="demander" name="group"> 기관
					</td>
				</tr>
				
				<tr vAlign=top>
				
					<td style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px" colSpan=4>
					
						<DIV id=volunteer>
							<TABLE cellSpacing=1 cellPadding=5 width="100%">
								<TBODY>
									<TR>
									<TD align=right width=149 bgColor=#fafcfd height=20><FONT color=#555555>* 이름</FONT></TD>
										<TD bgColor=#ffffff>
											<FONT color=#555555 size=2>
												<INPUT style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=25 size=15 name="vol_name" option="isNumber"> 
											</FONT>
										</TD>
									</TR>
									
									<TR>
									<TD align=right width=149 bgColor=#fafcfd height=20><FONT color=#555555>* 휴대전화</FONT></TD>
										<TD bgColor=#ffffff>
											<FONT color=#555555 size=2>
												<select name="mbtlnum1" id="mbtlnum1">
													<option value="">선택하세요</option>
													<option value="010" selected>010</option>
													<option value="011" >011</option>
													<option value="016" >016</option>
													<option value="017" >017</option>
													<option value="018" >018</option>
													<option value="019" >019</option>
												</select>
												<INPUT style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=4 size=8 name=volunteer_register1 option="isNumber"> - 
												<INPUT style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=4 size=8 name=volunteer_register2 option="isNumber">
											</FONT>
										</TD>
									</TR>
									
									<tr>
										<td>
											<input  type="button" name="confrim"  value="확인" onclick="cofirm('vo')"/>
										</td>
									</tr>
									
								</TBODY>
							</TABLE>
						</DIV>
						
						<DIV id=demander style="DISPLAY: none">
							<TABLE cellSpacing=1 cellPadding=5 width="100%">
								<TBODY>
									<TR>
										<TD align=right width=149 bgColor=#fafcfd height=20>* 기관명</TD>
										<TD bgColor=#ffffff>
											<FONT color=#555555 size=2><INPUT id=demander style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=16 size=16 name=demander> 
											</FONT>
										</TD>
									</TR>
									<TR>
										<TD align=right bgColor=#fafcfd height=20>* 사업자등록번호</TD>
										<TD bgColor=#ffffff colSpan=3>
											<FONT color=#555555 size=2>
											<INPUT style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=3 size=4 name=demander_register1 option="isNumber"> - 
											<INPUT style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=3 size=4 name=demander_register2 option="isNumber"> - 
											<INPUT style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; BORDER-BOTTOM: gray 1px solid" maxLength=5 size=6 name=demander_register3 option="isNumber"> 
											</FONT>
										</TD>
									</TR>
									
									<tr>
										<td>
											<input  type="button" name="confrim"  value="확인" onclick="cofirm('de')"/>
										</td>
									</tr>
									
								</TBODY>
							</TABLE>
						</DIV>
						
					</td>
					
				</tr>
			</tbody>
			
		</table>
		
	</form>

</body>
</html>
