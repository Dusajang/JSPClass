<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

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
    ex03.jsp p.417
    [커넥션 풀(Connection pool)]
	기본값    메서드                          설명                                                                      																	 기본값
		8	setMaxTotal(int)               풀에서 관리하는 커넥션의 최대 개수를 설정한다. 음수면 제한이 없다.                																8												
		8	setMaxIdle(int)                커넥션 풀이 보관할 수 있는 최대 유휴 개수를 지정한다. 음수면 제한이 없다.         																 8
	
		0	setMinIdle(int)                커넥션 풀이 유지할 최소 유휴 커넥션 개수를 지정한다. 이 값이 maxIdle 보다 크면 maxIdle을 minIdle 값으로 사용한다. 								0
	 true	setBlockWhenExhausted(boolean) 풀에 관리하는 커넥션이 모두 사용중인 상태에서 커넥션을 요청할 때 풀에 커넥션이 반환될 때까지 대기할지 여부를 지정한다. 
											true면 대기하고, false면 NoSuchElementException을 발생한다. 																					true
	  -1L	setMaxWaitMillis(long)          blockWhenExhausted가 true일 때, 최대 대기 시간을 설정한다. 음수면 풀에서 커넥션을 구할 수 있을 때까지 대기한다. 단위는 밀리초이다. 				-1L
	  
	  https://tomcat.apache.org/tomcat-9.0-doc/jndi-datasource-examples-howto.html
	  
	  ㄱ. tomcat
  </xmp>
  
  <%
	  Context initContext = new InitialContext();
	  Context envContext  = (Context)initContext.lookup("java:/comp/env");
	  DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
	  Connection conn = ds.getConnection();
	  //etc.
  %>
  	conn = <%= conn %>
  <%
  	conn.close();
  %>
  
  
  <%
  	Connection conn2 = ConnectionProvider.getConnection();
  %>
  conn2 = <%= conn2 %>
  <%
  	conn2.close();
  %>
</div>
</body>
</html>