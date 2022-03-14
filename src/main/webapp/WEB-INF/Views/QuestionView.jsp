<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Pack01.QuestionDto"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<h1>문제 출제</h1>
		<%
		//ResultSet rs = (ResultSet) request.getAttribute("result");
			//out.println("<td>" + quesionDto.getIndex()+"</td>");
			List<QuestionDto> list = (ArrayList) request.getAttribute("result");
			//QuestionDto list = (QuestionDto) request.getAttribute("result");
		%>
		
		<% 
			//out.println("<h1>" + list.getQues()+ "</h1>");
			//out.println("<input type ='radio' name = 'n' value = 1 >" + list.getN1());
			//out.println("<input type ='radio' name = 'n' value = 2 >" + list.getN2());
			//out.println("<input type ='radio' name = 'n' value = 3 >" + list.getN3());
			//out.println("<input type ='radio' name = 'n' value = 4 >" + list.getN4() + "</br>");	
			out.println("<h1>" + list.get(0).getQues()+ "</h1>");
			out.println("<input type ='radio' name = 'n' value = 1 >" + list.get(0).getN1());
			out.println("<input type ='radio' name = 'n' value = 2 >" + list.get(0).getN2());
			out.println("<input type ='radio' name = 'n' value = 3 >" + list.get(0).getN3());
			out.println("<input type ='radio' name = 'n' value = 4 >" + list.get(0).getN4() + "</br>");	

		%>
<button onclick='location="Question2"'>다음문제</button>


</body>
</html>