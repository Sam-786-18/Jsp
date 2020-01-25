<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.mhb.beans.StudentBeans" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UseBeansPOC</title>
</head>
<body border="1" style="text-align:center">
<!--create/locate java bean class object  -->
<jsp:useBean id="st" class="com.mhb.beans.StudentBeans" scope="session"/>
<!-- set values to bean properties -->
<jsp:setProperty property="sno" name="st" value="101"/>
<jsp:setProperty property="sname" name="st" value="satish"/>
<jsp:setProperty property="avg" name="st" value="89.25"/>
<jsp:setProperty property="*" name="st"/>
<br>
<b><i>Values are set</i></b>
<br><br>

<a href="get_values.jsp">Geting Data</a>

</body>
</html>