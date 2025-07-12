<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>

<%-- <form action="<%=request.getContextPath()%>/user-response.jsp"> --%>
<form action="user-response.jsp">
	
	First Name: <input type="text" name="fname">
	<br>
	<br>
	Last Name: <input type="text" name="lname">
	<br>
	<br>
	Gender:
	<input type="radio" value="Male" name="gender" id="m">  <label for="m">Male</label>
	<input type="radio" value="Female" name="gender" id="f"> <label for="f">Female</label>
	<input type="radio" value="Other" name="gender" id="o"> <label for="o">Other</label>
	<br>
	<br>
	
	State:
	<select name="state" >
		<option >Maharashtra</option>
		<option >Gujrat</option>
		<option >Delhi</option>
		<option >UP</option>
		<option >Tamil Nadu</option>
	</select>
	<br>
	<br>
	Skills:
		<input type="checkbox" name="skills" value="C++" >C++
		<input type="checkbox" name="skills" value="Python" >Python
		<input type="checkbox" name="skills" value="Java" >Java
		<input type="checkbox" name="skills" value="Excel" >Excel
		<input type="checkbox" name="skills" value="Power BI" >Power BI
		<input type="checkbox" name="skills" value="Tableu" >Tableu
		<input type="checkbox" name="skills" value="Spring Boot" >Spring Boot
		<input type="checkbox" name="skills" value="Linux" >Linux
	
	<br>
	<br>
	<button>Submit</button>
</form>

</body>
</html>