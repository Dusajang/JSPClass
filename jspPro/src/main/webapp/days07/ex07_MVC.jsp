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
    ex07_MVC.jsp
    ***** p.516 Chapter MVC 패턴 구현 *****
    - 컨트롤러  = 서블릿
	- 모델		= 로직 처리 클래스, 자바빈
	- 뷰 		= JSP
	- 사용자 	= 웹 브라우저 내지 휴대폰과 같은 다양한 기기
	
	실습) days04.board 폴더
			days04.board 패키지
			
			->MVC 패턴으로 변환...
			days07.mvc.domain 		: BoardDTO.java
			days07.mvc.persistence  : BoardDAO.java
									  BoardDAOImpl.java
			days07.mvc.commend 		: 로직 처리를 담당하는 클래스
						CommendHandler 인터페이스
							public String process();
						ListHandler.java
						WriteHandler.java
			days07.mvc.service		: 서비스 클래스( 트랜잭션 처리)
			days07.mvc.controller   : MV[C] 서블릿
				commandHandler.properties 파일
				/jspPro/board/list.do=ListHandler
				
			controller 서블릿 -> web.xml 등록
			
			web.xml 복사 + 붙이기 web_days07.xml
			
			톰캣이 시작될 때, web.xml을 읽어옴. -> 컨트롤러 등록
  </xmp>
  
  <a href="/jspPro/board/list.do">/board/list.do</a>
</div>
</body>
</html>