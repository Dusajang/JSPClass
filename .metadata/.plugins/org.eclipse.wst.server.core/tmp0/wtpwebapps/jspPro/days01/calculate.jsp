<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String number = request.getParameter("number");
	int n = Integer.parseInt(number);
	int sum = 0;
	String output = "";
	for (int i = 1; i <= n; i++) {
        sum += i;
        output += i;
        if (i != n) {
            output+="+";
        }
    }
	
    output+="=" + sum;

    out.print(output);
    
%>
