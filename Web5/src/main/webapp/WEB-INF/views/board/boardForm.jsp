<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/table.css">
<script>
	function writeForm(){
		location.href = "write";
	}
</script>
</head>
<body>
<h1>[ 게시판 ]</h1>
<div><span style = "margin : 0 10px 0 450px">전체 : ${entireSize}</span><span style = "margin : 0 10px 0 500px"><input type = "button" value = "글쓰기" onclick = "writeForm()"></span></div>
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
			<td class = "td-right" style = "width : 200px"><a href = "read?boardNum=${i.boardNum}">${i.title}</a></td>
			<td class = "td-right">${i.id}</td>
			<td class = "td-right">${i.hits}</td>
			<td class = "td-right">${i.inputdate}</td>
		</tr>
		</c:forEach>
</table>

<div style = "position : absolute; left : 708px; bottom : 100px;"> 
<!-- <div style = "text-align : center; margin-top : 100px;"> -->
<c:if test="${paging.rangeStart > 5}">
	<a href = "list?currentPage=${paging.rangeStart - 5}">
		<img src = "../resources/img/left.png" width = "20px" height = "20px">	
	</a>
</c:if>

<c:forEach var = "pageNum" begin = "${paging.rangeStart }" end = "${paging.rangeEnd }">
	<c:if test="${paging.currentPage == pageNum }">
		<a href = "list?currentPage=${pageNum}" style = "font-weight : bold;">${pageNum}</a>
	</c:if>
	<c:if test="${paging.currentPage != pageNum && pageNum <= paging.lastRange}">
		<a href = "list?currentPage=${pageNum}">${pageNum}</a>
	</c:if>
	
</c:forEach>
<c:if test="${paging.lastRange > paging.rangeEnd }">
	<a href = "list?currentPage=${paging.rangeEnd+1}">
		<img src = "../resources/img/right.png" width = "20px" height = "20px">
	</a>
</c:if>

</div>

</body>
</html>