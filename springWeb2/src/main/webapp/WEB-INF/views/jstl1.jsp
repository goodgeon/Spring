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
<!-- pageScope, requestScope, sessionScope, applicationScope  -->
${requestScope.str}
${num}
${num+1}
${ num > 50 }
${slist}
${data}
${ data == null }/
<hr>

<p>* set, remove 태그 </p>
<c:set var = "n" value = "55"/>
<p>n = ${n}</p>
<c:remove var="n"/>
<p>n = ${n}</p>

<h2>* if 태그</h2>
<c:if test = "${num==100 }">
	<p>num은 100입니다.</p>
</c:if>

<c:if test = "${num != 100 }">
	<p>num은 100이 아닙니다.</p>
</c:if>

<!-- 문자열 비교  -->
<c:if test = "${str == '문자열'}">
 <p>${str}</p>
</c:if>



<!-- null 비교 -->
<c:if test = "${str == null}">
 <p>str은 null입니다</p>
</c:if>

<h2>* choose 태그</h2>
<c:choose>
	<c:when test = "${num==100 }">
		<p>num의 값은 100이다</p>
	</c:when>
	<c:when test = "${num==200 }">
		<p>num의 값은 200이다</p>
	</c:when>
	<c:otherwise>
		<p>num의 값은 그 밖의 수이다</p>
	</c:otherwise>
</c:choose>

<h2>* forEach 반복문</h2>
	<p>
	<c:forEach var = "cnt" begin="1" end="5">
		${cnt}
	</c:forEach>
	</p>
	
	<p>
	<c:forEach var = "s" items="${slist}">
		${s}
	</c:forEach>
	</p>
	
	<table border = "1" >
		<c:forEach var = "i" begin="0" end="${slist.size()-1}">
			<tr>
				<td>${slist[i]}</td>
			</tr>
		</c:forEach>
	</table>
	
	${tag}
	<p><c:out value="${tag}"></c:out></p>
	<p><img src="resources/image/ins.png"></p>
	<p><img src="/resources/image/ins.png"></p>
	<p><img src="/web2/resources/image/ins.png"></p>
	<p><img src="<c:url value = "resources/image/ins.png" />"></p>
</body>
</html>