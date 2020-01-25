<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--Establish the Connection  -->

<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="scott" password="tiger"/>
<!--Execute SQL Query --> 
<sql:query dataSource="${ds}" var="rs" sql="select * from student"/>
<!--Process the result  -->
<c:forEach var="st" items="${rs.rows}">
<table border="1" style="text-align: center;">
<tbody>
<tr><th>sno</th><th>sanme</th><th>sadd</th></tr>
<tr><td >${st.sno}</td>
<td>${st.sname}</td>
<td>${st.sadd}</td>
</tr>
</tbody>
</table>

</c:forEach>
