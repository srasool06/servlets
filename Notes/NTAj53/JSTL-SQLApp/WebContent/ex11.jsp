<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>

<!--  Create DataSource -->
<sql:setDataSource var="ds"  driver="oracle.jdbc.driver.OracleDriver"
                                      url="jdbc:oracle:thin:@localhost:1521:xe" user="system" password="manager"/>
<!--  Execute non-select Query -->                                      
<sql:update dataSource="${ds}" var="count" sql="update Emp set sal=sal+? where empno=?">
   <sql:param value="2000"/>
   <sql:param value="7900"/>
</sql:update>
 ${count} records are updated.                                      

                                
                                      
