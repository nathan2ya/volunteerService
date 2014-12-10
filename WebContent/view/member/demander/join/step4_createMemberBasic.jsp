<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>ȸ������</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		function openDaumPostcode() {
	    	new daum.Postcode({
	        	oncomplete: function(data) {
	                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�. �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ְ�, Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
	                document.getElementById("post1").value = data.postcode1;
	                document.getElementById("post2").value = data.postcode2;
	                document.getElementById("dem_addr_bsc").value = data.address;
	                
	                document.getElementById("dem_addr_dtl").focus();
	            }
	        }).open();
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
		
		//��й�ȣ ��ġ���� Ȯ��
		function checkPw() {
			if (step4_deCreateMemberForm.dem_pw.value != step4_deCreateMemberForm.dem_pw_check.value) {
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				step4_deCreateMemberForm.dem_pw.value = "";
				step4_deCreateMemberForm.dem_pw_check.value = "";
				step4_deCreateMemberForm.dem_pw.focus();
				return false;
			}
		}
		
		//submit
		function goCreateBasic(type){
			if(!step4_deCreateMemberForm.dem_dep.value){
				alert("�μ��� �Է����ּ���.");
				step4_deCreateMemberForm.dem_dep.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_level.value){
				alert("��å�� �Է����ּ���.");
				step4_deCreateMemberForm.dem_level.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_birthday_year.value){
				alert("â������ �Է����ּ���.");
				step4_deCreateMemberForm.dem_birthday_year.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_birthday_month.value){
				alert("â������ �Է����ּ���.");
				step4_deCreateMemberForm.dem_birthday_month.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_birthday_day.value){
				alert("â������ �Է����ּ���.");
				step4_deCreateMemberForm.dem_birthday_day.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_id.value){
				alert("���̵� �Է����ּ���.");
				step4_deCreateMemberForm.demander_id.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_pw.value){
				alert("��й�ȣ�� �Է����ּ���.");
				step4_deCreateMemberForm.dem_pw.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_pw_check.value){
				alert("��й�ȣ Ȯ���� ���� �ѹ� �� �Է����ּ���.");
				step4_deCreateMemberForm.dem_pw_check.focus();
				return false;
			}
			if(step4_deCreateMemberForm.dem_pw_ask.value == "0"){
				alert("��й�ȣ ��Ʈ ������ �������ּ���.");
				step4_deCreateMemberForm.dem_pw_ask.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_pw_ans.value){
				alert("��й�ȣ ��Ʈ �亯�� �Է����ּ���.");
				step4_deCreateMemberForm.dem_pw_ans.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_ins_name.value){
				alert("�ٹ�������� �Է����ּ���.");
				step4_deCreateMemberForm.dem_ins_name.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_ins_name.value){
				alert("�ٹ�������� �Է����ּ���.");
				step4_deCreateMemberForm.dem_ins_name.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_rep_name.value){
				alert("��ǥ�ڸ��� �Է����ּ���.");
				step4_deCreateMemberForm.dem_rep_name.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_register1.value){
				alert("����ڵ�Ϲ�ȣ�� ��� �Է����ּ���.");
				step4_deCreateMemberForm.demander_register1.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_register2.value){
				alert("����ڵ�Ϲ�ȣ�� ��� �Է����ּ���.");
				step4_deCreateMemberForm.demander_register2.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.demander_register3.value){
				alert("����ڵ�Ϲ�ȣ�� ��� �Է����ּ���.");
				step4_deCreateMemberForm.demander_register3.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.post1.value && !step4_deCreateMemberForm.post2.value){
				alert("�����ȣ ã�⸦ ���� �ּҸ� �Է����ּ���.");
				openDaumPostcode();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_addr_bsc.value){
				alert("�����ȣ ã�⸦ ���� ȸ���ּҸ� �Է����ּ���.");
				step4_deCreateMemberForm.dem_addr_bsc.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.dem_addr_dtl.value){
				alert("�������ּҸ� �Է����ּ���.");
				step4_deCreateMemberForm.dem_addr_dtl.focus();
				return false;
			}
			if(!step4_deCreateMemberForm.email1.value || !step4_deCreateMemberForm.email2.value){
				alert("�̸����� �Է����ּ���.");
				step4_deCreateMemberForm.email1.focus();
				return false;
			}
			
			//���û����Է� or ����
			document.getElementById("confrimType").value = type;
			
			//�����ȣ �������� ���� = ���ڸ�-���ڸ�
			document.getElementById("dem_zipcode").value = document.getElementById("post1").value + "-" +  document.getElementById("post2").value;
			
			//����ڵ�Ϲ�ȣ
			document.getElementById("dem_resnum").value = document.getElementById("demander_register1").value +
														  document.getElementById("demander_register2").value +
														  document.getElementById("demander_register3").value;
			
			//�̸��� �������� ����
			document.getElementById("dem_email").value = document.getElementById("email1").value + "@" + document.getElementById("email2").value;
			
			step4_deCreateMemberForm.submit();
		}
		
	</script>
</head>


<h2 align="left">��� ȸ������(�⺻����)</h2>


<body style="padding-left: 50px">
	
	<form name="step4_deCreateMemberForm" action="/volunteerService/deCreateMemberBasic.do" method="post">
		
		<!-- ��� ȸ������(�⺻����) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">����� �̸�</td>
				<td width="550" height="8" align="left">
					ȫ�浿(����������)
					<input type="hidden" name="dem_cha_name" id="dem_cha_name" value="ȫ�浿"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">����</td>
				<td width="550" height="8" align="left">
					��(����������)
					<input type="hidden" name="dem_cha_sex" id="dem_cha_sex" value="1"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�μ�</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_dep" id="dem_dep"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��å</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_level" id="dem_level"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">â����</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_birthday_year" id="dem_birthday_year" size="6" maxlength="4"/> ��
					<input type="text" name="dem_birthday_month" id="dem_birthday_month" size="4" maxlength="2"/> ��
					<input type="text" name="dem_birthday_day" id="dem_birthday_day" size="4" maxlength="2"/> ��
					<font color="gray" size="2"> �� ���� Ȯ���� ���� �ڷ�� �̿�˴ϴ�.</font>
					<input type="hidden" name="dem_birthday" id="dem_birthday" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">���̵�</td>
				<td width="550" height="8" align="left">
					<input type="text" name="demander_id" id="demander_id"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ</td>
				<td width="550" height="8" align="left">
					<input type="password" name="dem_pw" id="dem_pw" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ Ȯ��</td>
				<td width="550" height="8" align="left">
					<input type="password" name="dem_pw_check" id="dem_pw_check" size="30" maxlength="20" onblur="checkPw();" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ ��Ʈ</td>
				<td width="550" height="8" align="left">
					<select name = "dem_pw_ask">
						<option value = "0">-��������-</option>
						<option value = "1">����1</option>
						<option value = "2">����2</option>
						<option value = "3">����3</option>
						<option value = "4">����4</option>
						<option value = "5">����5</option>
						<option value = "6">����6</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��Ʈ �亯</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_pw_ans" id="dem_pw_ans" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�ٹ������</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_ins_name" id="dem_ins_name" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��ǥ�ڸ�</td>
				<td width="550" height="8" align="left">
					<input type="text" name="dem_rep_name" id="dem_rep_name" size="12" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">����ڵ�Ϲ�ȣ</td>
				<td width="550" height="8" align="left">
					<input type="text" name="demander_register1" id="demander_register1" size="6" maxlength="3" /> - 
					<input type="text" name="demander_register2" id="demander_register2" size="6" maxlength="2" /> - 
					<input type="text" name="demander_register3" id="demander_register3" size="6" maxlength="5" />
					<input type="hidden" name="dem_resnum" id="dem_resnum"/>
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�����ȣ</td>
				<td width="550" height="8" align="left">
					<input type="text" id="post1" name="post1" size="8" class="d_form mini"> - <input type="text" id="post2" name="post2" size="8" class="d_form mini">
				    <input type="button" onclick="openDaumPostcode()" value="�����ȣ ã��" class="d_btn">
				    <input type="hidden" name="dem_zipcode" id="dem_zipcode" value="" />
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">ȸ���ּ�</td>
				<td width="550" height="8" align="left">
					<input type="text" id="dem_addr_bsc" name="dem_addr_bsc" class="d_form" size="45" placeholder="�ּ�">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�������ּ�</td>
				<td width="550" height="8" align="left">
					<input type="text" id="dem_addr_dtl" name="dem_addr_dtl" class="d_form" size="45" placeholder="���ּ�">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="16" align="right" bgcolor="#D5D5D5">������̸���</td>
				<td width="550" height="16" align="left">
					<input type="text" name="email1" id="email1" class="box" size="15"> @ 
					<input type="text" name="email2" id="email2" class="box" size="20">
					<select name="email_select" id="email_select" class="box" onChange="selectEmail(this.form);">
					    <option value="" selected>�����ϼ���</option>
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
					    <option value="1">�����Է�</option>
					</select>
					<input type="hidden" name="dem_email" id="dem_email"/>
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="16" align="right" bgcolor="#D5D5D5">�ҼӼ���</td>
				<td width="550" height="16" align="left">
					���ü���, ��������, ���ͼ���
					<input type="hidden" name="dem_cen_name" id="dem_cen_name" value="����������"/>
				</td>
			</tr>
			
			<tr>
				<td height="8"colspan="2" align="center">
					<input type="hidden" name="confirmType" id="confrimType" value=""/>
					<input type="button" name="more" id="more" value="���û��� �Է�" onclick="goCreateBasic('more')"/>
					<input type="button" name="save" id="save" value="����" onclick="goCreateBasic('save')"/>
				</td>
			</tr>
			
		</table>
		<!-- .//ȸ������ �Է��� ���̺� -->
		
	</form>
	
</body>
</html>
