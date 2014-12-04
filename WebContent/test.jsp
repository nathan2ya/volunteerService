<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    
    
<script language="JavaScript">

	var num_of_city = 18; //select box 1차선택(도/시), 첫번째 포함
	var option_array = new Array(num_of_city); //select box 2차선택(군/구)
	
	option_array[0] = new Array("------------"); //첫번째
	option_array[1] = new Array("-- 선택하세요 --", //서울특별시
					"종로구","중구","용산구","성동구","광진구","동대문구","중랑구","성북구","강북구","도봉구","노원구","은평구","서대문구","마포구",
					"양천구","강서구","구로구","금천구","영등포구","동작구","관악구","서초구","강남구","송파구","강동구");
	option_array[2] = new Array("-- 선택하세요 --", //부산광역시
					"중구","서구","동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구","금정구","강서구","연제구","수영구","사상구","기장군");
	option_array[3] = new Array("-- 선택하세요 --", //대구광역시
			"1차의3번째",
			"1차의3번째");
	option_array[4] = new Array("-- 선택하세요 --", //인천광역시
			"1차의3번째",
			"1차의3번째");
	option_array[5] = new Array("-- 선택하세요 --", //광주광역시
			"1차의3번째",
			"1차의3번째");
	option_array[6] = new Array("-- 선택하세요 --", //대전광역시
			"1차의3번째",
			"1차의3번째");
	option_array[7] = new Array("-- 선택하세요 --", //울산광역시
			"1차의3번째",
			"1차의3번째");
	option_array[8] = new Array("-- 선택하세요 --", //세종특별자치시
			"1차의3번째",
			"1차의3번째");
	option_array[9] = new Array("-- 선택하세요 --", //경기도
			"1차의3번째",
			"1차의3번째");
	option_array[10] = new Array("-- 선택하세요 --", //강원도
			"1차의3번째",
			"1차의3번째");
	option_array[11] = new Array("-- 선택하세요 --", //충청북도
			"1차의3번째",
			"1차의3번째");
	option_array[12] = new Array("-- 선택하세요 --", //충청남도
			"1차의3번째",
			"1차의3번째");
	option_array[13] = new Array("-- 선택하세요 --", //전라북도
			"1차의3번째",
			"1차의3번째");
	option_array[14] = new Array("-- 선택하세요 --", //전라남도
			"1차의3번째",
			"1차의3번째");
	option_array[15] = new Array("-- 선택하세요 --", //경상북도
			"1차의3번째",
			"1차의3번째");
	option_array[16] = new Array("-- 선택하세요 --", //경상남도
			"1차의3번째",
			"1차의3번째");
	option_array[17] = new Array("-- 선택하세요 --", //제주특별자치도
			"1차의3번째",
			"1차의3번째");
	
	
	
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
	    <option>--도/시 선택--</option>
	    <option>서울특별시</option>
		<option>부산광역시</option>
		<option>대구광역시</option>
		<option>인천광역시</option>
		<option>광주광역시</option>
		<option>대전광역시</option>
		<option>울산광역시</option>
		<option>세종특별자치시</option>
		<option>경기도</option>
		<option>강원도</option>
		<option>충청북도</option>
		<option>충청남도</option>
		<option>전라북도</option>
		<option>전라남도</option>
		<option>경상북도</option>
		<option>경상남도</option>
		<option>제주특별자치도</option>
    </select>
	
    <select name="select_2" onChange="switch_text();">
	    <option>--군/구 선택--</option>
	    <option> </option>
	    <option> </option>
    </select>
</form>