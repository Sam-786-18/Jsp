<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach var="p" items="${paramValues}">
<br>Param name::${p.key}<br>
Param Value::<c:forEach var="pv" items="${p.value}">
${pv},<br>
</c:forEach>
</c:forEach>


