<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
	<title>ȸ������</title>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.js"></script>
	<script type="text/javascript">
		
		//submit
		function goCreateDetail(){
						
			//üũ�� �������
			var days = "";
			if(document.getElementById("mon").checked){ days += '1'; }
			if(document.getElementById("tue").checked){ days += '2'; }
			if(document.getElementById("wen").checked){ days += '3'; }
			if(document.getElementById("thu").checked){ days += '4'; }
			if(document.getElementById("fri").checked){ days += '5'; }
			if(document.getElementById("sat").checked){ days += '6'; }
			if(document.getElementById("sun").checked){ days += '7'; }
			document.getElementById("vol_hope_date").value = days.split("", days.length);
			
			//step5_createMemberDetail.submit();
		}
		
		//�ּ� ����
		var num_of_city = 18; //select box 1������(��/��), ù��° ����
		var option_array = new Array(num_of_city); //select box 2������(��/��)
		
		option_array[0] = new Array("------------"); //ù��°
		option_array[1] = new Array("-- �����ϼ��� --", //����Ư����
						"���α�","�߱�","��걸","������","������","���빮��","�߶���","���ϱ�","���ϱ�","������","�����","����","���빮��","������",
						"��õ��","������","���α�","��õ��","��������","���۱�","���Ǳ�","���ʱ�","������","���ı�","������");
		option_array[2] = new Array("-- �����ϼ��� --", //�λ걤����
						"�߱�","����","����","������","�λ�����","������","����","�ϱ�","�ؿ�뱸","���ϱ�","������","������","������","������","���","���屺");
		option_array[3] = new Array("-- �����ϼ��� --", //�뱸������
						"�߱�","����","����","����","�ϱ�","������","�޼���","�޼���");
		option_array[4] = new Array("-- �����ϼ��� --", //��õ������
				"1����3��°",
				"1����3��°");
		option_array[5] = new Array("-- �����ϼ��� --", //���ֱ�����
				"1����3��°",
				"1����3��°");
		option_array[6] = new Array("-- �����ϼ��� --", //����������
				"1����3��°",
				"1����3��°");
		option_array[7] = new Array("-- �����ϼ��� --", //��걤����
				"1����3��°",
				"1����3��°");
		option_array[8] = new Array("-- �����ϼ��� --", //����Ư����ġ��
				"1����3��°",
				"1����3��°");
		option_array[9] = new Array("-- �����ϼ��� --", //��⵵
				"1����3��°",
				"1����3��°");
		option_array[10] = new Array("-- �����ϼ��� --", //������
				"1����3��°",
				"1����3��°");
		option_array[11] = new Array("-- �����ϼ��� --", //��û�ϵ�
				"1����3��°",
				"1����3��°");
		option_array[12] = new Array("-- �����ϼ��� --", //��û����
				"1����3��°",
				"1����3��°");
		option_array[13] = new Array("-- �����ϼ��� --", //����ϵ�
				"1����3��°",
				"1����3��°");
		option_array[14] = new Array("-- �����ϼ��� --", //���󳲵�
				"1����3��°",
				"1����3��°");
		option_array[15] = new Array("-- �����ϼ��� --", //���ϵ�
				"1����3��°",
				"1����3��°");
		option_array[16] = new Array("-- �����ϼ��� --", //��󳲵�
				"1����3��°",
				"1����3��°");
		option_array[17] = new Array("-- �����ϼ��� --", //����Ư����ġ��
				"1����3��°",
				"1����3��°");
		
		
		//�ּҼ��� select box ��Ʈ��
		function switch_select() {
			for (loop = window.document.step5_createMemberDetail.select_2.options.length-1; loop > 0; loop--) {
				window.document.step5_createMemberDetail.select_2.options[loop] = null;
			}
			for (loop = 0; loop < option_array[window.document.step5_createMemberDetail.select_1.selectedIndex].length; loop++)   {
				window.document.step5_createMemberDetail.select_2.options[loop] = new Option(option_array[window.document.step5_createMemberDetail.select_1.selectedIndex][loop]);
			}
			window.document.step5_createMemberDetail.select_2.selectedIndex = 0;
		}
		
		function set_orig() {
			window.document.form_1.select_1.selectedIndex = 0;
			window.document.form_1.select_2.selectedIndex = 0;
		}
		window.onload=set_orig
		
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
					<select name="select_1" onChange="switch_select();">
					    <option value="0">--��/�� ����--</option>
					    <option value="1">����Ư����</option>
						<option value="2">�λ걤����</option>
						<option value="3">�뱸������</option>
						<option value="4">��õ������</option>
						<option value="5">���ֱ�����</option>
						<option value="6">����������</option>
						<option value="7">��걤����</option>
						<option value="8">����Ư����ġ��</option>
						<option value="9">��⵵</option>
						<option value="10">������</option>
						<option value="11">��û�ϵ�</option>
						<option value="12">��û����</option>
						<option value="13">����ϵ�</option>
						<option value="14">���󳲵�</option>
						<option value="15">���ϵ�</option>
						<option value="16">��󳲵�</option>
						<option value="17">����Ư����ġ��</option>
				    </select>
					
				    <select name="select_2" onChange="switch_text();">
					    <option>--��/�� ����--</option>
				    </select>
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
