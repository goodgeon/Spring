<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery 연습</title>

<!-- 
http://localhost:8888/ajax/jq/jq1
http://localhost:8888/ajax/resources/jquery-3.4.1.min.js
-->
<script src="../resources/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$('*').css('color','#7FFFD4');
	$('p').css('color','CornflowerBlue');
	$('#blueText').css('color','blue');
	$('.redText').css('color','red');
	$('div.redText > p').css('color','yellow');
	$('input[type="password"]').css('background-color','yellow');

	$('img[src="../resources/image/fb.png"]').css('border', '2px solid red');
})
</script>
</head>
<body>
<h1>[ jQuery ]</h1>
<p>p태그 사용한 문자열</p>
<p id = "blueText">id가 있는 문자열</p>
<p class = "redText">class가 있는 문자열</p>

<div class = "redText">
	<p>div태그 내에 class</p>
</div>

<form>
ID <input type = "text"><br>
PW <input type = "password"><br>
	<input type = "submit" value = "login">
</form>

<img src="../resources/image/fb.png">
<img src="../resources/image/ins.png">



</body>
</html>