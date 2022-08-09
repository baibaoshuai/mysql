<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		out.print("<table border = 1\">");
		for(int i = 1; i<9; i++){
			out.print("<tr>");
			for(int j = 1; j<9; j++){
				out.print("<td>" + i *j + "<td>");
			}
	
			out.print("<tr>");
		}
			out.print("</table>");
	%>
	
</body>
</html>