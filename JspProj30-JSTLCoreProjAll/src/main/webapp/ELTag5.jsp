<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
<c:when test="${param.p>0}">
${param.p} is +ve
</c:when>
<c:when test="${param.p<0}">
${param.p} is -ve
</c:when>
<c:otherwise>
${param.p} is zero
</c:otherwise>
</c:choose>

