<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "../resources/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$('#bt1').on('click', formSubmit1);
	$('#bt2').on('click', formSubmit2);
	$('#bt3').on('click', jsontest1);
	$('#bt4').on('click', jsontest2);
});

function formSubmit1(){
	var n = $('#name').val();
	var a = $('#age').val();
	var p = $('#phone').val();

	//입력 값들의 유효성검사, 이름은 2ㅁㄴ자 이ㅏㅇ, 20ㅈ
	

	$.ajax({
	url : 'insert1',
	type : 'post',
	data : {name:n, age:a, phone:p},
	success : function(){ 
		alert("저장되었습니다.");
		$('#name').val('');
		$('#age').val('');
		$('#phone').val('');
		$('#name').focus();
		},
	error : function() {alert("저장 실패");}
	});
}

function formSubmit2(){
	var n = $('#name2').val();
	var a = $('#age2').val();
	var p = $('#phone2').val();

	//입력 값들의 유효성검사, 이름은 2ㅁㄴ자 이ㅏㅇ, 20ㅈ
	

	$.ajax({
	url : 'insert2',
	type : 'post',
	data : {name:n, age:a, phone:p},
	success : function(){ 
		alert("저장되었습니다.");
		$('#name2').val('');
		$('#age2').val('');
		$('#phone2').val('');
		$('#name2').focus();
		},
	error : function() {alert("저장 실패");}
	});
}

function jsontest1(){
	$.ajax({
		url: 'jsontest',
		type : 'get',
		dataType : 'json',
		success : function(ob){
			$('#output1').html(ob.age); //id가 'output1'인 div태그 내에 출력
		},
		error : function(){
			alert('에러');
		}
	})
}

function jsontest2(){
	$.ajax({
		url: 'jsontest',
		type : 'get',
		dataType : 'text',
		success : function(ob){
			$('#output1').html(ob); //id가 'output1'인 div태그 내에 출력
		},
		error : function(){
			alert('에러');
		}
	})
}

</script>
</head>
<body>
<h1>[ Ajax ]</h1>
<p>1. 서버로 각각의 parameter를 전달</p>
<form id = "writeForm1">
이름 <input type = "text" id = "name"><br>
나이 <input type = "text" id = "age"><br>
전화 <input type = "text" id = "phone"><br>
	<input type = "button" id = "bt1" value = "저장"><br>	
</form>


<p>2. 서버로 모든 데이터를 vo로 전달</p>
<form id = "writeForm2">
이름 <input type = "text" id = "name2"><br>
나이 <input type = "text" id = "age2"><br>
전화 <input type = "text" id = "phone2"><br>
	<input type = "button" id = "bt2" value = "저장"><br>	
</form>

<p>3. 서버로부터 객체 받기</p>
<p><input type = "button" id = "bt3" value = "객체를 문자열로 받기"></p>
	<div id = "output1"></div>
	
<p><input type = "button" id = "bt4" value = "객체를 JSON으로 받기"></p>
	<div id  = "output2"></div>
</body>
</html>