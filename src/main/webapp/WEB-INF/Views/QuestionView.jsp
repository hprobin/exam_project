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
	<%
	List<QuestionDto> list = (ArrayList) request.getAttribute("result");
	int index = (int) request.getAttribute("resultnum");
	%>
	<h1>문제 ${resultnum}번</h1>
	<form method="post" action="inputAnswer">
		<input type="hidden" name="num" value="${resultnum}"> 
		<input type="hidden" name="number" value="${number}">
		<input type="hidden" name="name" value="${name}">
		<%
		out.println("<h1>" + list.get(0).getQues() + "</h1>");
		out.println("<input type ='radio' name = 'n' value = 1 >" + list.get(0).getN1());
		out.println("<input type ='radio' name = 'n' value = 2 >" + list.get(0).getN2());
		out.println("<input type ='radio' name = 'n' value = 3 >" + list.get(0).getN3());
		out.println("<input type ='radio' name = 'n' value = 4 >" + list.get(0).getN4() + "</br>");
		%>
		<input stylealign="center" type="submit" value="다음문제" /><br>
	</form>
</body>
</html>