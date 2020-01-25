<%@page import="java.sql.*" %>
<%!
Connection con=null;
PreparedStatement ps1=null,ps2=null;
private static final String INSERT_QUERY ="INSERT INTO STUDENT VALUES (?,?,?)";
private static final String GET_STUDENT="SELECT SNO,SNAME,SADD FROM STUDENT";
public void jspInit(){
ServletConfig cg=null;
String driver=null,url=null,user=null,pwd=null;
try{
/* get access to servletConfig object */
cg=getServletConfig();
/*read init param value from web.xml file  */
driver=cg.getInitParameter("driver");
url=cg.getInitParameter("url");
user=cg.getInitParameter("dbuser");
pwd=cg.getInitParameter("dbpwd");
/*register Driver  */
Class.forName(driver);
/*establish the connection */
con=DriverManager.getConnection(url,user,pwd);
/*create PreaparedStament Object  */
ps1=con.prepareStatement(INSERT_QUERY);
ps2=con.prepareStatement(GET_STUDENT);
}
catch(SQLException se){
se.printStackTrace();
}
catch(ClassNotFoundException cnf){
cnf.printStackTrace();
}
}
/* JspInit() */
%>
<% String param=null;
String sname=null,sadd=null;
int sno=0;
int result=0;
ResultSet rs=null;
/*read additional req param (s1) value  */
param=request.getParameter("s1");
/* differtiate request processing logic for Button ,hyperlink  */
if(param.equalsIgnoreCase("register")){
//read form data
sno=Integer.parseInt(request.getParameter("sno"));
sname=request.getParameter("sname");
sadd=request.getParameter("sadd");
/* set values( form data) to Insert query params  */
ps1.setInt(1, sno);
ps1.setString(2, sname);
ps1.setString(3, sadd);
/*excute the query  */
result=ps1.executeUpdate();
/*process the Result */
if(result==0){
%>
<h1>Registration failed</h1>
<%
}
else{
%>
<h1>Registration Successfully</h1>
<%}
}
/*exceute select query  */
else{
rs=ps2.executeQuery(GET_STUDENT);
 %>
<table border="1" width="100px" height="200px">
  <tr><th>sno</th> <th>sname</th> <th>sadd</th></tr>
 <% 
  
  /* process resultSet and display content as html table */
  
  while(rs.next()){%>
   
    <tr>
    <td><%=rs.getInt(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    </tr>
   <%}%>
</table>
<%}
%>

<br><a href="input.htm">home</a>
<%!
public void jspDestroy(){
try{
if(ps2!=null){
ps2.close();
}
}
catch(SQLException se){
se.printStackTrace();
}
try{
if(ps1!=null){
ps1.close();
}}
catch(SQLException se){
se.printStackTrace();
}
try{
if(con!=null){
con.close();}
}
catch(SQLException se){
se.printStackTrace();
}
}

 %>