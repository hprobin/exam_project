<%@page import="java.util.ArrayList"%>
<%@page import="Pack01.QuestionDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>문제 출제2</h1>
		<%
			//QuestionDto list = (QuestionDto) request.getAttribute("result");
			//List<QuestionDto> list = (List) request.getAttribute("result");
			
		%>
		
		<% 
			//out.println("<h1>" + list.getQues()+ "</h1>");
			//out.println("<input type ='radio' name = 'n' value = 1 >" + list.getN1());
			//out.println("<input type ='radio' name = 'n' value = 2 >" + list.getN2());
			//out.println("<input type ='radio' name = 'n' value = 3 >" + list.getN3());
			//out.println("<input type ='radio' name = 'n' value = 4 >" + list.getN4() + "</br>");	
			
			//out.println("<h1>" + list.get(1).getQues()+ "</h1>");
			//out.println("<input type ='radio' name = 'n' value = 1 >" + list.get(1).getN1());
			//out.println("<input type ='radio' name = 'n' value = 2 >" + list.get(1).getN2());
			//out.println("<input type ='radio' name = 'n' value = 3 >" + list.get(1).getN3());
			//out.println("<input type ='radio' name = 'n' value = 4 >" + list.get(1).getN4() + "</br>");	
		%>
			<button onclick='location="Question3"'>다음문제</button>

</body>
</html>