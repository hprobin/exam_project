<%@page import="java.sql.ResultSet"%>
<%@page import="Pack01.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 질문 조회</title>
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
	background-color: grey;
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
	<h1>전체 질문 조회</h1>
	<table>
		<tr>
			<th>Index</th>
			<th>문제</th>
			<th>선지1</th>
			<th>선지2</th>
			<th>선지3</th>
			<th>선지4</th>
			<th>정답</th>
		</tr>
		<%
		int count = 1;
		ResultSet rs = (ResultSet) request.getAttribute("result");

		while (rs.next()) {
				
			out.println("<tr>");
			String ques = rs.getString("ques");
			String n1 = rs.getString("n1");
			String n2= rs.getString("n2");
			String n3= rs.getString("n3");
			String n4= rs.getString("n4");
			int ans = rs.getInt("ans");
		 	
			
			out.println("<td>"+ count +"</td>");
			out.println("<td>" + ques + "</td>");
			out.println("<td>" + n1 + "</td>");
			out.println("<td>" + n2 + "</td>");
			out.println("<td>" + n3 + "</td>");
			out.println("<td>" + n4 + "</td>");
			out.println("<td>" + ans + "</td>");
			
			out.println("</tr>");
			count++;
			
		}  
		%>
	</table>

</body>
</html>