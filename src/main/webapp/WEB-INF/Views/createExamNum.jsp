<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%=new Date()%>
   <form method="post" action="createNumber">
      <h1>접수 하기</h1>
      <label for="name">이름</label>
      <input type="text" name="name" value="이름을 입력하세요"><br>
      <label for="number">주민등록번호</label>
      <input type="number" name="number">
      <input type="submit" value="전송"/><br>
   </form>
</body>
</html>