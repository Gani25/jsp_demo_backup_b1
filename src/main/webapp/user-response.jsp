<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Response</title>
</head>
<body>

	<h1>User Info</h1>

	<p>
		First Name:
		<%=request.getParameter("fname")%></p>
	<p>
		Last Name:
		<%=request.getParameter("lname")%></p>
	<p>
		Gender:
		<%=request.getParameter("gender")%></p>
	<p>
		State:
		<%=request.getParameter("state")%></p>

	<p>Skills</p>
	<ol>
	<%
	String[] skills = request.getParameterValues("skills");
	
	for(String skill: skills){
		out.print("<li>"+skill+"</li>");
	}
	%>
	</ol>
</body>
</html>