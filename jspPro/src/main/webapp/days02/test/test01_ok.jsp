<%
String [] empnoArr = request.getParameterValues("empno");

%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">

</head>
<body>
<p id="demo">
        <%
        if (empnoArr != null && empnoArr.length > 0) {
   		%>
        <ol>
        <%
                for (int i = 0; i < empnoArr.length; i++) {
                    if (!empnoArr[i].equals("on")) {
        %>
                        <li><%= empnoArr[i] %></li>
        <%
                    }
                } // for
        %>
        </ol>
        <%
            } else {
        %>
            <ol>
                <li>사원번호 없음...</li>
            </ol>
        <%
            }
        %>
</p>

<a href="javascript:history.back()">Back</a>
<a href="test.jsp">HOme</a>


</body>

</html>