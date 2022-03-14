<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 접수</title>
</head>
<body style="margin-top: 20%">
	<%=new Date()%>

	<form method="post" action="AdminLogin">
		<table border="1" bordercolor="#A9E2F3" align="center"
			style="border-collapse: collapse">
			<thead>
				<tr height="20px">
					<th colspan="2" bgcolor="#CEE3F6">관리자 로그인</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>아이디 : </b></td>
					<td width="500"><input type="text" name="id" value="" size="20" maxlength="10"></td>
				</tr>
				<tr>
					<td bgcolor="#E6E6E6" align="center"><b>비밀번호 : </b></td>
					<td width="500"><input type="password" name="pwd" value="" size="20" maxlength="10"></td>
				</tr>
			</tbody>
		</table>
		<input stylealign="center" type="submit" value="전송" /><br>
	</form>
</body>
</html>