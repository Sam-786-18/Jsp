<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url var="googleurl" value="https://google.co.in/search?q=ameerpet"/>
<c:redirect url="${googleurl}"/>