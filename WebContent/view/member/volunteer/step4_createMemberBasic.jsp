<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>ȸ������</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		//submit
		function goCreateBasic(type){
			//���û����Է� or ����
			document.getElementById("confrimType").value = type;
			
			//�����ȣ �������� ���� = ���ڸ�-���ڸ�
			document.getElementById("vol_zipcode").value = document.getElementById("post1").value + "-" +  document.getElementById("post2").value;
			step4_voCreateMemberForm.submit();
		}
		
		//DAUM �ּ� API
		function openDaumPostcode() {
	    	new daum.Postcode({
	        	oncomplete: function(data) {
	                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�. �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ְ�, Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
	                document.getElementById("post1").value = data.postcode1;
	                document.getElementById("post2").value = data.postcode2;
	                document.getElementById("vol_addr_bsc").value = data.address;
	                
	                document.getElementById("vol_addr_dtl").focus();
	            }
	        }).open();
	    }
		
	</script>
</head>


<h2 align="left">�ڿ������� ȸ������(�⺻����)</h2>


<body style="padding-left: 50px">
	
	<form name="step4_voCreateMemberForm" action="/volunteerService/voCreateMemberBasic.do" method="post">
		
		<!-- �ڿ������� ȸ������(�⺻����) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�̸�</td>
				<td width="550" height="8" align="left">
					<input type="text" name="vol_name" id="vol_name" size="20" maxlength="25" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">����</td>
				<td width="550" height="8" align="left">
					��
					<input type="hidden" name="vol_sex" id="vol_sex" value="1"/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�������</td>
				<td width="550" height="8" align="left">
					1990 �� 10 �� 10 �� 
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
					<input type="password" name="vol_pw_check" id="vol_pw_check" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ ��Ʈ</td>
				<td width="550" height="8" align="left">
					<select name = vol_pw_ask>
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
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�����ȣ</td>
				<td width="550" height="8" align="left">
					<input type="text" id="post1" name="post1" size="8" class="d_form mini"> - <input type="text" id="post2" name="post2" size="8" class="d_form mini">
					<input type="hidden" name="vol_zipcode" id="vol_zipcode" value=""/>
				    <input type="button" onclick="openDaumPostcode()" value="�����ȣ ã��" class="d_btn">
				</td>
			</tr>
			
			<tr>	
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�ּ�</td>
				<td width="550" height="8" align="left">
					<input type="text" id="vol_addr_bsc" name="vol_addr_bsc" class="d_form" size="45" placeholder="�ּ�">
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
					<input type="text" name="vol_email" id="vol_email" size="45" maxlength="30"/>
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
