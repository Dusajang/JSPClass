<%@page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/inc/session_auth.jspf" %>
<%-- 
<%
	// 인증 + [권한X]
	// [세션 사용 인증 처리] auth 세션 이름 = 로그인ID 저장 (약속)
	
	String sname = "auth";
	String logonId = null;
	logonId = (String)session.getAttribute(sname);
%>
 --%>
<%
	// 1. 세션을 자동으로 종료
	// 2. 세션을 강제로 종료하는 메서드 invalidate()
	session.invalidate();
%>
<script>
   alert("<%= logonId%> 로그아웃!!");
   location.href = "ex05_default.jsp";
</script>