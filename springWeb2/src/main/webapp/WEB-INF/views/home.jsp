<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>[ springWeb2 ]</h1>
	
	<c:if test = "${sessionScope.loginId != null}">
	<h2>${sessionScope.loginId}님 환영합니다</h2><br>
	</c:if>
	
	<ul>
		<li><p>JSP 기본연습</p></li>
		<ol>
			<li><a href="jsp1">JSP의 기본문법</a></li>
			<li><a href="jsp2">Resource의 사용</a></li>
		</ol>
		<li><p>JSTL</p></li>
		<ol>
			<li><a href="jstl1">코어 라이브러리</a></li>
			<li><a href="jstl2">코어 라이브러리2</a></li>
		</ol>
		<li><p>Parameter 전달</p></li>
		<ol>
			<li><a href="param1">POST 방식의 Form 전달</a></li>
			<li><a href="param2">POST 방식의 Form 전달2</a></li>
			<li><a href="param3?num=100&num2=10">GET 방식의 전달</a></li>
		</ol>
		<li><p>Session의 사용</p></li>
		<ol>
			<li><a href="session1">세션에 값 저장</a></li>
			<li><a href="session2">세션의 값 삭제</a></li>
			<li><a href="session3">세션의 값 확인</a></li>
		</ol>
		<li><p>로그인 연습</p></li>
		<ol>
			<li><a href="login">로그인</a></li>
			<li><a href="logout">로그아웃</a></li>
		</ol>
		<li><p>Cookie의 사용</p></li>
		<ol>
			<li><a href="cookie1">쿠키 저장</a></li>
			<li><a href="cookie2">쿠키 삭제</a></li>
			<li><a href="cookie3">쿠키 확인</a></li>
		</ol>
	</ul>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>
