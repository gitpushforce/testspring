<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  OMG!!
</h1>

<P>  The time on the server is ${serverTime}. </P>
<br>
<a href='<c:url value="/about"/>'>About</a>
<br>

<sf:form action="${pageContext.request.contextPath}/save" method="post" commandName="admin">
	<table>
		<tr>
			<td>Nombre</td>
			<td> <sf:input path="nombre" type="text"/> </td>
		</tr>
		<tr>
			<td>Cargo</td>
			<td> <sf:input path="cargo" type="text"/> </td>
		</tr>
		<tr>
			<td></td>
			<td> <input type="submit" value="Guardar cambios"/> </td>
		</tr>
	
	</table>

</sf:form>

<c:out value = "${adminForm.nombre}"/><br>
<c:out value = "${adminForm.cargo}"/>
</body>
</html>
