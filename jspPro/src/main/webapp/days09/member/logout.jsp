<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// session.removeAttribute();
	session.invalidate();
	
	// 메인페이지
	String location = "/jspPro/days09/ex01.jsp";
	response.sendRedirect(location);
%>