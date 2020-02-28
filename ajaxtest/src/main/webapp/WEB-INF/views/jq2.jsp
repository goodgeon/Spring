<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery 연습</title>
<script src="../resources/js/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function() {
		var ar1 = [ 55, 30, 78 ];
		var ar2 = [ 'aaa', 'bbb', 'ccc', 'ddd' ];
		var ar3 = [ {
			name : 'abc',
			age : 20
		}, {
			name : 'def',
			age : 30
		} ];
		var ar4 = [];

		$.each(ar3, function(i, num) {
			alert("이름: " + num.name + "\n나이: " + num.age);
		});

		$(ar1).each(function(i, num) {
			console.log(i + ", " + num);

		});

		$('p').each(function(i,tag){
			console.log(tag);
		});

		$('p').each(function(i, tag){
			$(tag).text('aa')
			console.log($(tag).text());
		})

		/* 	alert(ar1[1]);				//ar1배열안에 있는 30을 출력
		 alert(ar2[1].length);		//ar2배열의 'bbb'의 글자수 출력
		 alert(ar2.length);			//ar2배열의 요소 개수 출력
		 alert(ar3[1].age);			//ar3배열의 두번째 객체의 나이 출력
		 ar4.push(100);
		 ar4.push(200);
		 alert(ar4);					//ar4배열에 100과 200 저장한 후 배열 전체 출력 */
	});
</script>
</head>
<body>
	<h1>[ jQuery ]</h1>
	<p>문장1</p>
	<p>문장2</p>
	<p>문장3</p>
</body>
</html>