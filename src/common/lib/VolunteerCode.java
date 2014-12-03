package common.lib;

/*
 * 작성자 : 류재욱
 * 설  명 : 자원봉사자 회원코드 생성
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
	
	//자원봉사자 회원코드 생성 함수
	public String createVolunteerCode(){
		vol_code = temp1+temp2+temp3+temp4;
		
		return vol_code;
	}
	
}//end of class
