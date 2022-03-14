<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Pack01.QuestionDto"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>수검번호가 잘못 되었거나 이미 시험을 완료 하였습니다.</h1>
		<%
			List<QuestionDto> list = (ArrayList) request.getAttribute("result");
			
		%>
		
		<% 	
			out.println("<h1>" + list.get(0).getQues()+ "</h1>");
			out.println("<input type ='radio' name = 'n' value = 1 >" + list.get(0).getN1());
			out.println("<input type ='radio' name = 'n' value = 2 >" + list.get(0).getN2());
			out.println("<input type ='radio' name = 'n' value = 3 >" + list.get(0).getN3());
			out.println("<input type ='radio' name = 'n' value = 4 >" + list.get(0).getN4() + "</br>");	
		%>
<button onclick='location="Question2"'>다음문제</button>


</body>
</html>