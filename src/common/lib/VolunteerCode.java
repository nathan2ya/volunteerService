package common.lib;

/*
 * �ۼ��� : �����
 * ��  �� : �ڿ������� ȸ���ڵ� ����
*/

public class VolunteerCode {
	
	private String temp1;
	private String temp2;
	private String temp3;
	private String temp4;
	
	private String vol_code;
	
	public VolunteerCode(String temp1, String temp2, String temp3, String temp4){
		this.temp1 = temp1;
		this.temp2 = temp2;
		this.temp3 = temp3;
		this.temp4 = temp4;
	}
	
	//�ڿ������� ȸ���ڵ� ���� �Լ�
	public String createVolunteerCode(){
		vol_code = temp1+temp2+temp3+temp4;
		
		return vol_code;
	}
	
}//end of class
