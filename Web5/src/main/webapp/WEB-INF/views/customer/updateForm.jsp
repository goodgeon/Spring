<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/table.css">
</head>
<body>
<h1>[ 개인 정보 수정 ]</h1>
<form action = "updateMemberInfo" method = "POST">
	<table>
		<tr>
			<td class = "td-left">ID</td>
			<td class = "td-right">${sessionScope.member.id}</td>
		</tr>
		<tr>
			<td class = "td-left">비밀번호</td>
			<td class = "td-right"><input type = "password" placeholder = "비밀번호 입력" name = "password"><br>
		<input type = "password" placeholder = "비밀번호 다시 입력"></td>
		<tr>
			<td class = "td-left">이름</td> 
			<td class = "td-right"><input type = "text" value = "${sessionScope.member.name}" name = "name"></td></tr>
		<tr>
			<td class = "td-left">이메일</td>
			<td class = "td-right"><input type = "text" value = "${sessionScope.member.email}" name = "email"></td></tr>
		<tr>
			<td class = "td-left">전화번호</td>
			<td class = "td-right"><input type = "text" value = "${sessionScope.member.phone}" name = "phone"></td>
		</tr>
		<tr>
			<td class = "td-left">주소</td>
			<td class = "td-right"><input type = "text" value = "${sessionScope.member.address}" name = "address"></td>
		</tr>
	</table>
	<p style = "text-align : center"><input type = "submit" value = "수정"> <input type = "reset" value = "다시쓰기"></p>
	<input type = "hidden" value = "${sessionScope.member.id}" name = "id">
</form>

</body>
</html>