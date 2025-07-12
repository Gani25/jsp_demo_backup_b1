<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>

	<%!boolean checkPrime(int num) {
		if (num <= 1) {
			return false;
		}

		int i;
		for (i = 2; i <= num / 2; i++) {
			if (num % i == 0) {
				return false;
			}
		}
		return true;
	}%>

	<h1>Hello All Today is My First JSP Page</h1>

	<h3>
		Todays date is:
		<%=new Date()%>
	</h3>

	<hr>

	<h1>Display odd numbers from 1 to 20</h1>
	<%
	for (int i = 1; i <= 20; i += 2) {
		out.print("<strong>" + i + "<strong> &nbsp; ");
	}
	%>
	<hr>
	<h1>Number 11 is Prime or Not? <%= checkPrime(11) %> </h1>
	<hr>
	<%
		if(checkPrime(11)){
			out.print("<h1>11 is a Prime Numebr..</h1>");
		}else{
			out.print("<h1>11 is not a Prime Numebr..</h1>");
			
		}
	%>
	
	<hr>
	<h1>Print Series of Prime number from 1 to 1000</h1>
	<p style="background-color: cyan; font-size:24px;">
		<%
			for(int i = 2; i<=1000;i++)
			{
				if(checkPrime(i)){
					out.print("<b>"+i+"</b> &nbsp;");
				}
			}
		%>
	</p>
	
	

</body>
</html>