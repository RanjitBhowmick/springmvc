<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.vtech.springmvc.bean.Student"%>

<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
<style>
table {
	width: 80%;
	border-collapse: collapse;
	margin: 20px auto;
}

th, td {
	border: 1px solid black;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

button {
	padding: 5px 10px;
	border: none;
	cursor: pointer;
}

.edit {
	background-color: #4CAF50;
	color: white;
}

.delete {
	background-color: #f44336;
	color: white;
}
</style>
</head>
<body>

	<%
	List<Student> students = (List<Student>) request.getAttribute("studentList");
	if (students.size() > 0) {
	%>

	<h1 style="text-align: center;">Student List</h1>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Standard</th>
				<th>Mobile</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Student student : students) {
			%>
			<tr>
				<td><%=student.getName()%></td>
				<td><%=student.getStandard()%></td>
				<td><%=student.getMobile()%></td>
				<td><%=student.getEmail()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<%
	}
	%>
	
</body>
</html>
