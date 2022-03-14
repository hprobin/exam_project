<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<body>
<%=new Date()%>

	<h1>관리자 페이지</h1><br>

	<button class="btn btn-a" onclick="location.href='AddQuestion' ">문제 추가</button>
	<button class="btn btn-a" onclick="location.href='SelectAllQuestion' ">전체 문제 조회</button>
	<button class="btn btn-a" onclick="location.href='SelectAllMember' ">응시자 검색</button><br>
	<button class="btn btn-a" onclick="location.href='index.jsp' ">메인으로</button><br>
		
</body>
</html>