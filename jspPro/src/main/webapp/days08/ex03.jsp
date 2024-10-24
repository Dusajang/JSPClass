<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    ex03.jsp
    p.544 chapter 19 Filter
    필터는 'HTTP 요청과 응답을 변경할 수 있는 재사용 가능한 클래스'. 
    필터는 객체의 형태로 존재하며 클라이언트에서 오는 요청(request)과 
    최종 자원(JSP, 서블릿, 기타 자원) 사이에 위치하여 
    클라이언트의 요청 정보를 알맞게 변경할 수 있다. 
    또한 필터는 최종 자원과 클라이언트로 가는 응답(response) 사이에 위치하여 
    최종 자원의 요청 결과를 알맞게 변경할 수도 있다.
    
    - javax.servlet.Filter 인터페이스: 클라이언트와 최종 자원 사이에 위치하는 필터를 나타내는 객체가 구현해야 하는 인터페이스이다.
	- javax.servlet.ServletRequestWrapper 클래스: 필터가 요청을 변경한 결과를 저장하는 래퍼이다.
	- javax.servlet.ServletResponseWrapper 클래스: 필터가 응답을 변경하기 위해 사용하는 래퍼이다.
	
	필터는 등록 순서대로 작동...
	
	web.xml에서 / 와 /*의 차이점
	
	ex03_02.jsp
	ex03_02_ok.jsp
	
	web.xml -> web_days08.xml
  </xmp>
</div>
</body>
</html>