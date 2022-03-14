<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Pack01.*"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>시험 결과 조회</title>
</head>
<body>
	<h1>수험 번호 발급</h1>
	<table>
		<tr>
			<th>회차</th>
			<th>수험번호</th>
			<th>이름</th>
			<th>점수</th>
			<th>합/불</th>
		</tr>
		<%
		int count = 1;
		ResultSet rs = (ResultSet) request.getAttribute("result");
		while (rs.next()) {
			
			out.println("<tr>");
			String number = rs.getString("number");
			String name = rs.getString("name");

			out.println("<td>" + count + "</td>");
			out.println("<td>" + number + "</td>");
			out.println("<td>" + name + "</td>");
			out.println("<td>" + name + "</td>");
			out.println("<td>" + name + "</td>");

			out.println("</tr>");
			count++;
			
		}
		%>
	</table>
	
	<button class="btn btn-a" onclick="location.href='index.jsp' ">메 인</button>
</body>
</html>