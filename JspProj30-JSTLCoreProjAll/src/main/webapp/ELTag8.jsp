<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="names" value="raja,ram,laxhman,monoj,rahul,soni,suhani,virat" scope="request"/>
the names are::<br>
<c:forTokens var="nam" items="${names}" delims=",">
${nam}
</c:forTokens>


