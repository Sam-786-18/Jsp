<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="email" value="manoj@gmail.com" scope="session"/>
Value:<c:out value="${email}"/><br>
<c:remove var="email" scope="session"/>
Value:<c:out value="${email}"/>
