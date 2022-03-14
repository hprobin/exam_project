<%@page import="java.sql.ResultSet"%>
<%@page import="Pack01.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수험번호 조회</title>
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

/* .btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 10px 25px;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 300;
    transition: 0.25s;
    margin: 10px;
    font-size: 38px;
}

.btn-a {
    background-color: #F5C836;
}

.btn-a-outline:hover {
    background-color: #fce205;
    color: #6e6e6e;
}

.btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
} */
</style>
</head>
<body>
	<h1>수험 번호 발급</h1>
	<table>
		<tr>
			<th>회차</th>
			<th>수험번호</th>
			<th>이름</th>
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

			out.println("</tr>");
			count++;
			
		}
		%>
	</table>
</body>
</html>