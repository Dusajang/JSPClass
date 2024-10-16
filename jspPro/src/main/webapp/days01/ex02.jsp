<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">dkrkdfla HOme</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<div>
  <xmp class="code">
    
  </xmp>
  
  <form action="ex02_el_ok.jsp">
  	책 제목: <input type="text" id="title" name="title" autofocus> <br>
  	저자 : <input type="text" id="author" name="author"> <br>
  	나이 : <input type="text" id="age" name="age"> <br>
  	<button type="button" onclick="inputcheck()">submit</button>
  	<input type="submit">
  	<input type="reset">
  </form>
  
  
  
  <script type="text/javascript">
  	$("button").on("click", function (event) {
  		title = $("#title").val();
 		author = $("#author").val();
		//alert("X");
		if (title.trim().length==0) {
			alert("책 제목은 필수 입력!!")
		$("#title").focus();
		return;
		}
		if (author.trim().length==0) {
			alert("저자명은 필수 입력!!")
		$("#author").focus();
		return;
		}
		
		//
		$("form").submit();
		
	})
  </script>
 <script >
 
 	/* 2조
 		$("form").on("submit", function (event) {
 		title = $("#title").val();
 		author = $("#author").val();
		//alert("X");
		if (title.trim().length==0) {
			alert("책 제목은 필수 입력!!")
		event.preventDefault();  // 서브밋 기능 취소
		$("#title").focus();
		return;
		}
		if (author.trim().length==0) {
			alert("저자명은 필수 입력!!")
		event.preventDefault();  // 서브밋 기능 취소
		$("#author").focus();
		return;
		}
		
	}) */
 </script>
  
  
  
<script>
/*   function inputcheck() {
    let title = document.getElementById("title").value;
    let author = document.getElementById("author").value;
    //let age = document.getElementById("age").value;
    if (!title || !author) {
      alert("제목과 저자를 입력하세요");
      return false;
    }
    return true;
  } */
</script>
  
</div>
</body>
</html>