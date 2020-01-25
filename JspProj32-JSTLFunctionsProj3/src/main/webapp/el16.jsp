<%@page isELIgnored="false" contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="msg" value="Welcome To JSTl" scope="request"/>
UpperCase::${fn:toUpperCase(msg)}<br>
LowerCase::${fn:toUpperCase(msg)}<br>
Substring::${fn:substring(msg,0,4)}<br>

