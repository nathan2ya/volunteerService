<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    
<script language="JavaScript">

	var num_of_city = 18; //select box 1������(��/��), ù��° ����
	var option_array = new Array(num_of_city); //select box 2������(��/��)
	
	option_array[0] = new Array("------------"); //ù��°
	option_array[1] = new Array("-- �����ϼ��� --", //����Ư����
					"���α�","�߱�","��걸","������","������","���빮��","�߶���","���ϱ�","���ϱ�","������","�����","����","���빮��","������",
					"��õ��","������","���α�","��õ��","��������","���۱�","���Ǳ�","���ʱ�","������","���ı�","������");
	option_array[2] = new Array("-- �����ϼ��� --", //�λ걤����
					"�߱�","����","����","������","�λ�����","������","����","�ϱ�","�ؿ�뱸","���ϱ�","������","������","������","������","���","���屺");
	option_array[3] = new Array("-- �����ϼ��� --", //�뱸������
			"1����3��°",
			"1����3��°");
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
	
	
	
	function switch_select() {
	  for (loop = window.document.form_1.select_2.options.length-1; loop > 0; loop--) {
	    window.document.form_1.select_2.options[loop] = null;
	  }
	  
	  for (loop = 0; loop < option_array[window.document.form_1.select_1.selectedIndex].length; loop++)   {
	    window.document.form_1.select_2.options[loop] = new Option(option_array[window.document.form_1.select_1.selectedIndex][loop]);
	  }
	  window.document.form_1.select_2.selectedIndex = 0;
	}
	  
 	
</script>




<form name="form_1" onSubmit="return false;">

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
	    <option> </option>
	    <option> </option>
    </select>
</form>