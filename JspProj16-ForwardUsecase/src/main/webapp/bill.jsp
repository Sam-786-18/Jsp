
<%
//read for data
String name=request.getParameter("iname");
float price=Float.parseFloat(request.getParameter("iprice"));

float qty=Float.parseFloat(request.getParameter("iqty"));
//calculate bill Amount
float billAmt=price*qty;
if(billAmt>=5000){%>
<jsp:forward page="discount.jsp">
<jsp:param name="bAmt" value="<%=billAmt %>" />
</jsp:forward>

<%}//if
else{%>
<b>Item name::<%=name %></b>
<br><b>Item BillAmt::<%=billAmt %></b>
<a href="form.html">home</a>
<%}
%>


