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
    
  </xmp>
  
  요청 URI : <%= request.getRequestURI() %> <br>
  요청 URL : <%= request.getRequestURL() %> <br>
  <hr>
  EL에서 JSP 기본 객체 9가지를 사용하고자 한다면 pageContext 기본 객체를 사용해서 얻어오면 된다.
  요청 URI : ${ pageContext.request.requestURI } <br>
  <hr>
  <%
  	String name = "홍길동";
  	request.setAttribute("name", name);
  %>
  이름 : <%= name %> <br>
  이름 : <%= request.getAttribute("name") %> <br>
  이름 : ${ requestScope.name } <br>
  이름 : ${ name } <br>
  <hr>
  나이 : <%= request.getParameter("age") %> <br>
  나이 : ${ param.age }<br>
   
  
  
  
</div>
</body>
</html>