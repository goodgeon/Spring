<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
person : ${person}<br>
list : ${ list }<br>

<p>[ Person 객체 출력 ]</p>
이름 : ${person.name} <br>
나이 : ${person.age}<br>
주소 : ${person.address }<br>

<p>[ ArrayList 객체 출력 ]</p>
<c:forEach var = "i" items="${list}">
${i.name}
${i.age}
${i.address}
<br>
</c:forEach>

<table border = "1">
<tr>
	<td>이름</td>
	<td>나이</td>
	<td>주소</td>
</tr>
<c:forEach var = "i" items = "${list}">
<tr>
	<td>${i.name}</td>
	<td>${i.age}</td>
	<td>${i.address}</td>
</tr>
</c:forEach>

</table>



</body>
</html>