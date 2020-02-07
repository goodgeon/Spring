<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		text-align : center;
	}
</style>

<script>
	function checkID(userID,boardID,boardNum,menu){
		if(userID != boardID){
			alert("권한이 없습니다");
			return false;
		}
		
		if(menu == 1){
			if(confirm('삭제하시겠습니까?')){
				location.href = "deleteBoard?boardNum="+boardNum;
			}
			
		}else if(menu == 2){
			location.href = "updateBoard?boardNum="+boardNum;
		}
	}
</script>
</head>
<body>
<h1>[ 게시판 글읽기 ]</h1>
<table style = "width : 600px;">
	<tr>
		<td class = "td-left">작성자</td>
		<td class = "td-right">${board.id}</td>
	</tr>
	<tr>
		<td class = "td-left">작성일</td>
		<td class = "td-right">${board.inputdate}</td>
	</tr>
	<tr>
		<td class = "td-left">조회수</td>
		<td class = "td-right">${board.hits}</td>
	</tr>
	<tr>
		<td class = "td-left">제목</td>
		<td class = "td-right">${board.title}</td>
	</tr>
	<tr>
		<td class = "td-left">내용</td>
		<td class = "td-right" style="white-space:pre;">${board.contents}</td>
	</tr>
	<tr>
		<td class = "td-left">파일첨부</td>
		<td class = "td-right">${board.savedFile}</td>
	</tr>

</table>
<div>
<span><a href = "#" onclick = "checkID('${sessionScope.member.id}','${board.id}','${board.boardNum }',1)">삭제</a></span>
<span><a href=  "#" onclick = "checkID('${sessionScope.member.id}','${board.id}','${board.boardNum }',2)">수정</a></span>
<span><a href = "list?currentPage=1">목록보기</a></span>
</div>
<form action = "reply" method = "POST">
	<div>
	리플 내용 <input type = "text" name = "text"style = "width : 400px; margin-top: 20px;">
	<input type = "hidden" name = "boardNum" value = "${board.boardNum}">
	<input type = "submit" value = "확인">
	</div>
</form>

<div>
	<table>
		<c:forEach var="reply" items="${repList}">
			<tr>
				<td class = "td-left">${reply.id}</td>
				<td class = "td-right" style = "width : 400px;">${reply.text}</td>
				<td></td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>