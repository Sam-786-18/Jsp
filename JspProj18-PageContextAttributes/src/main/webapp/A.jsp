<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>From A</title>
</head>
<b>From A.jsp </b>
<body>
<%
//create diff scopes of attributes
pageContext.setAttribute("billAmt","2000",pageContext.REQUEST_SCOPE);
 pageContext.setAttribute("username","satish",pageContext.SESSION_SCOPE);
 pageContext.setAttribute("reqCount","100",pageContext.APPLICATION_SCOPE);
 %>
<!--forward request  -->
<jsp:forward page="B.jsp"/>
</body>
<h1>New Request</h1>
<a href="A.jsp">Form1</a> <a href="B.jsp">Form2</a> <a href="C.jsp">Form3</a> <a href="D.jsp">Form4</a>

</html>