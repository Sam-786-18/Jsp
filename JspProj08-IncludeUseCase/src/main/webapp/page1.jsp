<table border="1" cols="3" rows="3" width="100%" height="100% ">
<tr height="10%">
<td colspan="3">
<jsp:include page="/headerurl"/></td>
</tr>
<tr height="70%">
<td width="30%"><%@include file="left_content.html" %></td>
<td width="50%"><jsp:include page="welcome.jsp" flush="true"/></td>
<td width="20%">
<table>
<tr>
<td><jsp:include page="weather.jsp" flush="true"/></td>
</tr>
<tr>
<td><jsp:include page="horoscope.jsp" flush="true"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="3"><%@include file="footer.html" %></td>

</tr>
</table>