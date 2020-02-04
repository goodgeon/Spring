<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	안녕하세요
</h1>

<a href="http://10.10.16.145:8888/web1/join">가입화면으로 이동</a>
<a href = "/web1/join">가입화면으로 이동</a>

<!--상대경로  -->
<a href = "./join">가입화면으로 이동</a>
<a href = "join">가입화면으로 이동1</a>

<a href = "./login">로그인화면으로 이동</a>
<a href = "read">기사 읽기</a>
<p><a href = "param1">Form의 사용자 입력 데이터 서버로 전달</a></p>
<p><a href = "param3">서버로부터 사용자로 데이터 전달</a></p>



</body>
</html>
