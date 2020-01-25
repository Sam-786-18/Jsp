<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searching..in Google</title>
</head>
<body>
<%
//read form data
String name=request.getParameter("comany");
//redirct the url (Google)
 response.sendRedirect("https://www.google.co.in/search?q="+name);
 %>
</body>
</html>