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
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�޴�����ȣ</td>
				<td width="500" height="8" align="left">
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
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">������ȭ��ȣ</td>
				<td width="500" height="8" align="left">
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
				<td width="200" height="8" align="right" bgcolor="#D5D5D5">�����������(�ҼӼ���)</td>
				<td width="500" height="8" align="left">
					<select name="select_1" onChange="switch_select();">
					    <option>--��/�� ����--</option>
					    <option>����Ư����</option>
						<option>�λ걤����</option>
						<option>�뱸������</option>
						<option>��õ������</option>
						<option>���ֱ�����</option>
						<option>����������</option>
						<option>��걤����</option>
						<option>����Ư����ġ��</option>
						<option>��⵵</option>
						<option>������</option>
						<option>��û�ϵ�</option>
						<option>��û����</option>
						<option>����ϵ�</option>
						<option>���󳲵�</option>
						<option>���ϵ�</option>
						<option>��󳲵�</option>
						<option>����Ư����ġ��</option>
				    </select>
					
				    <select name="select_2" onChange="switch_text();">
					    <option>--��/�� ����--</option>
				    </select>
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
