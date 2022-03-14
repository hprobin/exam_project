<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 

<head>
	<title>메인 페이지</title>
</head>
<body>
	<%=new Date()%>
	<h2>Hello World</h2>
	<a href="createExamNum">링크1123</a><br/>

	<button onclick='location ="createExamNum"'>접수하기</button>
	<button onclick='location="Exam"'>응시하기</button>
	<button onclick='location="Result"'>성적확인</button>
	<button onclick='location="Admin"'>관리자</button>
</body>