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
			alert("����");
			
			//���û����Է� or ����
			document.getElementById("confrimType").value = type;
			
			//�����ȣ �������� ���� = ���ڸ�-���ڸ�
			document.getElementById("dem_zipcode").value = document.getElementById("post1").value + "-" +  document.getElementById("post2").value;
			step4_deCreateMemberForm.submit();
		}
		
		//DAUM �ּ� API
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
					<input type="password" name="dem_pw_check" id="dem_pw_check" size="30" maxlength="20" />
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ ��Ʈ</td>
				<td width="550" height="8" align="left">
					<select name = "dem_pw_ask">
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
					<input type="text" name="dem_resnum" id="dem_resnum" size="30" maxlength="20" />
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
					<input type="text" name="dem_email" id="dem_email" size="45" maxlength="30"/>
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
