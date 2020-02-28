<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
function test1(){
	alert(location.href);
	location.href='js2';
}

function test2(){
	window.open('js2','win','top=200,left=400,width=400,height=300,location=yes');
}

function test3(){
	if(confirm("dd")){
		location.href="js2";
	}
}

function test4(){
	setTimeout(function(){
		location.href="js2"},3000);
	
}

</script>
<title>JavaScript 연습</title>
</head>
<body>
<h1>[ JavaScript ]</h1>

<p><a href = "js2">js2 보기</a></p>
<p><a href = "javascript:test1()">js2 보기 (location 이용)</a></p>
<p><a href = "javascript:test2()">js2 보기 (새창 열기)</a></p>
<p><a href = "javascript:test3()">"예" 누르면 이동</a></p>
<p><a href = "javascript:test4()">3초 뒤 이동</a></p>
</body>
</html>