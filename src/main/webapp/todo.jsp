<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToDO with Sessions</title>
</head>
<body>

	<form action="#">
		<label for="task">Task</label> <input type="text" name="task"
			id="task"> <br> <br> <input type="submit"
			value="save Task">
			
			
			
			<a href="todo.jsp?msg=clear">Clear All Tasks</a>

	</form>

	<hr>
	<%
	String msg = request.getParameter("msg");
	if(msg!=null && msg.equalsIgnoreCase("clear")){
		session.removeAttribute("tasks");
		
	}
				
	String myTask = request.getParameter("task");
	List<String> allTasks = (List<String>) session.getAttribute("tasks");
	if (allTasks == null) {
		allTasks = new ArrayList<>();
	}

	session.setAttribute("tasks", allTasks);
	if (myTask != null && !myTask.isBlank()) {

		if (!allTasks.contains(myTask.trim())) {

			allTasks.add(myTask.trim());
		}

	}

	if (!allTasks.isEmpty()) {
		
		out.print("<h1>Task: </h1>");
		out.print("<ol>");

		for (String task : allTasks) {

			out.print("<li>" + task + " <a href='#'>Remove</a></li>");
			
		}

		out.print("</ol>");
	}
	//System.out.println(allTasks);
	%>
</body>
</html>