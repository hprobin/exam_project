<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 응시</title>
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
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   display: flex;
   justify-content: center;
   align-items: center;
   height: 100vh;
   /* background: linear-gradient(45deg, greenyellow, dodgerblue); */
   font-family: 'twaysky';
}

.center {
   position: relative;
   padding: 50px 50px;
   background: #fff;
   border-radius: 10px;
}

.center h1 {
   font-size: 2em;
   border-left: 5px solid dodgerblue;
   padding: 10px;
   color: #000;
   letter-spacing: 5px;
   margin-bottom: 60px;
   font-weight: bold;
   padding-left: 10px;
}

.center .inputbox {
   position: relative;
   width: 300px;
   height: 50px;
   margin-bottom: 50px;
}
.inputbox-left {
   position: relative;
   width: 157px;
   height: 50px;
   margin-bottom: 50px;
   float : left;
   margin-right: 10px
}

.center .inputbox input {
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   border: 2px solid #000;
   outline: none;
   background: none;
   padding: 10px;
   border-radius: 10px;
   font-size: 1.2em;
}
.inputbox-left input {
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   border: 2px solid #000;
   outline: none;
   background: none;
   padding: 10px;
   border-radius: 10px;
   font-size: 1.2em;
}
.center .inputbox:last-child {
   margin-bottom: 0;
}

.center .inputbox span {
   position: absolute;
   top: 14px;
   left: 20px;
   font-size: 1em;
   transition: 0.6s;
   font-family: 'twaysky';
}

.center .inputbox input:focus ~ span, .center .inputbox input:valid ~
   span {
   transform: translateX(-13px) translateY(-35px);
   font-size: 1em;
}

.inputbox-left [type="submit"] {
   background: dodgerblue;
   color: #fff;
   border: #fff;
   font-family: 'twaysky';
   float : left;
   
}

.inputbox-left:hover [type="submit"] {
   background: linear-gradient(45deg, greenyellow, dodgerblue);
}

</style>

</head>
<body>
      <div class="center">
		<h1>시험 응시</h1>
		<form method="post" action="examStart">
			<div class="inputbox">
				<input type="text" name="name" size="20" maxlength="10"
					required="required"> <span>이 름</span>
			</div>
			<div class="inputbox">
				<input type="text" name="number" value="" size="8" maxlength="8"
					required="required"> <span>수험번호</span>
			</div>
			<div class="inputbox-left">
				<input type="submit" value="전송"/>
			</div>
			<div class="inputbox-left">
				<input type="submit" value="메인" onClick="location.href='index.jsp'"/>
			</div>
		</form>
	</div>
</body>
</html>