<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">KenIk HOme</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<div>
  <a href="/jspPro/days10/list.ss">자료실 목록보기</a>
  <br>
  
  <xmp class="code">
       ex06.jsp    
    파일첨부 4개 +  게시글 -> [자료실]
                    제목    
    1. 테이블 , 시퀀스 생성
    create table filetest(			 
	  num number not null primary key  
	  , subject varchar2(50) not null	  
	  
	  , filesystemname varchar2(100) -- 실제 저장되는 파일명       a1.txt
	  , originalfilename varchar2(100) -- 저장할 때 파일명             a.txt
	  , filelength number  -- 파일크기
	 );
	 
	create sequence seq_filetest;   
	
	MVC 비슷하게 개념... ~    
	
   실습)
      days10 패키지
         ㄴFileTestDTO.java                         
         ㄴFileTestDAO.java                        
         ㄴFileTestServlet.java   -- Controller 모든 요청 처리         
      days10 폴더
         ㄴ ex06_list.jsp                  list.ss
         ㄴ ex06_write.jsp                 write.ss                
         ㄴ ex06_update.jsp                update.ss      
       
       
       
       
       server.xml 에서 아래와 같이 수정했습니다.
(URL에 특수문자가 들어갔을때 발생하는 에러)

<Connector connectionTimeout="20000"
  port="8080"
  protocol="HTTP/1.1"
  redirectPort="8443"
  relaxedQueryChars="[]()^|&quot;"/>                                    
  </xmp>
  
  
  
</div> 
</body>
</html>







 

