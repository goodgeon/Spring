<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function del(name){
	location.href = "delete?name="+name;
};

</script>
</head>
<body>
<h1>[ 모든 회원 목록 ]</h1>
<c:if test = "${list == null || list.size() == 0 }">
	<p>회원이 없습니다.</p>
</c:if>
<c:if test = "${list != null && list.size() != 0 }">

<table border = "1">
	<tr><td>이름</td><td>나이</td><td>주소</td></tr>
	<c:forEach var = "i" items = "${list}">
		<tr>
			<td>${i.name}</td> <td>${i.age}</td><td>${i.address}</td><td><a href = "delete?name=${i.name}">삭제</a></td>
			<td><input type = "button" value = "삭제" onclick = "del('${i.name}')"></td>
		</tr>
	</c:forEach>
</table>
</c:if>


</body>
</html>