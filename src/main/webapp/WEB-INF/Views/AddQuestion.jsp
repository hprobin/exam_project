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
	<!-- <form method="post" action="AddQuestion">
		<table border="1" bordercolor="#A9E2F3" align="center"
			style="border-collapse: collapse">
			<thead>
				<tr height="20px">
					<th colspan="2" bgcolor="#CEE3F6">문제 추가</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>문제 : </b></td>
					<td width="500"><input type="text" name="ques" value=""
						size="20" maxlength="100"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 1 : </b></td>
					<td width="500"><input type="text" name="n1" value=""
						size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 2 : </b></td>
					<td width="500"><input type="text" name="n2" value=""
						size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 3 : </b></td>
					<td width="500"><input type="text" name="n3" value=""
						size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 4 : </b></td>
					<td width="500"><input type="text" name="n4" value=""
						size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>정답 : </b></td>
					<td width="500"><input type="text" name="ans"
						value="번호를 적어주세요 ex) 4" size="20" maxlength="10"></td>
				</tr>
			</tbody>
		</table>
		<input stylealign="center" type="submit" value="전송" /><br>
	</form> -->

	<form method="post" action="AddQuestion">
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
					<td><input type="text" name="ques" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 2</th>
					<td><input type="text" name="ques" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 3</th>
					<td><input type="text" name="ques" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">보기 4</th>
					<td><input type="text" name="ques" value="" size="20"
						maxlength="100"></td>
				</tr>
				<tr>
					<th scope="row">정 답</th>
					<td><input type="text" name="ques" value="" size="20"
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