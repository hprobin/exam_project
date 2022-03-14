<%@page import="java.sql.ResultSet"%>
<%@page import="Pack01.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>전체 응시자 조회</title>
<style>
@font-face {
    font-family: 'twaysky';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twaysky.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

*{
	font-family: 'twaysky';
	text-align: center;
}
body {
	/* background: url(img/night.jpg) no-repeat; */
	background-color: skyblue;
	/* background-size: 100%; */
	position: relative;
}

h1 {
	font-size: 90px;
	font-weight: 400;
	margin-top: 8%;
	text-shadow: -3px 0 #000, 0 3px #000, 3px 0 #000, 0 -3px #000;
	text-shadow: 2px 2px 2px #000;
}

table {
	margin-top:5%;
	margin-left:auto; 
    margin-right:auto;
    width: 60%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
}

</style>
</head>
<body>
	<h1>전체 응시자 조회</h1>
	<table>
		<tr>
			<th>Index</th>
			<th>수험번호</th>
			<th>이름</th>
			<th>주민번호 앞자리</th>
			<th>주민번호 뒷자리</th>
			<th>시험응시 현황</th>
		</tr>
		<%
		int count = 1;
		ResultSet rs = (ResultSet) request.getAttribute("selectAll");
		while (rs.next()) {
			
			out.println("<tr>");
			String number = rs.getString("number");
			String name = rs.getString("name");
			String rrn1 = rs.getString("rrn1");
			String rrn2 = rs.getString("rrn2");
			String exam = rs.getString("exam_ox");

			out.println("<td>" + count + "</td>");
			out.println("<td>" + number + "</td>");
			out.println("<td>" + name + "</td>");
			out.println("<td>" + rrn1 + "</td>");
			out.println("<td>" + rrn2 + "</td>");
			out.println("<td>" + exam + "</td>");

			out.println("</tr>");
			count++;
			
		}
		%>
	</table>
</body>
</html>