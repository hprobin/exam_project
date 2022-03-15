<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<head>
<title>메인 페이지</title>
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
	position: relative;
}

h1 {
	font-size: 80px;
	font-weight: 400;
	margin-top: 6%;
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
    font-size: 27px;
    width : 256px;
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
	<h1>🤷‍♀️우리 강사님은 어떤분일까요~?🤷‍♂️</h1><br>
	<button class="btn btn-a" onclick="location.href='createExamNum' ">접 수</button><br>
	<button class="btn btn-a" onclick="location.href='Exam' ">시험응시</button><br>
	<button class="btn btn-a" onclick="location.href='FindNumber' ">수험번호찾기</button><br>
	<button class="btn btn-a" onclick="location.href='ResultInsert' ">성적조회</button><br>
	<button class="btn btn-a" onclick="location.href='AdminLogin' ">관리자</button>

</body>