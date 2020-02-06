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
	
	div{
		margin-top : 10px;
		text-align : center;
	}
</style>
</head>
<body>
<h1>[ 글 수정 ]</h1>
<form action = "updateBoard" method = "POST">
	<table>
		<tr>
			<td class = "td-left">제목</td>
			<td class = "td-right"><input type = "text" name = "title" value="${board.title}" style = "width : 400px" ></td>
		</tr>
		<tr style = "width : 50px">
			<td class = "td-left" style = "width : 50px">내용</td>
			<td class = "td-right" style = "padding : 5px;"><textarea name = "contents" rows="10" cols="54">${board.contents}</textarea></td>
		</tr>
		<tr>
			<td class = "td-left">파일 첨부</td>
			<td class = "td-right"><input type = "button" value = "파일 선택"></td>
		</tr>
	</table>
	<input type = "hidden" name = "boardNum" value = "${board.boardNum}">
	<div>
		<input type = "submit" value = "수정">
	</div>
</form>

</body>
</html>