<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="uname" value="manoj@gmail.com" scope="session"/>
<c:if test="${!empty uname}">
   hello Mr/Miss/Mrs : <c:out value="${uname}"/> <br>
   hello Mr/Miss/Mrs :  ${uname}
</c:if>
