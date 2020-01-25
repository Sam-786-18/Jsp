<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="wheat">
<center>
<h1>Employee Registration Page</h1>
<form action="reg" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>Employee ID</td>
<td><input type=text name=tid></td>
</tr>
<tr>
<td>Employee name</td>
<td><input type=text name=tname></td>
</tr>
<tr>
<td>Employee Address</td>
<td><input type=text name=tadd></td>
</tr>
<tr>
<td>Employee Photo</td>
<td><input type=file name=tphoto></td>
</tr>
<tr>
<td>Employee Resume</td>
<td><input type=file name=tresume></td>
</tr>

<tr>

<td><input type=submit value=Register></td>
</tr>

</table>
</form>
</center>

</body>
</html>