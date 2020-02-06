<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "../resources/css/table.css">
<style>
	.td-left{
		width : 80px;
	}
	td,tr{
		padding : 5px;
	}
</style>
</head>
<body>
<h1>[ 글쓰기 ]</h1>
<form action = "write" method = "POST">
	<table>
		<tr>
			<td class = "td-left">제목</td>
			<td class = "td-right"><input type = "text" name = "title" style = "width : 400px" ></td>
		</tr>
		<tr style = "width : 50px">
			<td class = "td-left" style = "width : 50px">내용</td>
			<td class = "td-right" style = "padding : 5px;"><textarea name = "contents" rows="10" cols="54"></textarea></td>
		</tr>
		<tr>
			<td class = "td-left">파일 첨부</td>
			<td class = "td-right"><input type = "button" value = "파일 선택"></td>
		</tr>
	</table>
	<div style = "text-align : center;">
		<input type = "submit" value = "저장">
	</div>
	
</form>

</body>
</html>