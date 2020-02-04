<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script>
function check(){
	var id = document.getElementById("id").value;
	var pw = document.getElementById("password").value;

	if(id == "" || pw == ""){
		alert("ID와 비밀번호를 입력하세요.");
		return false;
	}
	return true;
}

</script>
</head>
<body>
<h1>[ 로그인 ]</h1>

<form action = "login" method = "POST" onsubmit = "return check()">
ID <input type = "text" id = "id" name = "id"><br>
PW <input type = "password" id = "password" name = "password"><br>
	<input type = "submit" value = "로그인">
</form>

</body>
</html>