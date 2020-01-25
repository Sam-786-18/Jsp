<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="p" value="1" scope="page"/>
<%-- <c:set var="p" value="-1" scope="page"/>
<c:set var="p" value="0" scope="page"/> --%>
<c:choose>
<c:when test="${p>0}">
${p} is +ve
</c:when>
<c:when test="${p<0}">
${param.p} is -ve
</c:when>
<c:otherwise>
${p} is zero
</c:otherwise>
</c:choose>

