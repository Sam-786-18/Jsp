<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
//get Additional bill Amount
float billAmt=Float.parseFloat(request.getParameter("bAmt"));
//provide 20% disount on billAmt
float discount=billAmt*0.2f;
//calc final bill amount
float finalAmt=billAmt-discount;
 %>
 <b>Item name::</b><%=request.getParameter("iname") %><br>
 <br><b>Item price:::</b><%=request.getParameter("iprice") %><br>
 <br> <b>Item Qty:</b><%=request.getParameter("iqty") %><br>
 <br><b>Bill Amount</b><%=billAmt %>
 <br><b>Discount:::</b><%=discount %>
 <br><b>Final Bill Amount::</b><%=finalAmt %>
<br><b><a href="form.html">home</a></b>
