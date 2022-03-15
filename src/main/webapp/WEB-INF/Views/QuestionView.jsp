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
<title>시험중</title>
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
	background-color: #ADD8E6;
	/* position: relative; */
}

h1 {
	font-size: 30px;
	font-weight: 400;
	margin-top: 6%;
	text-shadow: -3px 0 #000, 0 3px #000, 3px 0 #000, 0 -3px #000;
	text-shadow: 2px 2px 2px #000;
}

h2{
	font-size: 80px;
	font-weight: 400;
	margin-top: 3%;
	text-shadow: -3px 0 #000, 0 3px #000, 3px 0 #000, 0 -3px #000;
	text-shadow: 2px 2px 2px #000;
}

input[type="checkbox"] {
    display:none;
}

input[type="checkbox"] + label {
    color:#f2f2f2;
}

input[type="checkbox"] + label span {
    display:inline-block;
    width:19px;
    height:19px;
    margin:-2px 10px 0 0;
    vertical-align:middle;
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) left top no-repeat;
    cursor:pointer;
}

input[type="checkbox"]:checked + label span {
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -19px top no-repeat;
}

</style>
</head>

<body>
	<%
		List<QuestionDto> list = (ArrayList) request.getAttribute("result");
		int index = (int)request.getAttribute("resultnum");
	%>
	
	<h1>📖 ${resultnum}번</h1>
	<form method="post" action="inputAnswer">
	<input type="hidden" name="num" value="${resultnum}">
	<input type="hidden" name="number" value="${number}">
	<input type="hidden" name="name" value="${name}">
	
		<% 
			out.println("<h2>" + list.get(0).getQues()+ "</h2>");
			out.println("<input type ='radio' name = 'n' value = 1 >" + list.get(0).getN1() + "</br>");
			out.println("<input type ='radio' name = 'n' value = 2 >" + list.get(0).getN2() + "</br>");
			out.println("<input type ='radio' name = 'n' value = 3 >" + list.get(0).getN3() + "</br>");
			out.println("<input type ='radio' name = 'n' value = 4 >" + list.get(0).getN4() + "</br>");
		%>
		
		
		<input stylealign="center" type="submit" value="다음문제" /><br>
	</form>
</body>
</html>