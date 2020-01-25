<%@ page isELIgnored="false" import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--Traditional Loop  -->

<c:forEach var="i" begin="1" end="10" step="1">
2*${i}=${2*i}<br>
</c:forEach>
<br><br><br>
<!--Enhance Loop  -->
<jsp:scriptlet>
String name[]={"ram","sita","Laxhman","manoj"};
request.setAttribute("nameList", name);
</jsp:scriptlet>
<b>The names are::</b>
<c:forEach var="nam" items="${nameList}">
${nam},<br>
</c:forEach>
<br><br><br>
<!--Enhance Loop  -->
<jsp:scriptlet>
<![CDATA[
List<String> courese=new ArrayList<String>();
courese.add("java");courese.add(".Net");courese.add("PHP");
request.setAttribute("crsList", courese);
]]>
</jsp:scriptlet>
<b>The Courses are:</b>
<c:forEach var="crs" items="${crsList}">
${crs},<br>
</c:forEach>