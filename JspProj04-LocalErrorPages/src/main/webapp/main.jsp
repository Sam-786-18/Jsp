<%@page isErrorPage="true" %>
<%@page errorPage="err.jsp" %>
<%int x=Integer.parseInt("a10");%>
value:<%=x %>
<%=exception.toString()%>