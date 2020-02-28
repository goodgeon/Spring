<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaScript 연습</title>
<script>
function goTest(){
	history.go(-1);
} 

function closeTest(){
	this.close();
}
</script>
</head>
<body>
<h1>[ JavaScript 두번째 페이지 ]</h1>
<p><a href = "javascript:goTest()">뒤로</a></p>
<p><a href = "javascript:closeTest()">현재 창 닫기</a></p>
</body>
</html>