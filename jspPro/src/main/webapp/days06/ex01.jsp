<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    days06.ex01.jsp
    p.132 jsp 기본 객체와 영역
    
    1. 하나의 웹페이지에서 사용할 수 있는 영역(Scope)
	   	- :PAGE 영역: 하나의 JSP 페이지를 처리할 때 사용되는 영역
		- :REQUEST 영역: 하나의 HTTP 요청을 처리할 때 사용되는 영역
		- :SESSION 영역: 하나의 웹 브라우저와 관련된 영역
		- :APPLICATION 영역: 하나의 웹 어플리케이션과 관련된 영역
		
	   	- :PAGE 영역			- pageContext 객체
		- :REQUEST 영역			- request 객체
		- :SESSION 영역			- session 객체
		- :APPLICATION 영역		- application 객체
		
	2. 메서드
		setAttribute()
		getAttribute()
		removeAttribute()
		getAttributeNames()
		
	 예) ex01_02.jsp
	 예) ex01_03.jsp
  </xmp>
</div>
</body>
</html>