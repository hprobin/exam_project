<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Pack01.*"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��� ��ȸ</title>
</head>
<body>
	<h1>���� ��ȣ �߱�</h1>
	<table>
		<tr>
			<th>ȸ��</th>
			<th>�����ȣ</th>
			<th>�̸�</th>
			<th>����</th>
			<th>��/��</th>
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
	
	<button class="btn btn-a" onclick="location.href='index.jsp' ">�� ��</button>
</body>
</html>