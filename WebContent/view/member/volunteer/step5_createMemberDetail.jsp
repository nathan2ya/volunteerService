<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>ȸ������</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		//����
		function goCreateDetail(){
			step5_createMemberDetail.submit();
		}
		
	</script>
</head>


<h2 align="left">�ڿ������� ȸ������(���û���)</h2>



vol_hope_center_code	�����������(�ҼӼ���)
vol_hope_plc_1	�����������(����1)
vol_hope_plc_2	�����������(����2)
vol_hope_sev_1	����о�1
vol_hope_sev_2	����о�2
vol_hope_sev_3	����о�3
vol_job	����
vol_hope_date	�������
vol_hope_str_time	��� ���� �ð�
vol_hope_end_time	��� ���� �ð�
vol_spec_dtl	���������о�
vol_group_yn	��ü���Կ���



<body style="padding-left: 50px">
	
	<form name="step5_createMemberDetail" action="/volunteerService/voCreateMemberBasic.do" method="post">
		
		<!-- �ڿ������� ȸ������(���û���) -->
		<table border="0" align="left" width="700" >
		
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">�޴�����ȣ</td>
				<td width="550" height="8" align="left">
					<select name = "vol_phone_1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">������ȭ��ȣ</td>
				<td width="550" height="8" align="left">
					<select name = "vol_phone_2">
						<option value="02">02</option>
						<option value="031">031</option>
						<option value="032">032</option>
						<option value="033">033</option>
						<option value="041">041</option>
						<option value="042">042</option>
						<option value="043">043</option>
						<option value="044">044</option>
						<option value="051">051</option>
						<option value="052">052</option>
						<option value="053">053</option>
						<option value="054">054</option>
						<option value="055">055</option>
						<option value="061">061</option>
						<option value="062">062</option>
						<option value="063">063</option>
						<option value="064">064</option>
						<option value="0502">0502</option>
						<option value="0503">0503</option>
						<option value="0504">0504</option>
						<option value="0505">0505</option>
						<option value="0506">0506</option>
						<option value="0507">0507</option>
						<option value="070">070</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
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
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw" id="vol_pw" size="30" maxlength="20" />
					<br/>
				</td>
			</tr>
			
			<tr>
				<td width="150" height="8" align="right" bgcolor="#D5D5D5">��й�ȣ Ȯ��</td>
				<td width="550" height="8" align="left">
					<input type="password" name="vol_pw_check" id="vol_pw_check" size="30" maxlength="20" />
					<br/>
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
					<input type="button" name="save" id="save" value="����" onclick="goCreateDetail()"/>
				</td>
			</tr>
			
		</table>
		<!-- .//ȸ������ �Է��� ���̺� -->
		
	</form>
	
</body>
</html>
