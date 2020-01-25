<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.mhb.beans.StudentBeans" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Geting Info</title>
</head>
<body border="1" style="text-align:center">
<jsp:useBean id="st" class="com.mhb.beans.StudentBeans" scope="session"/>
<br>
sno::<jsp:getProperty property="sno" name="st"/>
<br>
Sname::<jsp:getProperty property="sname" name="st"/>
<br>
AVg::<jsp:getProperty property="avg" name="st"/>


</body>
</html>