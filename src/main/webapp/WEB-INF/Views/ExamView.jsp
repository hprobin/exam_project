<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 응시</title>
</head>
<body>
   <h1>시험 응시 하는 페이지 </h1>
   
   <form method="post" action="examStart">
    <table border="1" bordercolor="#A9E2F3" align="center" style="border-collapse:collapse">
      <thead>
        <tr height="20px">
          <th colspan="2" bgcolor="#CEE3F6">시험 응시</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td bgcolor="#E6E6E6" align="center"><b>이름 : </b></td>
          <td width="500"><input type="text" name="name" value="" size="20" maxlength="10"></td>
        </tr>
        <tr>
          <td bgcolor="#E6E6E6" align="center"><b>수험번호 : </b></td>
          <td width="500"><input type="text" name="number" value="" size="20" maxlength="10"></td>
        </tr>
      </tbody>
      </table>
      <input stylealign="center" type="submit" value="시험 시작하기"/><br>
      </form>
</body>
</html>