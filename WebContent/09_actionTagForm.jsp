<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>07-9. ActionTagFrom</title>
</head>
<body>
	<!-- <form action ="09_actionTagTest.jsp"> -->
	<form action ="ActionTagServlet">
		아이디 :	<input type="text" name="userID"><br>
		비밀번호 : 	<input type="password" name="userPwd"><br>
		<input type="radio" name="loginCheck" value="user" checked> 사용자
		<input type="radio" name="loginCheck" value="manager"> 관리자<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>