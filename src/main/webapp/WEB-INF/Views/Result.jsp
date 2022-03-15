<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="Pack01.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>시험 결과 조회</title>
<style>
@font-face {
	font-family: 'twaysky';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twaysky.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
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
	margin-top: 5%;
	margin-left: auto;
	margin-right: auto;
	width: 60%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
}

.btn {
	position: relative;
	border: none;
	display: inline-block;
	padding: 10px 25px;
	border-radius: 15px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
	text-decoration: none;
	font-weight: 300;
	transition: 0.25s;
	margin: 7%;
	font-size: 30px;
}

.btn-a {
	/* background-color: #F5C836; */
	
}

.btn-a-outline:hover {
	background-color: #fce205;
	color: #6e6e6e;
}

.btn:hover {
	letter-spacing: 2px;
	transform: scale(1.2);
	cursor: pointer;
}
</style>
</head>


<body>
	<h1>시험 결과 조회</h1>
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
		int score = 0;
		int i = 0;
		ResultSet rs = (ResultSet) request.getAttribute("result"); // member join mAnswer
		ResultSet answer = (ResultSet) request.getAttribute("result_2"); // questoin 추출

		while (rs.next()) {
			out.println("<tr>");
			String number = rs.getString("number");
			String name = rs.getString("name");
			String q[] = new String[5];
			String a[] = new String[5];

			q[0] = rs.getString("q1");
			a[0] = rs.getString("a1");
			q[1] = rs.getString("q2");
			a[1] = rs.getString("a2");
			q[2] = rs.getString("q3");
			a[2] = rs.getString("a3");
			q[3] = rs.getString("q4");
			a[3] = rs.getString("a4");
			q[4] = rs.getString("q5");
			a[4] = rs.getString("a5");

			while (answer.next()) {
				String idx = answer.getString("idx");
				String ans = answer.getString("ans");

				for (int k = 0; k < 5; k++) {
					if (q[k].equals(idx)) {
						if (a[k].equals(ans)) {
							score += 20;
						}
						score += 0;
					}
				}
			}
			out.println("<td>" + count + 1 + "</td>");
			out.println("<td>" + number + "</td>");
			out.println("<td>" + name + "</td>");
			out.println("<td>" + score + "</td>");

			out.println("</tr>");
			count++;
			i++;
		}
		%>
	</table>

	<button class="btn btn-a" onclick="location.href='index.jsp' ">메 인</button>
</body>
</html>