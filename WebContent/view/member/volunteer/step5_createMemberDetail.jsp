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
			alert("select_2 �׽�Ʈ����");
			
			var index = $("#select_2 option").index($("#select_2 option:selected"));
			alert(index);
			
			//üũ�� �������
			var days = "";
			if(document.getElementById("mon").checked){ days += "1"; }
			if(document.getElementById("tue").checked){ days += "2"; }
			if(document.getElementById("wen").checked){ days += "3"; }
			if(document.getElementById("thu").checked){ days += "4"; }
			if(document.getElementById("fri").checked){ days += "5"; }
			if(document.getElementById("sat").checked){ days += "6"; }
			if(document.getElementById("sun").checked){ days += "7"; }
			document.getElementById("vol_hope_date").value = days.split("", days.length);
			
			//step5_createMemberDetail.submit();
		}
		
		
		// ù��° ����Ʈ ���� �迭 ���� 
		var Arr1 = new Array(
				"��/�� ����","����Ư����","�λ걤����","�뱸������","��õ������","���ֱ�����","����������","��걤����","����Ư����ġ��",
				"��⵵","������","��û�ϵ�","��û����","����ϵ�","���󳲵�","���ϵ�","��󳲵�","����Ư����ġ��");
		
		// �ι�° ����Ʈ ���� �迭 
		var Arr2 = new Array( 
			// Arr1 �迭��, ���õ� ���� ������ ���� 
			new Array("��/�� ����","��/�� ����")
			,new Array("����Ư����","��ü","���α�","�߱�","��걸","������","������","���빮��","�߶���","���ϱ�","���ϱ�","������","�����","����",
					  "���빮��","������","��õ��","������","���α�","��õ��","��������","���۱�","���Ǳ�","���ʱ�","������","���ı�","������")
			,new Array("�λ걤����","��ü","�߱�","����","����","������","�λ�����","������","����","�ϱ�","�ؿ�뱸","���ϱ�","������","������","������","������","���","���屺")
			,new Array("�뱸������","��ü","�߱�","����","����","����","�ϱ�","������","�޼���","�޼���")
			,new Array("��õ������","��ü","41","42","43","44","45","46","47") 
			,new Array("���ֱ�����","51")
			,new Array("����������","61") 
			,new Array("��걤����","71") 
			,new Array("����Ư����ġ��","81") 
			,new Array("��⵵","91") 
			,new Array("������","101") 
			,new Array("��û�ϵ�","111") 
			,new Array("��û����","121") 
			,new Array("����ϵ�","131") 
			,new Array("���󳲵�","141") 
			,new Array("���ϵ�","151") 
			,new Array("��󳲵�","161")
			,new Array("����Ư����ġ��","171")
		); 
		
	
		// span S1 �� ���� ����Ʈ �±ױ��� 
		// Selected() << ���ý� ȣ���� function 
		var selecthtml1 = ""; 
		selecthtml1 += '<select id="select1" name="select1" onChange="Selected();">'; 
		
		for(var i = 0;i < Arr1.length ; i++){ 
		   selecthtml1 += '<option value="'+Arr1[i]+'">'+Arr1[i]+'</option>'; 
		} 
		selecthtml1 += '</select>'; 
		
		
		// select1 ���ý� select2������ span S2 �� �ѷ��� 
		function Selected(){ 
		
		   // select1 ���� ������ �� 
		   var str = document.getElementById("select1").value; 
		
		   // span S2 �� ���� ����Ʈ �±ױ��� 
		   var selecthtml2 = ""; 
		   selecthtml2 += '<select id="select2" name="select2">'; 
		
		   for(var i = 0;i < Arr2.length ; i++){ 
		      if(Arr2[i][0] == str ){ 
		         for(var j = 1 ; j < Arr2[i].length; j++){ 
		            selecthtml2 += '<option value="'+Arr2[i][j]+'">'+Arr2[i][j]+'</option>'; 
		         } 
		      } 
		   } 
		
		   selecthtml2 += '</select>'; 
		
		   // selecthtml2�� span S2 �� �־��ش� 
		   document.getElementById("select_2").innerHTML = selecthtml2; 
		
		} 
		
		window.onload = function(){ 
		
		   // selecthtml1�� span S1 �� �־��ش� 
		   document.getElementById("select_1").innerHTML = selecthtml1; 
		
		   // select1 �� ���õǾ� ������� ���� �����ֱ� ���� 
		   Selected(); 
		} 
		
		//�������
		
		
	</script>
