<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! public String generateWishMsg(String user) {
java.util.Calendar calendar=null;
int hour=0;

/* get System date */

calendar=Calendar.getInstance();
//get current hour of the day(24 hour format)
hour=calendar.get(java.util.Calendar.HOUR_OF_DAY);
//generate wish msg
if(hour<12)
return "Good Morning::"+user;
else if(hour<=16)
return "Good Afternoon::"+user;
else if(hour<=20)
return "Good evening::"+user;
else
return "Good Night::"+user;


}
  %>
  <h1>Welcome To Jsp</h1>
  Date And Time: <%= new java.util.Date()%><br>
  <% String name="satish"; %><br>
  Wish Message::<%=generateWishMsg(name) %>
  <br>
  Request Obj class name::<%=request.getClass() %><br>
  Out Obje class name::<%=out.getClass() %> <br>
  