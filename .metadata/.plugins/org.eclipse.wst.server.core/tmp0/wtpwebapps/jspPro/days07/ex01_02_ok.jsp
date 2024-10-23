<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
	// 응답할 때 쿠키 생성
	String cookieName = request.getParameter("cookieName");
	String cookieValue = request.getParameter("cookieValue");
	
	// (주의할 점) 한글, 콤마, 세미콜론, 공백, () X
	Cookie c = new Cookie(cookieName, URLEncoder.encode(cookieValue, "UTF-8"));
	c.setMaxAge(-1); // 음수   브라우저 닫기 + 자동 쿠키 제거
	c.setPath("/");
	//c.setDomain();
	//c.setPath();
	response.addCookie(c);
	
	//
	String location = "ex01_03.jsp";
	response.sendRedirect(location);
%>