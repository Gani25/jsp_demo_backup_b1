<%@page import="util.FunctionUtil"%>
<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String value = request.getParameter("number") == null?"": request.getParameter("number");%>
	<form action="prime.jsp">
		<label for="num">Enter a Number</label> <input type="text" id="num"
			name="number" value="<%=value%>"> <br> <br> <input type="submit"
			value="Display Prime">
	</form>

	<hr>
	<%
	String stringNumber = request.getParameter("number");
	if (stringNumber != null && !stringNumber.isBlank()) {

		if (Pattern.matches("^[-\\d]+$", stringNumber)) {
			//out.print("<h1 style='color:red'>Number is = " + stringNumber + "</h1>");
			int num = Integer.parseInt(stringNumber);

			if (num <= 1) {
		out.print("<p style='color:red'>Numbers can be greater than 1..<p>");

			} else {

		out.print("<h1>Series of prime number from 1 to " + num + "</h1>");
		out.print("<p style='background-color: cyan; font-size:24px;'>");
		for (int i = 2; i <= num; i++) {
			if (FunctionUtil.checkPrime(i)) {
				out.print("<b>" + i + "</b> &nbsp;");
			}
		}
		out.print("</p>");
			}

		} else {
			out.print("<p style='color:red'>Enter Numbers Only<p>");
		}
	} else {

		out.print("<p style='color:red'>Enter Positive Integer..<p>");
	}
	%>

</body>
</html>