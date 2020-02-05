<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/table.css">
</head>
<body>
<h1>[ 게시판 ]</h1>
<div><span style = "margin : 0 10px 0 450px">전체 : ${list.size()}</span><span style = "margin : 0 10px 0 500px"><input type = "button" value = "글쓰기"></span></div>
<table style = "width : 600px;">
	<tr>
		<td class = "td-left">번호</td>
		<td class = "td-left">제목</td>
		<td class = "td-left">작성자</td>
		<td class = "td-left">조회수</td> 
		<td class = "td-left">등록일</td>
	</tr>
		<c:forEach var = "i" items = "${list}">
		<tr>
			<td class = "td-right">${i.boardNum}</td>
			<td class = "td-right" style = "width : 200px"><a href = "board?boardNum=${i.boardNum}">${i.title}</a></td>
			<td class = "td-right">${i.id}</td>
			<td class = "td-right">${i.hits}</td>
			<td class = "td-right">${i.inputdate}</td>
		</tr>
		</c:forEach>
</table>

<div style = "text-align : center;  position : absolute; left : 898px; bottom : 400px;">

<img src = "../resources/img/left.png" width = "20px" height = "20px">
<c:forEach var = "pageNum" begin = "${paging.rangeStart }" end = "${paging.rangeEnd }">
	<a href = "list?currentPage=${pageNum}">${pageNum}</a>
</c:forEach>
<img src = "../resources/img/right.png" width = "20px" height = "20px">
</div>

</body>
</html>