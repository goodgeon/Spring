<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>[ 회원 가입 ]</h1>
<form id = "joinForm" action = "join2" method = "POST">
	<p>ID <input type = "text" name = "id"> </p>
	<p>PW <input type = "password" name = "password"> </p>
	<p>이름 <input type = "text" name = "name"> </p>
	<p>전화번호 <input type = "text" name = "phone"> </p>
	<p><input type = "submit" value = "가입하기"> </p>
</form>

</body>
</html>