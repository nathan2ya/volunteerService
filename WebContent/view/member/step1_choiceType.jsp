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
				url = "/volunteerService/step2_voStipulation.do";
			}else{
				url = "";
			}
			
			location.href = url;
		}
		
	</script>
	
</head>


<body>

	<form name="step1_choicetype">
	
		<table>
		
			<tbody>
				<tr>
					<td bgcolor=#ffffff colspan=3>
						<input onclick="group_change();" type="radio" value="volunteer" name="group" checked> 일반
						<input onclick="group_change();" type="radio" value="demander" name="group"> 기관
					</td>
				</tr>
				
				<tr valign=top>
				
					<td style="padding-right: 0px; padding-left: 0px; padding-bottom: 0px; margin: 0px; padding-top: 0px" colspan=4>
					
						<div id=volunteer>
							<table cellspacing=1 cellpadding=5 width="100%">
								<tbody>
									<tr>
									<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>* 이름</font></td>
										<td bgcolor=#ffffff>
											<font color=#555555 size=2>
												<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=25 size=15 name="vol_name" option="isnumber"> 
											</font>
										</td>
									</tr>
									
									<tr>
									<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>* 휴대전화</font></td>
										<td bgcolor=#ffffff>
											<font color=#555555 size=2>
												<select name="mbtlnum1" id="mbtlnum1">
													<option value="">선택하세요</option>
													<option value="010" selected>010</option>
													<option value="011" >011</option>
													<option value="016" >016</option>
													<option value="017" >017</option>
													<option value="018" >018</option>
													<option value="019" >019</option>
												</select>
												<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=4 size=8 name=volunteer_register1 option="isnumber"> - 
												<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=4 size=8 name=volunteer_register2 option="isnumber">
											</font>
										</td>
									</tr>
									
									<tr>
										<td>
											<input  type="button" name="confrim"  value="확인" onclick="cofirm('vo')"/>
										</td>
									</tr>
									
								</tbody>
							</table>
						</div>
						
						<div id=demander style="display: none">
							<table cellspacing=1 cellpadding=5 width="100%">
								<tbody>
									<tr>
										<td align=right width=149 bgcolor=#fafcfd height=20>* 기관명</td>
										<td bgcolor=#ffffff>
											<font color=#555555 size=2><input id=demander style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=16 size=16 name=demander> 
											</font>
										</td>
									</tr>
									<tr>
										<td align=right bgcolor=#fafcfd height=20>* 사업자등록번호</td>
										<td bgcolor=#ffffff colspan=3>
											<font color=#555555 size=2>
											<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=3 size=4 name=demander_register1 option="isnumber"> - 
											<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=3 size=4 name=demander_register2 option="isnumber"> - 
											<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=5 size=6 name=demander_register3 option="isnumber"> 
											</font>
										</td>
									</tr>
									
									<tr>
										<td>
											<input  type="button" name="confrim"  value="확인" onclick="cofirm('de')"/>
										</td>
									</tr>
									
								</tbody>
							</table>
						</div>
						
					</td>
					
				</tr>
			</tbody>
			
		</table>
		
	</form>

</body>
</html>
