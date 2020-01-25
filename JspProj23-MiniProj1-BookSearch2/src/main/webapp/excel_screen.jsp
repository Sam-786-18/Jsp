<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.mhb.dto.BookDTO"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Excel Data</title>
</head>
<body>
<%

List<BookDTO> listDTO=(List<BookDTO>)request.getAttribute("booksList");
 response.setContentType("application/vnd.ms-excel");
 response.addHeader("content-disposition", "attachemnet;fileName=book.xls");
 %>
 <h1 style="color:blue;">Book Belonging to Category=<%=request.getParameter("category") %></h1>
 <%
 if(listDTO.size()!=0){%>
 <table border="1">
 <tr style="color:red"><th>BookId</th><th>BookName</th><th>Author</th><th>Status</th><th>Category</th></tr>
<%
for(BookDTO dto:listDTO){%>
<tr>
<td><%=dto.getBookId() %></td>
<td><%=dto.getBookName() %></td>
<td><%=dto.getAuthorName()%></td>
<td><%=dto.getStatus() %></td>
<td><%=dto.getCategory() %></td>
</tr>
<%}
 %>
 </table>
 <%}//if
 else{%>
 <h1 style="color:red">Records Not Found</h1>
 <%}
  %>
  <br>
  <a href="search.html">home</a>
<a href="javaScript:showPrint()"> print</a>
<script language="JavaScript">
function showPrint() {
frames.focus();
frames.print();
	
}
</script>

</body>
</html>