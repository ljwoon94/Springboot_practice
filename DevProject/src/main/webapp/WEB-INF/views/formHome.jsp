<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/register" method="GET">
		<input type="submit" value="register(GET)">
	</form>
	
	<form action="/board/register" method="POST">
		<input type="submit" value="register(POST)">
	</form>
	
	<form action="/board/modify" method="GET">
		<input type="submit" value="modify(GET)">
	</form>
	
	<form action="/board/modify" method="POST">
		<input type="submit" value="modify(POST)">
	</form>
	
	<form action="/board/remove" method="POST">
		<input type="submit" value="remove(POST)">
	</form>
	
	<form action="/board/list" method="GET">
		<input type="submit" value="list(GET)">
	</form>
</body>
</html>