<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.File,java.util.*,java.sql.*"%>
<H1>List Of All files under C:\store</H1>
<%  
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
PreparedStatement ps=con.prepareStatement("select * from EmployeeReg");
ResultSet rs=ps.executeQuery();
%>
<body bgcolor="wheat">
<table border=1>
<tr>
<td>Employee Name</td><td>Employee Address</td><td>Employee Resume</td><td>Employee Photo</td></tr>
<%while(rs.next()){%> 
<tr>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(2) %></td>
<td><a href='downlaod.jsp?resumeId=<%=rs.getString(1)%>'>Download here</a></td>
<td><a href='downlaod.jsp?photoId=<%=rs.getString(1)%>'>Download here</a>
</td>
</tr>
<% }%>
</table>
</body>