</head>


<h2 align="left">�ڿ������� ȸ������(���û���)</h2>



<body style="padding-left: 50px">
	
	<form name="step5_createMemberDetail" action="/volunteerService/voCreateMemberDetail.do" method="post">
		
		<!-- �ڿ������� ȸ������(���û���) -->
		<table border="0" align="left" width="700" >
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�޴�����ȣ</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_1_1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input type="text" name="vol_phone_1_2" id="vol_phone_1_2" size="6" maxlength="4" />
					<input type="text" name="vol_phone_1_3" id="vol_phone_1_3" size="6" maxlength="4" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">������ȭ��ȣ</td>
				<td width="500" height="8" align="left">
					<select name = "vol_phone_2_1">
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
					<input type="text" name="vol_phone_2_2" id="vol_phone_2_2" size="6" maxlength="4" />
					<input type="text" name="vol_phone_2_3" id="vol_phone_2_3" size="6" maxlength="4" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�����������(�ҼӼ���)</td>
				<td width="500" height="8" align="left">
					<span id="select_1"></span>
					<span id="select_2"></span>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�����������(����1)</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_plc_1 // �����������(�ҼӼ���) �ʵ尡 �Ϸ�Ǹ� ���߿���
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�����������(����2)</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_plc_2 // �����������(�ҼӼ���) �ʵ尡 �Ϸ�Ǹ� ���߿���
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">����о�1</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_sev_1	
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">����о�2</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_sev_2	
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">����о�3</td>
				<td width="500" height="8" align="left">
					//TODO vol_hope_sev_3
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">����</td>
				<td width="500" height="8" align="left">
					<select name="vol_job" id="vol_job">
						<option value="0" >�����ϼ���</option>
						<option value="1" >������</option>
						<option value="2" >�繫��</option>
						<option value="3" >������</option>
						<option value="4" >������</option>
						<option value="5" >�ڿ���</option>
						<option value="6" >������</option>
						<option value="7" >����</option>
						<option value="8" >�ֺ�</option>
						<option value="9" >����</option>
						<option value="10" >��Ÿ</option>
						<option value="11" >�ʵ��л�</option>
						<option value="12" >���л�</option>
						<option value="13" >����л�</option>
						<option value="14" >����(��)��</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�������</td>
				<td width="500" height="8" align="left">
					<input type="checkbox" id="mon" name="mon" value="1" /> <label for="mon">��</label>
					<input type="checkbox" id="tue" name="tue" value="2" /> <label for="tue">ȭ</label>
					<input type="checkbox" id="wen" name="wen" value="3" /> <label for="wen">��</label>
					<input type="checkbox" id="thu" name="thu" value="4" /> <label for="thu">��</label>
					<input type="checkbox" id="fri" name="fri" value="5" /> <label for="fri">��</label>
					<input type="checkbox" id="sat" name="sat" value="6" /> <label for="sat">��</label>
					<input type="checkbox" id="sun" name="sun" value="7" /> <label for="sun">��</label>
					<input type="hidden" name="vol_hope_date" id="vol_hope_date" value=""/>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">��� ���� �ð�</td>
				<td width="500" height="8" align="left">
					<select name="vol_hope_str_time" id="vol_hope_str_time">
						<option value="99" selected>����</option>
						<option value="0">00</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
					</select>
					~
					<select name="vol_hope_end_time" id="vol_hope_end_time">
						<option value="99" selected>����</option>
						<option value="0">00</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">���������о�</td>
				<td width="500" height="8" align="left">
					<input type="text" name="vol_spec_dtl" id="vol_spec_dtl" size="20" maxlength="50" />
				</td>
			</tr>
			
			<tr>
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">��ü���Կ���</td>
				<td width="500" height="8" align="left">
					<input type="radio" name="vol_group_yn" id="vol_group_yn" value="Y" /> <label for="join_check">����</label>
					<input type="radio" name="vol_group_yn" id="vol_group_yn" value="N" /> <label for="not_join_check">�̰���</label>
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
