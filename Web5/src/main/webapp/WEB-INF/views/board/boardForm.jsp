<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>
	function writeForm(){
		location.href = "write";
	}
</script>
</head>
<body>
<h1 class = "text-center">[ 게시판 ]</h1>


<div class = "container text-center">
	<div>
		<div class = "d-flex mb-2">
			<div class = "p-2">전체 : ${entireSize}</div>
			<div class = "ml-auto p-2"><input type = "button" class=" btn btn-outline-primary" value = "글쓰기" onclick = "writeForm()"></div>
		</div>
	</div>


	<div class = "row">
	<table class="table text-center table-striped table-hover">
	<thead>
		<tr>
			<th style = "width : 10%;" scope="col">번호</th>
			<th style = "width : 50%;" scope="col">제목</th>
			<th style = "width : 10%;" scope="col">작성자</th>
			<th style = "width : 10%;" scope="col">조회수</th> 
			<th style = "width : 20%;" scope="col">등록일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var = "i" items = "${list}">
		<tr>
			<th scope = "row">${i.boardNum}</th>
			<td class = "td-right"><a href = "read?boardNum=${i.boardNum}">${i.title}</a></td>
			<td class = "td-right">${i.id}</td>
			<td class = "td-right">${i.hits}</td>
			<td class = "td-right">${i.inputdate}</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
	</div>
	
	<div class = "mt-3">
			<ul class="pagination justify-content-center">
				<c:if test="${paging.rangeStart <= 5}">
					<li class = "page-item disabled"><a class = "page-link" href = "list?currentPage=${paging.rangeStart - 5}">Previous</a></li>
				</c:if>
				<c:if test="${paging.rangeStart > 5}">
					<li class = "page-item"><a class = "page-link" href = "list?currentPage=${paging.rangeStart - 5}">Previous</a></li>
				</c:if>
				
				<c:forEach var = "pageNum" begin = "${paging.rangeStart }" end = "${paging.rangeEnd }">
					<c:if test="${paging.currentPage == pageNum }">
						<li class = "page-item"><a class = "page-link" href = "list?currentPage=${pageNum}" style = "font-weight : bold;">${pageNum}</a></li>
					</c:if>
					<c:if test="${paging.currentPage != pageNum && pageNum <= paging.lastRange}">
						<li class = "page-item"><a class = "page-link" href = "list?currentPage=${pageNum}">${pageNum}</a></li>
					</c:if>
					
				</c:forEach>
				<c:if test="${paging.lastRange > paging.rangeEnd }">
					<li class = "page-item"><a class = "page-link" href = "list?currentPage=${paging.rangeEnd+1}">
						Next
					</a></li>
				</c:if>
				<c:if test="${paging.lastRange <= paging.rangeEnd }">
					<li class = "page-item disabled"><a class = "page-link" href = "list?currentPage=${paging.rangeEnd+1}">
						Next
					</a></li>
				</c:if>
			</ul>
		</div>
		<form action = "list" method = "GET" class="mt-4">
			<div class = "form-group row justify-content-center">
				<label class=" col-form-label form-control-label text-muted">제목 : </label> 
				<div class = "col col-3">
					<input type = "text" class = "form-control" name = "title">
					<input type = "hidden" name = "currentPage" value = '1'>
				</div>
				<div class = "col col-1">
					<input type = "submit" value = "검색" class = "btn btn-primary">
				</div>
			</div>
		</form>
		
		
</div>




</body>
</html>