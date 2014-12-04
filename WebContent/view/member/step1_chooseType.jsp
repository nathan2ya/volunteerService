<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>회원가입</title>
	
	<script language=JavaScript>
	
		//일반, 기관 선택
		function group_change(){
			if(document.forms[0].group[0].checked == true){
				volunteer.style.display = "block";
				demander.style.display = "none";
			}else if(document.forms[0].group[1].checked == true){
				volunteer.style.display = "none";
				demander.style.display = "block";
			}
		}
		
		//일반.이메일 선택
		function selectEmail(form){
	        if(form.email_select.value == '1'){
	        	form.email2.readOnly = false;
	        	form.email2.value = '';
	        	form.email2.focus();
	        }else{
	        	form.email2.readOnly = true;
	        	form.email2.value = form.email_select.value;
        	}
		}
		
		//일반, 기관 다음Step
		function cofirm(type){
			var url = "";
			
			if(type == 'vo'){
				url = "/volunteerService/step2_voStipulation.do";
			}else if(type == 'de'){
				url = "/volunteerService/step2_deStipulation.do";
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
									<td align=right width=149 bgcolor=#fafcfd height=20><font color=#555555>* 이메일</font></td>
										<td bgcolor=#ffffff>
											<font color=#555555 size=2>
												<input type="text" name="email1" id="email1" class="box" size="15"> @ 
												<input type="text" name="email2" id="email2" class="box" size="20">
												
												<select name="email_select" id="email_select" class="box" onChange="selectEmail(this.form);">
												    <option value="" selected>선택하세요</option>
												    <option value="empal.com">empal.com</option>
												    <option value="dreamwiz.com">dreamwiz.com</option>
												    <option value="naver.com">naver.com</option>
												    <option value="hotmail.com">hotmail.com</option>
												    <option value="chollian.net">chollian.net</option>
												    <option value="freechal.com">freechal.com</option>
												    <option value="hanafos.com">hanafos.com</option>
												    <option value="kebi.com">kebi.com</option>
												    <option value="korea.com">korea.com</option>
												    <option value="lycos.co.kr">lycos.co.kr</option>
												    <option value="netian.com">netian.com</option>
												    <option value="netsgo.com">netsgo.com</option>
												    <option value="unitel.co.kr">unitel.co.kr</option>
												    <option value="yahoo.co.kr">yahoo.co.kr</option>
												    <option value="1">직접입력</option>
												</select>
																								 
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
											<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=4 size=6 name=demander_register1 option="isnumber"> - 
											<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=4 size=6 name=demander_register2 option="isnumber"> - 
											<input style="border-right: gray 1px solid; border-top: gray 1px solid; border-left: gray 1px solid; border-bottom: gray 1px solid" maxlength=4 size=6 name=demander_register3 option="isnumber"> 
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
