<%@page import="java.sql.ResultSet"%>
<%@page import="Pack01.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����ȣ ��ȸ ���</title>
</head>
<body>
	<h1>�����ȣ ��ȸ ���</h1>
	<table>
		<tr>
			<th>�����ȣ</th>
			<th>�̸�</th>
		</tr>
		<%
		ResultSet rs = (ResultSet) request.getAttribute("selectNum");
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