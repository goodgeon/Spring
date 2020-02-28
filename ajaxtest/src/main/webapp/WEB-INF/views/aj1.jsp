<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 연습</title>
<script src = "../resources/js/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		//id가 'bt1'인 버튼을 클릭하면 call1()함수 실행됨
		$('#bt1').on('click',call1);
		$('#bt2').on('click',call2);
	});

	function call1(){
		alert('call1함수 실행됨');
		$.ajax({
			url:'ajaxtest11', 
			type:'GET', 
			dataType: 'text',
			success: output1,
			error: error1
		});
	}

	function output1(){
		alert("성공");
	}

	function error1(e){
		alert(JSON.stringify(e));
	}

	function call2(){
		$.ajax({
			url: 'ajaxtest2',
			type: 'POST',
			data : {str1: 'aaaa', str2 : 'bbbb'},
			dataType : 'text',
			success : function(res){
				console.log(res);
				alert('서버에서 가져온 문자열 : ' + res);
			},
			error : function(e){
				alert('에러 메시지 : ' + JSON.stringify(e));
			}
		});
	}


</script>
</h>
<body>
<h1>[ Ajax ]</h1>
<p><input type = "button" id = "bt1" value = "서버로 요청 보내기"></p>
<p><input type = "button" id = "bt2" value = "서버로 문자열 보내기/받기"></p>

</body>
</html>