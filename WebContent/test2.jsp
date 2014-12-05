    
<html>

<title>셀렉트 박스 테스트</title>

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


<head>

<title>다중 select box</title>

	<script> 

	// 첫번째 셀렉트 구간 배열 선언 
	var Arr1 = new Array(
			'서울특별시','부산광역시','대구광역시','인천광역시','광주광역시','대전광역시','울산광역시','세종특별자치시',
			'경기도','강원도','충청북도','충청남도','전라북도','전라남도','경상북도','경상남도','제주특별자치도');
	
	// 두번째 셀렉트 구간 배열 
	var Arr2 = new Array( 
		// Arr1 배열값, 선택된 값에 보여줄 값들 
		new Array('서울특별시','11','12','13','14') 
		,new Array('부산광역시','21','22','23','24','25') 
		,new Array('대구광역시','31','32','33','34','35','36') 
		,new Array('인천광역시','41','42','43','44','45','46','47') 
		,new Array('광주광역시','51')
		,new Array('대전광역시','51') 
		,new Array('울산광역시','51') 
		,new Array('세종특별자치시','51') 
		,new Array('경기도','51') 
		,new Array('강원도','51') 
		,new Array('충청북도','51') 
		,new Array('충청남도','51') 
		,new Array('전라북도','51') 
		,new Array('전라남도','51') 
		,new Array('경상북도','51') 
		,new Array('경상남도','51')
		,new Array('제주특별자치도','51')
	); 

	// span S1 에 넣을 셀렉트 태그구문 
	// Selected() << 선택시 호출할 function 
	var selecthtml1 = ""; 
	selecthtml1 += '<select id="select1" name="select1" onChange="Selected();">'; 
	
	for(var i = 0;i < Arr1.length ; i++){ 
	   selecthtml1 += '<option value="'+Arr1[i]+'">'+Arr1[i]+'</option>'; 
	} 
	selecthtml1 += '</select>'; 
	
	
	// select1 선택시 select2값들을 span S2 에 뿌려줌 
	function Selected(){ 
	
	   // select1 에서 선택한 값 
	   var str = document.getElementById("select1").value; 
	
	   // span S2 에 넣을 셀렉트 태그구문 
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
	
	   // selecthtml2을 span S2 에 넣어준다 
	   document.getElementById("S2").innerHTML = selecthtml2; 
	
	} 
	
	window.onload = function(){ 
	
	   // selecthtml1을 span S1 에 넣어준다 
	   document.getElementById("S1").innerHTML = selecthtml1; 
	
	   // select1 이 선택되어 있을경우 같이 보여주기 위해 
	   Selected(); 
	} 
	
	 </script>

</head>

<body>

	<span id="S1"></span>
	<span id="S2"></span>

</body>
</html>

