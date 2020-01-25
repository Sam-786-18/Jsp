<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineCaptcha</title>
</head>
<body>
<form action="process.jsp" method="post">
<%
ReCaptcha captcha=ReCaptchaFactory.newReCaptcha("6LdsGosUAAAAAEeHCNjlXHk3QvNmL_NEZNLKaMJh", "6LdsGosUAAAAANuOYKwPAF5MWiZx9miRkzphZUa9", false);
out.print(captcha.createRecaptchaHtml(null,null));
 %>
 <input type="submit" value="submit"/>
</form>
</body>
</html>