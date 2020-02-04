<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function goWrite(){
	location.href = "write";
};

function del(num){
	var hiddenForm = document.getElementById("hiddenForm");
	var password = document.getElementById("pw"+num).value;

	document.getElementById("password").value = password;
	document.getElementById("num").value = num;
	
	hiddenForm.submit();
}

/* function deleteByPw(num,password){
	var num = num;
	var inputPw = document.getElementById("password"+num).value;
	var userPw = password;

	if(inputPw != userPw){
		alert("비밀번호가 일치하지 않습니다.");
		return;
	}else if(inputPw == userPw){
		alert("삭제 성공");
		
		location.href = "deleteGuestbook?num="+num;
	}
}

function checkPw(num){
	var inputPw = document.getElementById("password"+num).value;
	location.href = "deleteGuestbook?num="+num+"&inputPw="+inputPw;
} */

</script>
</head>
<body>
	<h1>[ 방명록 ]</h1>
	<p><input type = "button" value = "글쓰기" onclick = "goWrite()"></p>
	
	<c:forEach var = "i" items = "${list}">
	<hr>
	<p style = "font-weight : bold">작성자 : ${i.name}</p>
	<p style = "font-weight : bold">작성일 : ${i.inputdate}</p>
	<p>${i.contents}</p>
	
	<p style = "font-weight : bold">
	<%-- 비밀번호 <input type = "password" id = "password${i.num}" name = "password"><input type = "button" value = "삭제" onclick = "checkPw('${i.num}')"> --%>
	삭제할 비밀번호 <input type = "password" id = "pw${i.num }">
	<input type = "button" value = "삭제" onclick = "del(${i.num})">
	</p>
	<hr>
	</c:forEach>
	
	<form id = "hiddenForm" action = "delete" method = "post">
		<input type = "hidden" name = "num" id = "num">
		<input type = "hidden" name = "password" id = "password">
	</form>
	

</body>
</html>