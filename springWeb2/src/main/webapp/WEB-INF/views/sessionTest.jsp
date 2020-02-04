<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTest.jsp</title>
</head>
<body>
<h1>[ 세션의 값 확인 ]</h1>
<p> str : ${ sessionScope.str }</p>
<p> num : ${ sessionScope.num }</p>
<p> session2 : ${ sessionScope.session2 }</p>
<p> test : ${ requestScopes.test } </p>
</body>
</html>