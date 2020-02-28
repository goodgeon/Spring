<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery 연습</title>
<style>
#text1{
	cursor: pointer;
	border: 1px solid blue;
	background: #dddddd;
	width: 300px;
	text-align : center;
	font-weight: bold;
}

.input1{
	border : 1px solid black;
	background: gray;
}

.input2{
	border : 2px solid red;
	backgroud: white;
}


</style>
<script src="../resources/js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$('#bt1').on('click', test1);
	$('#bt2').on('click', test2);
	$('#bt3').on('click', test3);
	$('#ins').on('mouseover',test4);
	$('#sel').on('change',test5);

	$('#text1').on('click',function(){
		alert('text1의 click이벤트 발생');
	});

	$('#text3').on('click',function(){
		setTimeout(function(){
			$('#text1').trigger('click');
	},3000);
	});

	$('img').on('mouseenter',function(){
		$(this).css('width',$(this).width()*2);
		
		//alert($(this).width());
	});

	$('img').on('mouseleave',function(){
		$(this).css('width',$(this).width()/2);
	});

	
	//클래스명이 'bts'인 버튼을 클릭했을 때
	$('.bts').on('click', function(){
		var n = $(this).attr('data');
		alert(n);
	});


/* 	var cnt=0;
	var str='';
 */	
 	var bl = true;
	
	$('#bt4').on('click',function(){
		if(bl == false) {
			$('#output').html('');
			return false;
		}
		bl = !bl;
		var names= ['dcb.jpg','choco.jpg','str.jpg'];
		var dir = '../resources/image/';
		var tag = '';
		$(names).each(function(index,name){
			tag += '<p><img src = "'+dir+name+'" class = "imgs"></p>';
		});

		$('#output').html(tag);
		
		$('img').on('mouseenter',function(){
			$(this).css('width',$(this).width()*2);
		})
		
		$('img').on('mouseleave',function(){
		$(this).css('width',$(this).width()/2);
		});

		$('.imgs').on('click',function(){
			alert($(this).attr('src') + '이미지를 클릭했습니다.');
		});

		/* if(cnt==0){
			str += '<img src = "../resources/image/dcb.jpg">';
			$('#output').html(str);
			cnt++;
		}else if(cnt==1){
			str += '<img src = "../resources/image/choco.jpg">';
			$('#output').html(str);
			cnt++;
		}else if(cnt==2){
			str += '<img src = "../resources/image/str.jpg">';
			$('#output').html(str);
			cnt++;
		} */
		
	});

	var img = 0;
	$('#bt5').on('click', function(){
		var names = ['dcb.jpg','choco.jpg','str.jpg'];
		var dir = '../resources/image/';
		var tag = '<p><img src = "' + dir + names[img] + '" class = "imgs"></p>';

		$('#output').html(tag);

		/* $('.imgs').on('click', function(){
			img = ++img % names.length;
			$(this).attr('src', dir + names[img]);
		}); */

		$('.imgs').click(function(){
			img = ++img % names.length;
			$(this).attr('src', dir + names[img]);
		});
	});

	//입력란에 focus 이벤트 처리
	$('input[type="text"]').focus(function(){
		$(this).removeClass('input1');
		$(this).addClass('input2');
	});

	$('input[type="text"]').blur(function(){
		$(this).removeClass('input2');
		$(this).addClass('input1');
	});

	$('#textInput').keyup(function(){
		var text = $(this).val();
		$('#countDiv').html(text.length);
	});
});


function test1(){
	alert('test1');
}

function test2(){
	$('#bt1').off(); //이벤트 다취소
	$('#bt4').off();
}

function test3(){
	$('#bt1').on('click',test1);
}

function test4(){
	//alert("test4")	
}

function test5(){
	alert($("#sel option:selected").val());	
}

</script>
</head>
<body>
<h1>[ jQuery ]</h1>
<p><input type = "button" value = "버튼1" id = "bt1"></p>
<p><input type = "button" value = "이벤트 연결 해제" id = "bt2"></p>
<p><input type = "button" value = "다시 이벤트 연결" id = "bt3"></p>

<p><input type = "button" value = "html()로 생성한 객체의 이벤트 처리" id = "bt4"></p>
<p><input type = "button" value = "그림바꾸기" id = "bt5"></p>
<div id="output"></div>

<p><input type = "text" class = "input1"></p>
<p><input type = "text" class = "input1"></p>
<p><input type = "text" class = "input1"></p>

<p><input type = "text" id = "textInput"></p>
글자수 : <div id = "countDiv">0</div>
<img src="../resources/image/ins.png" id = "ins">
<img src="../resources/image/fb.png" id="foo" >

<p><input type = "button" value = "버튼" class = "bts" data = "1"></p>
<p><input type = "button" value = "버튼" class = "bts" data = "2"></p>
<p><input type = "button" value = "버튼" class = "bts" data = "3"></p>

<select id = "sel">
<option value = "1">1</option>
<option value = "2">2</option>
<option value = "3">3</option>
</select>
<p id = "text1">일반 텍스트에 이벤트 연결</p>
<p id = "text2">이벤트 강제 발생</p>
<p id = "text3">3초 후 이벤트 강제 발생</p>
</body>
</html>