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

			for(QuestionDto q : list){
				out.println("<h1>" + q.getQues()+ "</h1></br>");
				out.println("<input type ='radio' name = 'n' value = 1 >" + q.getN1());
				//out.println("<input type =\"radio\" name = \"n\" value = 1 checked = \"checked\">" + d.getN1());
				out.println("<input type ='radio' name = 'n' value = 2 >" + q.getN2());
				out.println("<input type ='radio' name = 'n' value = 3 >" + q.getN3());
				out.println("<input type ='radio' name = 'n' value = 4 >" + q.getN4() + "</br>");
				
			}
		%>
<button onclick='location="Exam"'>다음문제</button>


</body>
</html>