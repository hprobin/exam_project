<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제 추가</title>
</head>
<body style="margin-top: 20%">
	<%=new Date()%>

	<form method="post" action="AddQuestion">
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
					<td width="500"><input type="text" name="ques" value="" size="20" maxlength="100"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 1 : </b></td>
					<td width="500"><input type="text" name="n1" value="" size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 2 : </b></td>
					<td width="500"><input type="text" name="n2" value="" size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 3 : </b></td>
					<td width="500"><input type="text" name="n3" value="" size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>보기 4 : </b></td>
					<td width="500"><input type="text" name="n4" value="" size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>정답 : </b></td>
					<td width="500"><input type="text" name="ans" value="번호를 적어주세요 ex) 4" size="20" maxlength="10"></td>
				</tr>
			</tbody>
		</table>
		<input stylealign="center" type="submit" value="전송" /><br>
	</form>
</body>
</html>