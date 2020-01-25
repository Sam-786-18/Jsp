<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*,java.sql.*"%>
<%
String fileName="";
String queryText="";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");
 
 if(request.getParameter("resumeId")!=null)
 queryText="select resume from employeereg where eid="+request.getParameter("resumeId");
 else
 queryText="select photo from employeereg where eid="+request.getParameter("photoId");
 PreparedStatement ps=con.prepareStatement(queryText);
 ResultSet rs=ps.executeQuery();
 while(rs.next()){
 fileName=rs.getString(1);
 //get file length and set it as response content length
 File file=new File(fileName);
 long length=file.length();
 response.setContentLengthLong(length);
 //ge file Mime type and make response content type
 String mimetype=application.getMimeType(fileName);
 response.setContentType((mimetype!=null)?mimetype:"application/octet-stream");
 //give instruction to browser to make the response (file content) as downloadable file
 response.addHeader("Content-Disposition", "attachment;filename="+fileName.substring(fileName.lastIndexOf("/")+1, fileName.length()));
 //getget Output pointing to response object
 OutputStream os=response.getOutputStream();
 //getInput Sream pointing to file
 InputStream is=new FileInputStream(file);
 //write buffer based logic to write content to response object
 byte[] buffer=new byte[1024];
 int bytesRead=0;
 while((bytesRead=is.read())!=1)
 {
 os.write(buffer,0,bytesRead);
 }
 //close steams
 is.close();
 os.flush();
 os.close();
 }
 %>
