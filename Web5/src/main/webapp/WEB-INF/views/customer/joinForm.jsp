<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkID(){
		var inputID = document.getElementById("inputID").value;
		var hiddenForm = document.getElementById("hiddenForm");
		document.getElementById("hiddenID").value = inputID;
		hiddenForm.submit();
		
	}
</script>
<link rel="stylesheet" type="text/css" href="../resources/css/table.css">
</head>

<body>
<h1>[ 회원 가입 ]</h1>
<form action = "join" method = "POST">
	<table>
		<tr>
			<td class = "td-left">ID</td>
			<td class = "td-right"><input type = "text" id = "inputID" placeholder = "ID중복확인 이용" name = "id">
			<input type = "button" value = "ID중복확인" onclick = "checkID()"></td>
		</tr>
		<tr>
			<td class = "td-left">비밀번호</td>
			<td class = "td-right"><input type = "password" placeholder = "비밀번호 입력" name = "password"><br>
			<input type = "password" placeholder = "비밀번호 다시 입력"></td>
		</tr>
		<tr>
			<td class = "td-left">이름</td>
			<td class = "td-right"><input type = "text" placeholder = "이름 입력" name = "name"></td>
		</tr>
		<tr>
			<td class = "td-left">이메일</td>
			<td class = "td-right"><input type = "text" placeholder = "이메일 입력" name = "email"></td>
		</tr>
		<tr>
			<td class = "td-left">전화번호</td>
			<td class = "td-right"><input type = "text" placeholder = "전화번호 입력" name = "phone"></td>
		</tr>
		<tr>
			<td class = "td-left">고객구분</td>
			<td class = "td-right"><input type = "radio" name = "memberDiv">개인	
				<input type = "radio" name = "memberDiv">기업
			</td>
		</tr>
		<tr>
			<td class = "td-left">식별번호</td>
			<td class = "td-right"><input type = "text" placeholder = "개인:주민번호 / 법인:사업자"></td>
		</tr>
		<tr>
			<td class = "td-left">주소</td>
			<td class = "td-right"><input type = "text" placeholder = "주소 입력" name = "address"></td>
		</tr>
		</table>
		<div style = "text-align:center">
			<input type = "submit" value = "가입">
			<input type = "reset" value = "다시 쓰기">
		</div>
</form>

<form id = "hiddenForm">
	<input type = "hidden" id = "hiddenID" name = "inputID">
</form>


</body>
</html>