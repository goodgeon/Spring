<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp2</title>
<script type="text/javascript" src="resources/js/test.js"></script>
<link href="resources/css/test.css" rel="stylesheet"> 
</head>
<body>
<h1>[ 리소스 사용 ]</h1>
<p>이미지 파일, CSS 파일, JS 파일등은 /resources 폴더 하위에</p>
<!--web2/jsp2  -->

<!--web2/resources/fb.png  -->
<p><img src = "resources/fb.png"></p>
<p><img src = "resources/image/ins.png"></p>

<!--web2/resources/js/test.js  -->
<p><input type = "button" value = "fun()함수실행" onclick = "fun()"></p>
</body>
</html>