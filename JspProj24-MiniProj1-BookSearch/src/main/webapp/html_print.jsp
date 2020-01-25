<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.mhb.dto.BookDTO" isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script language="JavaScript">
function showPrint() {
frames.focus();
frames.print();	
}

</script>
<%
//read rquest attribute value
List<BookDTO> listDTO=null;
listDTO=(List<BookDTO>)request.getAttribute("booksList");
//display data base table having records
if(listDTO.size()!=0){%>
<h1 style='text-algin:center'>Book report for<%=request.getParameter("category")%></h1>
<table border="2">
<tr><th>BookId</th><th>BookName</th><th>Author</th><th>Status</th><th>Category</th><tr><%
for(BookDTO dto:listDTO){%>
<tr>
<td><%=dto.getBookId()%></td>
<td><%=dto.getBookName()%></td>
<td><%=dto.getAuthorName()%></td>
<td><%=dto.getStatus()%></td>
<td><%=dto.getCategory()%></td>
</tr>
<%}%>
</table>
<a href="javaScript:showPrint()">print</a>
<%}
else{%>

<h1 style='color:red'>No Books Found</h1>
<%}%>

<%--  <c:choose>
<c:when test="${!empty booksList}">
<table border="1">
<tr style="color:red"><th>BookId</th><th>BookName</th><th>Author</th><th>Status</th><th>Category</th></tr>
<c:forEach  var="dto" items="${booksList})">
<tr>
<td>${dto.bookId}</td>
<td>${dto.bookName}</td>
<td>${dto.authorName}</td>
<td>${dto.status}</td>
<td>${dto.category}</td>

</tr>
</c:forEach>
</table>
</c:when>
<c:otherwise>

<h1 style="color:red">No Books Found</h1>
</c:otherwise>
</c:choose>  --%>
<a href="search.html">home</a>
  
