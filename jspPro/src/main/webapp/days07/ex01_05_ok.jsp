<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//ex01_05_ok.jsp?ckbCookie=color&ckbCookie=id
	Enumeration<String> en = request.getParameterNames();
	while(en.hasMoreElements()){
		String cookieName = en.nextElement();
		String cookieValue = request.getParameter(cookieName);
		Cookie c = new Cookie(cookieName, URLEncoder.encode(cookieValue, "UTF-8"));
		c.setMaxAge(-1);
		c.setPath("/");
		response.addCookie(c);
	}//while
		
	String location = "ex01_03.jsp";
	response.sendRedirect(location);
%>