<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form D</title>
</head>
<h1>From D.jsp</h1>
<body>
BillAmt(request)::<%=pageContext.findAttribute("billAmt") %>
<br>
UserName(session)::<%=pageContext.findAttribute("username") %>
<br>
ReqCount(application)::<%=pageContext.findAttribute("reqCount") %><br>

</body>
<h1>New Request</h1>
<a href="A.jsp">Form1</a> <a href="B.jsp">Form2</a> <a href="C.jsp">Form3</a> <a href="D.jsp">Form4</a>

</html>