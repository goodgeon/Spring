<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


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

	function showList(){
		location.href = "list?currentPage=1";
	}

	function modifyRepForm(replyNum){
		var divModifyRep = document.getElementById("divModifyRep"+replyNum);

		if(divModifyRep.innerHTML == ""){
			divModifyRep.innerHTML = "<td scope='col' class = 'col-sm-10'><input type = 'text' class = 'form-control mb-1 mt-1'></td>"+
			"<td scope = 'col' class = 'col-sm-1 text-right'><input type = 'button' class = 'btn btn-primary' value='수정'></td>";
		}else{
			divModifyRep.innerHTML = "";
		}
		

		
	}
</script>
</head>
<body>
<h1 class = "text-center">[ 게시판 글읽기 ]</h1>

<div class = "container mt-5">
	<table class = "table table-bordered">
		<tr>
			<th class = "td-left" style = "width : 20%;">작성자</th>
			<td class = "td-right" style = "width : 80%;">${board.id}</td>
		</tr>
		<tr>
			<th class = "td-left">작성일</th>
			<td class = "td-right">${board.inputdate}</td>
		</tr>
		<tr>
			<th class = "td-left">조회수</th>
			<td class = "td-right">${board.hits}</td>
		</tr>
		<tr>
			<th class = "td-left">제목</th>
			<td class = "td-right">${board.title}</td>
		</tr>
		<tr>
			<th class = "td-left">파일첨부</th>
			<td class = "td-right">
			<c:if test="${board.originalFile != null}">
				<a href = "download?boardNum=${board.boardNum}">${board.originalFile}</a>
			</c:if> 
			</td>
		</tr>
		<tr>
			<th class = "td-left">내용</th>
			<td class = "td-right" style="white-space:pre;">${board.contents}</td>
		</tr>
		
	</table>

	<div class="d-flex mb-3">
	<div class = "ml-auto"><input type = "button" class = "btn btn-outline-primary" value = "삭제" onclick = "checkID('${sessionScope.member.id}','${board.id}','${board.boardNum }',1)"></div>
	<div class = "ml-1"><input type = "button" class = "btn btn-outline-primary" value = "수정" onclick = "checkID('${sessionScope.member.id}','${board.id}','${board.boardNum }',2)"></div>
	<div class = "ml-1"><input type = "button" class = "btn btn-outline-primary" value = "목록보기" onclick="showList()"></div>
	</div>
	
	
	<div style = "margin-top : 100px">
		<hr>
		<span class = "badge d-flex">댓글목록</span>
		<hr>
	</div>
	
	
	<div>
	<table class = "table" >
		<c:forEach var="reply" items="${repList}">
			<tr class = "table-borderless border-bottom row">
				<th scope = "col" class = "col-sm-1">${reply.id}</th>
				<td scope = "col" class = "col-sm-9">${reply.text}</td>
				
				<c:if test="${board.id == sessionScope.member.id}">
					<td scope = "col" class = "col-sm-1">
					<a href = "javascript:modifyRepForm(${reply.replyNum})">[수정]</a>
					</td>
					
					<td scope = "col" class = "col-sm-1">[삭제]</td>
					
				</c:if>
				
			</tr>
			<tr id = "divModifyRep${reply.replyNum}" class = "d-flex justify-content-end row table-borderless"></tr>
			
		</c:forEach>
		
	</table>
	<form action = "reply" method = "POST">
		<div class="form-group row" style = "margin-top : 100px">
		<label class=" col-form-label form-control-label text-muted">리플 내용</label> <div class = "col-lg-10"><input class="form-control" type = "text" name = "text"></div>
		<input type = "hidden" name = "boardNum" value = "${board.boardNum}">
		<input type = "submit" class = "btn btn-primary" value = "확인">
		</div>
	</form>
</div>


</div>

</body>
</html>