<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--Establish the Connection-->

<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="scott" password="tiger"/>
<!--Execute SQL Query --> 
<sql:update var="count" dataSource="${ds}" sql="insert into student values(?,?,?)">
<sql:transaction dataSource="${ds}">
<sql:param value="2221"/>
<sql:param>Sateesh</sql:param>
<sql:param>Chennai</sql:param>
</sql:transaction>
</sql:update>
${count} recard are inserted