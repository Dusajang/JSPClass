<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   // ex01_04.jsp?ckbCookie=id&ckbCookie=bgimg
   String [] delCookieNames = request.getParameterValues("ckbCookie");
   // jsp 쿠키 삭제 : 쿠키 생성 + setMaxAge(0) / 0 : 바로 삭제 =>
   for(int i=0; i<delCookieNames.length; i++){

      String cookieName = delCookieNames[i];
      String cookieValue = "";

      Cookie c = new Cookie(cookieName, cookieValue);
      c.setMaxAge(0); // 쿠키 제거
      c.setPath("/");

      response.addCookie(c);
   } // for
   
   // String location = "/jspPro/days07/ex01_03.jsp";
   // response.sendRedirect(location);
%>
<script>
   alert("쿠키 삭제 완료!!");
   location.href = "ex01_03.jsp";
</script>
