<%@page import="java.sql.ResultSet"%>
<%@page import="Pack01.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>����� ���� ����</h1>
	<table>
		<tr>
			<th>�����ȣ</th>
			<th>�̸�</th>
		</tr>
		<%
		ResultSet rs = (ResultSet) request.getAttribute("result");
		while (rs.next()) {
			out.println("<tr>");
			String number = rs.getString("number");
			String name = rs.getString("name");

			out.println("<td>" + number + "</td>");
			out.println("<td>" + name + "</td>");

			out.println("</tr>");
		}
		%>
	</table>
</body>
</html>