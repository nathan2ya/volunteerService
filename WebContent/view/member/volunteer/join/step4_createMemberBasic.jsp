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
	                document.getElementById("post1").value = data.postcode1;
	                document.getElementById("post2").value = data.postcode2;
	                document.getElementById("vol_addr_bsc").value = data.address;
	                document.getElementById("vol_addr_dtl").focus();
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
			if (step4_voCreateMemberForm.vol_pw.value != step4_voCreateMemberForm.vol_pw_check.value) {
				alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				step4_voCreateMemberForm.vol_pw.value = "";
				step4_voCreateMemberForm.vol_pw_check.value = "";
				step4_voCreateMemberForm.vol_pw.focus();
				return false;
			}
		}
		
		//submit
		function goCreateBasic(type){
			if(!step4_voCreateMemberForm.volunteer_id.value){
				alert("���̵� �Է����ּ���.");
				step4_voCreateMemberForm.volunteer_id.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_pw.value){
				alert("��й�ȣ�� �Է����ּ���.");
				step4_voCreateMemberForm.vol_pw.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_pw_check.value){
				alert("��й�ȣ Ȯ���� ���� �ѹ� �� �Է����ּ���.");
				step4_voCreateMemberForm.vol_pw_check.focus();
				return false;
			}
			if(step4_voCreateMemberForm.vol_pw_ask.value == "0"){
				alert("��й�ȣ ��Ʈ ������ �������ּ���.");
				step4_voCreateMemberForm.vol_pw_ask.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_pw_ans.value){
				alert("��й�ȣ ��Ʈ �亯�� �Է����ּ���.");
				step4_voCreateMemberForm.vol_pw_ans.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.post1.value && !step4_voCreateMemberForm.post2.value){
				alert("������ȣ ã�⸦ ���� �ּҸ� �Է����ּ���.");
				openDaumPostcode();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_addr_bsc.value){
				alert("������ȣ ã�⸦ ���� �ּҸ� �Է����ּ���.");
				step4_voCreateMemberForm.vol_addr_bsc.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.vol_addr_dtl.value){
				alert("���ּҸ� �Է����ּ���.");
				step4_voCreateMemberForm.vol_addr_dtl.focus();
				return false;
			}
			if(!step4_voCreateMemberForm.email1.value || !step4_voCreateMemberForm.email2.value){
				alert("�̸����� �Է����ּ���.");
				step4_voCreateMemberForm.email1.focus();
				return false;
			}
			
			//���û����Է� or ����
			document.getElementById("confrimType").value = type;
			
			//������ȣ �������� ���� = ���ڸ�-���ڸ�
			document.getElementById("vol_zipcode").value = document.getElementById("post1").value + "-" +  document.getElementById("post2").value;
			
			//�̸��� �������� ����
			document.getElementById("vol_email").value = document.getElementById("email1").value + "@" + document.getElementById("email2").value;
			
			step4_voCreateMemberForm.submit();
		}
		
	</script>
</head>


<h2 align="left">�Ϲ� ȸ������(�⺻����)</h2>


<body style="padding-left: 50px">
	
	<form name="step4_voCreateMemberForm" action="/volunteerService/voCreateMemberBasic.do" method="post">
		
		<!-- �Ϲ� ȸ������(�⺻����) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�̸�</td>
				<td width="550" height="8" align="left">
					�����(����������)
					<input type="hidden" name="vol_name" id="vol_name" value="�����"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">����</td>
				<td width="550" height="8" align="left">
					��(����������)
					<input type="hidden" name="vol_sex" id="vol_sex" value="1"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�������</td>
				<td width="550" height="8" align="left">
					1990 �� 10 �� 10 ��(����������)
					<font color="gray" size="2"> �� ���� Ȯ���� ���� �ڷ�� �̿�˴ϴ�.</font>
					<input type="hidden" name="vol_birthday" id="vol_birthday" value="19001010"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">���̵�</td>
				<td width="550" height="8" align="left">
					<input type="text" name="volunteer_id" id="volunteer_id" size="20" maxlength="12" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw" id="vol_pw" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ Ȯ��</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw_check" id="vol_pw_check" size="30" maxlength="20" onblur="checkPw();" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ ��Ʈ ����</td>
				<td width="550" height="8" align="left">
					<select name = "vol_pw_ask">
						<option value = "0">-��������-</option>
						<option value = "1">����1</option>
						<option value = "2">����2</option>
						<option value = "3">����3</option>
						<option value = "4">����4</option>
						<option value = "5">����5</option>
						<option value = "6">����6</option>
						<option value = "6">����7</option>
						<option value = "6">����8</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��Ʈ �亯</td>
				<td width="550" height="8" align="left">
					<input type="text" name="vol_pw_ans" id="vol_pw_ans" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�Ҽ� ����</td>
				<td width="550" height="8" align="left">
					1������, 2������, 3������ ���鿹�� (���� ���簪���� ����.)
					<input type="hidden" name="vol_center_seq" id="vol_center_seq" value="777" />
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">������ȣ</td>
				<td width="550" height="8" align="left">
					<input type="text" id="post1" name="post1" size="8" readonly="readonly" class="d_form mini"> - <input type="text" id="post2" name="post2" size="8" readonly="readonly" class="d_form mini">
					<input type="hidden" name="vol_zipcode" id="vol_zipcode" value=""/>
				    <input type="button" onclick="openDaumPostcode()" value="������ȣ ã��" class="d_btn">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�ּ�</td>
				<td width="550" height="8" align="left">
					<input type="text" id="vol_addr_bsc" name="vol_addr_bsc" readonly="readonly" class="d_form" size="45" placeholder="�ּ�">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">���ּ�</td>
				<td width="550" height="8" align="left">
					<input type="text" id="vol_addr_dtl" name="vol_addr_dtl" class="d_form" size="45" placeholder="���ּ�">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="16" align="right" bgcolor="#D5D5D5">�̸���</td>
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
					<input type="hidden" name="vol_email" id="vol_email"/>
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