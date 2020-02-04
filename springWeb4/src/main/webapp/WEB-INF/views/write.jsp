<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
</script>
</head>
<body>
<h1>[ 방명록 글쓰기 ]</h1>
<form action = "write" method = "POST">
	<table>
	<tr>
		<td>이름</td><td><input type = "text" name = "name"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type = "password" name = "password"></td>
	</tr>
	<tr>
		<td>내용</td><td><textarea rows="8" cols="40" name = "contents"></textarea></td>
	</tr>

</table>
<p><input type = "submit" value = "저장"></p>
	
</form>

</body>
</html>