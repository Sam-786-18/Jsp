<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form B</title>
</head>

<body>
<h1>From B.jsp</h1>


BillAmt(request):: <%=pageContext.findAttribute("billAmt") %><br>
<br>UserName(session)::<%=pageContext.findAttribute("username")%><br>
RequestCount(application)<%=pageContext.findAttribute("reqCount") %>
<br>
<jsp:forward page="C.jsp"/>
</body>
<h1>New Request</h1>
<a href="A.jsp">Form1</a> <a href="B.jsp">Form2</a> <a href="C.jsp">Form3</a> <a href="D.jsp">Form4</a>

</html>
