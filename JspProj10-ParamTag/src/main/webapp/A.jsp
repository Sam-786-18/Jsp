<b> from Start  of A.jsp</b>
<% int x=10;
int y=x*x+100;
%>
<jsp:forward page="B.jsp">
<jsp:param value="MahaBharat" name="bookName"/>
<jsp:param value="<%=y %>" name="bAmt"/>
</jsp:forward>
<b>End of A.jsp</b>