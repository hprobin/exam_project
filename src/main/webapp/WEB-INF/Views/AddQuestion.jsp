<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제 추가</title>
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
	font-size: 70px;
	font-weight: 400;
	margin-top: 5%;
	text-shadow: -3px 0 #000, 0 3px #000, 3px 0 #000, 0 -3px #000;
	text-shadow: 2px 2px 2px #000;
}
table {
	margin-top:3%;
	margin-left:auto; 
    margin-right:auto;
    width: 60%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    font-size : 20px;
}
input {
    position: relative;
    border: none;
    display: inline-block;
    padding: 5px 20px;
    border-radius: 15px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 300;
    transition: 0.25s;
    margin: 1%;
    font-size: 30px;
}
</style>
</head>
<body>
	<%=new Date()%>
	<h1>문제 추가</h1>
	<form method="post"  action="AddQ">
		<table class="type09">
			<thead>
				<tr>
					<th scope="cols"></th>
					<th scope="cols">내용</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">문제</th>
					<td><input type="text" name="ques" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 1</th>
					<td><input type="text" name="ex1" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 2</th>
					<td><input type="text" name="ex2" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 3</th>
					<td><input type="text" name="ex3" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 4</th>
					<td><input type="text" name="ex4" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">정답 번호</th>
					<td><input type="text" name="ans" value="" size="20"
						maxlength="100"></td>
				</tr>
			</tbody>
		</table>
		<div class="inputbox">
				<input type="submit" value="전송"/><br>
		</div>
	</form>
</body>
</html>