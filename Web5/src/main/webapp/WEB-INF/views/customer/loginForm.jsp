<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/table.css">
</head>
<body>
<h1>[ 로그인 ]</h1>

<form action = "login" method = "POST">
	<table>
	<tr>
		<td class = "td-left">ID</td>
		<td class = "td-right"><input type = "text" name = "id"></td>
	</tr>
	<tr>
		<td class = "td-left">Password</td>
		<td class = "td-right"><input type = "password" name = "password"></td>
	</tr>
	</table>
	
	<div style = "text-align : center">
		<input type = "submit" value = "login">
	</div>
</form>

</body>
</html>