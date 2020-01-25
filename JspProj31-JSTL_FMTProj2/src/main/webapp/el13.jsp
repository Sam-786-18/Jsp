<%@page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Hindi -->
<fmt:setLocale value="hi_IN"/>
<jsp:useBean id="dt" class="java.util.Date"/>
<fmt:formatDate value="${dt}" var="fdate"/>
<br>Formatted Date::${fdate}
<fmt:formatNumber value="10000000" var="fnumber"/><br>
Formatted Number::${fnumber}
<fmt:setBundle var="bundle" basename="com/mhb/commons/myfile" />
<fmt:message bundle="${bundle}" key="wish.msg" var="fmsg"/>
<br> Formatted Message::${fmsg}