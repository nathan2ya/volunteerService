<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>

	<title>ȸ������</title>
	
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script language=JavaScript>
		
		$(document).ready(function(){
			var type = "${type}";
			if(type == 1){
				alert("�̹� ȸ�������� �� �����Դϴ�");
			}
			step1_choicetype.vol_name.focus();
		});
	
		//ȸ��Ÿ�� ������ư
		function group_change(){
			if(document.forms[0].group[0].checked == true){
				volunteer.style.display = "block";
				demander.style.display = "none";
				step1_choicetype.vol_name.focus();
			}else if(document.forms[0].group[1].checked == true){
				volunteer.style.display = "none";
				demander.style.display = "block";
				step1_choicetype.demander.focus();
			}
		}
		
		//�̸��� select box
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
		
		//�����Է�����
		function checkNum1(){
			if(event.keyCode!=13 && event.keyCode!=9 && !((event.keyCode >= 48 && event.keyCode<=57) || (event.keyCode >= 96 && event.keyCode <= 105) || event.keyCode==8 )){
				alert("����ڵ�Ϲ�ȣ�� ���ڸ� �Է��� �� �ֽ��ϴ�.");
				step1_choicetype.demander_register1.value = "";
				step1_choicetype.demander_register1.focus();
			} 
		}
		function checkNum2(){
			if(event.keyCode!=13 && event.keyCode!=9 && !((event.keyCode >= 48 && event.keyCode<=57) || (event.keyCode >= 96 && event.keyCode <= 105) || event.keyCode==8 )){
				alert("����ڵ�Ϲ�ȣ�� ���ڸ� �Է��� �� �ֽ��ϴ�.");
				step1_choicetype.demander_register2.value = "";
				step1_choicetype.demander_register2.focus();
			} 
		}
		function checkNum3(){
			if(event.keyCode!=13 && event.keyCode!=9 && !((event.keyCode >= 48 && event.keyCode<=57) || (event.keyCode >= 96 && event.keyCode <= 105) || event.keyCode==8 )){
				alert("����ڵ�Ϲ�ȣ�� ���ڸ� �Է��� �� �ֽ��ϴ�.");
				step1_choicetype.demander_register3.value = "";
				step1_choicetype.demander_register3.focus();
			} 
		}
		
		//submit
		function cofirm(type){
			
			if(type == 'vo'){
				if(!step1_choicetype.vol_name.value){
					alert("�̸��� �Է����ּ���.");
					step1_choicetype.vol_name.focus();
					return false;
				}
				if(!step1_choicetype.email1.value || !step1_choicetype.email2.value){
					alert("�̸��� �ּҸ� �Է����ּ���.");
					step1_choicetype.email1.focus();
					return false;
				}
				vo.vol_name.value = step1_choicetype.vol_name.value;
				vo.vol_email.value = step1_choicetype.email1.value + "@" + step1_choicetype.email2.value;
				vo.submit();
			}else if(type == 'de'){
				if(!step1_choicetype.dem_ins_name.value){
					alert("������� �Է����ּ���.");
					step1_choicetype.dem_ins_name.focus();
					return false;
				}
				if(!step1_choicetype.demander_register1.value){
					alert("����ڵ�Ϲ�ȣ�� ��� �Է����ּ���.");
					step1_choicetype.demander_register1.focus();
					return false;
				}
				if(!step1_choicetype.demander_register2.value){
					alert("����ڵ�Ϲ�ȣ�� ��� �Է����ּ���.");
					step1_choicetype.demander_register2.focus();
					return false;
				}
				if(!step1_choicetype.demander_register3.value){
					alert("����ڵ�Ϲ�ȣ�� ��� �Է����ּ���.");
					step1_choicetype.demander_register3.focus();
					return false;
				}
				//�����
				de.dem_ins_name.value = step1_choicetype.dem_ins_name.value;
				
				//����ڵ�Ϲ�ȣ
				de.dem_resnum.value = step1_choicetype.demander_register1.value + 
									  step1_choicetype.demander_register2.value +
									  step1_choicetype.demander_register3.value;
				de.submit();
			}
		}
		
	</script>
	
</head>


<body>

	<form name="step1_choicetype">
	
		<table>
		
			<tr>
				<td bgcolor=#ffffff colspan=3>
					<input onclick="group_change();" type="radio" value="volunteer" name="group" checked> �Ϲ�
					<input onclick="group_change();" type="radio" value="demander" name="group"> ���
				</td>
			</tr>
			
			<tr valign="top">
			
				<td colspan=4>
				
					<div id="volunteer">
						<table cellspacing="1" cellpadding="5" width="100%">
							<tbody>
								<tr>
									<td align="right" width="149" bgcolor="#fafcfd" height="20">
										<font color="#555555">* �̸�</font>
									</td>
									<td bgcolor="#ffffff">
										<font color=#555555 size=2>
											<input type="text" name="vol_name" id="vol_name" size="15" maxlength="25" />
										</font>
									</td>
								</tr>
								
								<tr>
									<td align=right width=149 bgcolor=#fafcfd height=20>
										<font color=#555555>* �̸���</font>
									</td>
									<td bgcolor=#ffffff>
										<font color=#555555 size=2>
											<input type="text" name="email1" id="email1" class="box" size="15"> @ 
											<input type="text" name="email2" id="email2" class="box" size="20">
											<select name="email_select" id="email_select" class="box" onChange="selectEmail(this.form);">
											    <option value="" selected>�����ϼ���</option>
											    <option value="empal.com">empal.com</option>
											    <option value="dreamwiz.com">dreamwiz.com</option>
											    <option value="gmail.com">gmail.com</option>
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
											    <option value="1">�����Է�</option>
											</select>
										</font>
									</td>
								</tr>
								
								<tr>
									<td>
										<input  type="button" name="confrim"  value="Ȯ��" onclick="cofirm('vo')"/>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
					
					<div id="demander" style="display: none">
						<table cellspacing=1 cellpadding=5 width="100%">
							<tbody>
								<tr>
									<td align="right" width="149" bgcolor="#fafcfd" height="20">* �����</td>
									<td bgcolor=#ffffff>
										<font color=#555555 size=2>
											<input type="text" maxlength="16" size="16" name="dem_ins_name" id="dem_ins_name" /> 
										</font>
									</td>
								</tr>
								<tr>
									<td align="right" bgcolor="#fafcfd" height="20">* ����ڵ�Ϲ�ȣ</td>
									<td bgcolor="#ffffff" colspan="3">
										<font color="#555555" size="2">
											<input type="text" name="demander_register1" size="6" maxlength="3" onkeydown="checkNum1();"/> - 
											<input type="text" name="demander_register2" size="6" maxlength="2" onkeydown="checkNum2();"/> - 
											<input type="text" name="demander_register3" size="6" maxlength="5" onkeydown="checkNum3();"/>
										</font>
									</td>
								</tr>
								
								<tr>
									<td>
										<input type="button" name="confrim" value="Ȯ��" onclick="cofirm('de')"/>
									</td>
								</tr>
								
							</tbody>
						</table>
					</div>
					
				</td>
				
			</tr>
			
		</table>
		
	</form>
	
	<form name="vo" action="/volunteerService/step2_voStipulation.do" method="post">
		<input type="hidden" name="vol_name" id="vol_name"/>
		<input type="hidden" name="vol_email" id="vol_email"/>
	</form>
	
	<form name="de" action="/volunteerService/step2_deStipulation.do" method="post">
		<input type="hidden" name="dem_ins_name" id="dem_ins_name" /> 
		<input type="hidden" name="dem_resnum" id="dem_resnum" />
	</form>
	
</body>
</html>
