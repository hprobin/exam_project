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
table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
	<%=new Date()%>
	<h1>문제 추가</h1>
	<form method="post" action="AddQ">
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
					<th scope="row">정 답</th>
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