<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function formCheck(){
		var id = document.getElementById('searchID');
		if(id.value.length < 3 || id.value.length > 12){
			alert('ID는 3~12자로 입력하세요.');
			return false;
		}
		return true;
	}

	function inputId(){
		opener.document.getElementById('inputID').value = '${searchID}';
		this.close();
	}
</script>
</head>
<body>
<div>
	<h1>[ ID 중복확인 ]</h1>

	<form action = "idcheck" method ="POST" onsubmit = "return formCheck()">
		검색할 ID <input type = "text" name = "searchID" id = "searchID">
				<input type = "submit" value = "검색">
	</form>
	
	<c:if test = "${result != null}">
		<c:if test = "${result == 'true'}">
			${searchID} : 사용할 수 있는 ID입니다
			<input type = "button" value = "ID사용하기" onclick = "inputId()">
		</c:if>
		<c:if test = "${result == 'false'}">
			${searchID} : 이미 사용중인 ID입니다
		</c:if>
		
	</c:if>
	
</div>

</body>
</html>