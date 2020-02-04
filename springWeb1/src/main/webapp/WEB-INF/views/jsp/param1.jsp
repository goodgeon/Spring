<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param1.jsp</title>
<style>
	table, tr, td {
		padding : 10px;
	}
</style>
</head>
<body>
<%
	int a = 10;
	int b = a + 5;
	out.println("a = " + a + ", b = " + b);
%>
<h1>[ 요청정보의 Parameter 연습 ]</h1>

<form action = "param2" method = "POST" >
	<table>
		<tr>
			<td>아이디</td>
			<td> <input type = "text" name = "id">@nate.com<input type = "button" value = "중복확인"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td> <input type = "password" name = "pw"> </td>
		</tr>
		<tr>
			<td>비밀번호 확인 </td>
			<td><input type = "password"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td> <input type = "text" name = "name"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type = "text" name = "mail"> @ <input type = "text" name = "mail"></td>
		</tr>
		<tr>
			<td>휴대폰</td>
			<td> <input type = "text" name = "phone"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type = "radio" name = "gender" value = "남자"> 남자 <input type = "radio" name = "gender" value = "여자"> 여자</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td> 
				<select name = "year">
  					<option value="">년도</option>
			  		<option value="1990">1990</option>
			  		<option value="1991">1991</option>
			  		<option value="1992">1992</option>
				</select> 년
				<select name = "month">
			  		<option value="">월</option>
			  		<option value="1">1</option>
			  		<option value="2">2</option>
			  		<option value="3">3</option>
				</select> 월
				<select name = "day">
			  		<option value="">일</option>
			  		<option value="1">1</option>
			  		<option value="2">2</option>
			  		<option value="3">3</option>
				</select> 일
			</td>
		</tr>
		<tr>
			<td>해외 IP 차단</td>
			<td><input type = "radio" name = "ip" value = "on">On <input type = "radio" name = "ip" value = "off">Off</td>
		</tr>
		<tr>
			<td><input type = "submit" value = "회원가입"></td>
		</tr>
	</table>
</form>
</body>
</html>