<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>



<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<div align="center">
		<form action="flightsearch.jsp">
			<font color="blue"><h2>Welcome to Flyaway.com!!! Login page !!!</h2></font>

			<br> Enter User name <input type="text" name="username">
			<br> <br> Enter password <input type="password"
				name="password"> <br> <br>
			<button>Login</button>
			<br> <br>
			
		</form>

		<form action="createuser.jsp">
			<button>Create Account</button>
			<br> <br>
		</form>

		<form action="changepass.jsp">
			<button>Change Password</button>
			<br> <br>
		</form>

	<centre> <strong><font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            </c:if></font></strong>
     </center>
            
     	</div>
	

	<%-- <!-- sql:setDataSource tag -->
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/db_world" user="root" password="root" />

	<!-- sql:update tag to INSERT -->

	<c:if test="${param.username != null and param.password != null}">

		<sql:query dataSource="${db}" var="rs">  
			SELECT * from userlogin  WHERE username="${param.username}" and password="${param.password}";  
			
	</sql:query>
		<c:if test="${rs.rowsByINDEX[0][0] == 1}">
		<c:redirect url = "flightsearch.jsp"> </c:redirect>
		</c:if>
		<c:if test="${rs.rowsByINDEX[0][0] == 0}">
		<fieldset>
			<caption>Error: </caption>
			<font color="red">Invalid Credentials</font>
		</fieldset>
		</c:if>
	</c:if> --%>




</body>
</html>