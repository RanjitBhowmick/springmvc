<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Spring MVC Demo</title>
</head>
<body>
	<p>Welcome to Spring MVC Demo</p>
	<hr>
	<br>
	<form action="/addNewStudentDetails" method="get">
		<button type="submit" class="submit-button">Add New Student</button>
	</form>
	<br>
	<form action="/getStudentDetails" method="get">
		<button type="submit" class="submit-button">Get Student</button>
	</form>
	<br>
	<form action="/searchStudentDetails" method="get">
		<button type="submit" class="submit-button">Search Student</button>
	</form>
	<hr>
</body>
</html>