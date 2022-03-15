<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
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
	font-size: 100px;
	font-weight: 400;
	margin-top: 13%;
	text-shadow: -3px 0 #000, 0 3px #000, 3px 0 #000, 0 -3px #000;
	text-shadow: 2px 2px 2px #000;
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
    margin: 1%;
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
<%=new Date()%>

	<h1>Manage</h1><br>

	<button class="btn btn-a" onclick="location.href='AddQuestion' ">문제 추가</button>
	<button class="btn btn-a" onclick="location.href='SelectAllQuestion' ">전체 문제 조회</button>
	<button class="btn btn-a" onclick="location.href='SelectAllMember' ">응시자 검색</button>
	<button class="btn btn-a" onclick="location.href='index.jsp' ">메인으로</button><br>
		
</body>
</html>