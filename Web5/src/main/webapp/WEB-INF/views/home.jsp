<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	[ springWeb5 - SE Bank Step 4 ]  
</h1>
<c:if test = "${sessionScope.member != null}">
	<p>${sessionScope.member.name}(${sessionScope.member.id})님 로그인 중</p>
	<ul>
		<li><a href = "member/logout">로그아웃</a></li>
		<li><a href = "member/updateMemberInfo">개인정보수정</a></li>
		<li><a href = "board">게시판</a></li>
	</ul>
</c:if>
<c:if test = "${sessionScope.member == null }">
	<ul>
		<li><a href = "member/join">회원 가입</a></li>
		<li><a href = "member/login">로그인</a></li>
		<li><a href = "board">게시판</a></li>
	</ul>
</c:if>

</body>
</html>
