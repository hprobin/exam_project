<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수검번호 조회</title>
</head>
<body style="margin-top:20%">
   <%=new Date()%>
   
   <form method="post" action="selectNum">
    <table border="1" bordercolor="#A9E2F3" align="center" style="border-collapse:collapse">
      <thead>
        <tr height="20px">
          <th colspan="2" bgcolor="#CEE3F6">수검번호 조회</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td bgcolor="#E6E6E6" align="center"><b>이름 : </b></td>
          <td width="500"><input type="text" name="name" value="" size="20" maxlength="10"></td>
        </tr>
        <tr>
          <td bgcolor="#E6E6E6" align="center">
            <b>주민등록번호 : </b>
          </td>
          <td width="500"><input type="text" name="number" value="" size="6" maxlength="6">
          -<input type="password" name="number2" value="" size="7" maxlength="7"> 
           예)900101-1234567</td>
        </tr>
      </tbody>
      </table>
      <input stylealign="center" type="submit" value="전송"/><br>
      </form>
</body>
</html>