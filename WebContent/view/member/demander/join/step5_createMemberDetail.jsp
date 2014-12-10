<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>ȸ������</title>
	
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		//submit
		function goCreateDetail(){
			//�繫�ǿ���ó
			var dem_phone_1 = document.getElementById("dem_phone_1").value;
			var dem_phone_2 = document.getElementById("dem_phone_2").value;
			var dem_phone_3 = document.getElementById("dem_phone_3").value;
			document.getElementById("dem_phone").value = dem_phone_1 + "-" + dem_phone_2 + "-" + dem_phone_3;
			
			//FAX
			var dem_fax_1 = document.getElementById("dem_fax_1").value;
			var dem_fax_2 = document.getElementById("dem_fax_2").value;
			var dem_fax_3 = document.getElementById("dem_fax_3").value;
			document.getElementById("dem_fax").value = dem_fax_1 + "-" + dem_fax_2 + "-" + dem_fax_3;
			
			//����ڿ���ó
			var dem_cha_phone_1 = document.getElementById("dem_cha_phone_1").value;
			var dem_cha_phone_2 = document.getElementById("dem_cha_phone_2").value;
			var dem_cha_phone_3 = document.getElementById("dem_cha_phone_3").value;
			document.getElementById("dem_cha_phone").value = dem_cha_phone_1 + "-" + dem_cha_phone_2 + "-" + dem_cha_phone_3;
			
			step5_deCreateMemberForm.submit();
		}
		
	</script>
</head>


<h2 align="left">�ڿ������� ȸ������(���û���)</h2>



<body style="padding-left: 50px">
	
	
	<form name="step5_deCreateMemberForm" action="/volunteerService/deCreateMemberDetail.do" method="post">
		
		<!-- �ڿ������� ȸ������(���û���) -->
		<table align="left" width="700" >
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�繫�ǿ���ó</td>
				<td width="500" height="8" align="left">
					<select name = "dem_phone_1" id = "dem_phone_1">
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
					<input type="text" name="dem_phone_2" id="dem_phone_2" size="6" maxlength="4" />
					<input type="text" name="dem_phone_3" id="dem_phone_3" size="6" maxlength="4" />
					<input type="hidden" name="dem_phone" id="dem_phone" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">FAX</td>
				<td width="500" height="8" align="left">
					<input type="text" name="dem_fax_1" id="dem_fax_1" size="6" maxlength="4" />
					<input type="text" name="dem_fax_2" id="dem_fax_2" size="6" maxlength="4" />
					<input type="text" name="dem_fax_3" id="dem_fax_3" size="6" maxlength="4" />
					<input type="hidden" name="dem_fax" id="dem_fax" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">����ڿ���ó</td>
				<td width="500" height="8" align="left">
					<select name="dem_cha_phone_1" id="dem_cha_phone_1">
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
					<input type="text" name="dem_cha_phone_2" id="dem_cha_phone_2" size="6" maxlength="4" />
					<input type="text" name="dem_cha_phone_3" id="dem_cha_phone_3" size="6" maxlength="4" />
					<input type="hidden" name="dem_cha_phone" id="dem_cha_phone" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�ü�����</td>
				<td width="500" height="8" align="left">
					<select name="dem_fac_type" id="dem_fac_type">
						<option value="0" >�����ϼ���</option>
						<option value="1" >�ü�����1</option>
						<option value="2" >�ü�����2</option>
						<option value="3" >�ü�����3</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�����ο�</td>
				<td width="500" height="8" align="left">
					<input type="text" name="dem_max_people" id="dem_max_people" size="6" maxlength="4" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">��������</td>
				<td width="500" height="8" align="left">
					<select name="dem_vol_type" id="dem_vol_type">
						<option value="0" >�����ϼ���</option>
						<option value="1" >��������1</option>
						<option value="2" >��������2</option>
						<option value="3" >��������3</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td height="8"colspan="2" align="center">
					<input type="hidden" name="demander_id" id="demander_id" value="${demander_id}"/>
					<input type="button" name="save" id="save" value="����" onclick="goCreateDetail()"/>
				</td>
			</tr>
			
		</table>
		<!-- .//ȸ������ �Է��� ���̺� -->
		
	</form>
	
</body>
</html>
