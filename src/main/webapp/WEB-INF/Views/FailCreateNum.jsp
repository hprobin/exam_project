<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주민번호 3회중복으로 인한 생성실패</title>
<style>
@font-face {
	font-family: 'twaysky';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twaysky.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	background-color: #ADD8E6;
}

h1 {
	position: relative;
	text-align: center;
	color: #353535;
	font-size: 50px;
	font-family: 'twaysky';
	margin-top: 5%;
}

p {
	font-family: 'twaysky';
	font-weight: 300;
	text-align: center;
	font-size: 18px;
	color: #676767;
}

.frame {
	width: 90%;
	margin: 40px auto;
	text-align: center;
}

button {
	margin: 50px;
}

.custom-btn {
	width: 130px;
	height: 40px;
	color: #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-family: 'twaysky';
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	outline: none;
}

.btn-12 {
	position: relative;
	right: 20px;
	bottom: 20px;
	border: none;
	box-shadow: none;
	width: 130px;
	height: 40px;
	line-height: 42px;
	-webkit-perspective: 230px;
	perspective: 230px;
}

.btn-12 span {
	background: rgb(0, 172, 238);
	background: linear-gradient(0deg, rgba(0, 172, 238, 1) 0%,
		rgba(2, 126, 251, 1) 100%);
	display: block;
	position: absolute;
	width: 130px;
	height: 40px;
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	border-radius: 5px;
	margin: 0;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}

.btn-12 span:nth-child(1) {
	box-shadow: -7px -7px 20px 0px #fff9, -4px -4px 5px 0px #fff9, 7px 7px
		20px 0px #0002, 4px 4px 5px 0px #0001;
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	transform: rotateX(90deg);
	-webkit-transform-origin: 50% 50% -20px;
	-moz-transform-origin: 50% 50% -20px;
	transform-origin: 50% 50% -20px;
}

.btn-12 span:nth-child(2) {
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	transform: rotateX(0deg);
	-webkit-transform-origin: 50% 50% -20px;
	-moz-transform-origin: 50% 50% -20px;
	transform-origin: 50% 50% -20px;
}

.btn-12:hover span:nth-child(1) {
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	transform: rotateX(0deg);
}

.btn-12:hover span:nth-child(2) {
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	color: transparent;
	-webkit-transform: rotateX(-90deg);
	-moz-transform: rotateX(-90deg);
	transform: rotateX(-90deg);
}

.btbt {
	text-align: center;
}
</style>
</head>
<body>
	<h1>주민등록번호가</h1>
	<h1>3회 중복 접수되어</h1>
	<h1>처리에 실패하였습니다.</h1>
	<div class="btbt">
		<button class="custom-btn btn-12" onclick="location.href='index.jsp' ">
			<span>가기!</span><span>메인으로~</span>
		</button>
	</div>
</body>
</html>