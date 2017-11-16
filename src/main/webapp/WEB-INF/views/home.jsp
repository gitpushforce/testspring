<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	 <link href="<c:url value="/resources/css/bootstrap-grid.css" />" rel="stylesheet">
	 <link href="<c:url value="/resources/css/bootstrap-reboot.css" />" rel="stylesheet">
	 <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	 <link href="<c:url value="/resources/css/test.css" />" rel="stylesheet" type="text/css">
</head>
<body>

<i class="fa fa-heart" aria-hidden="true"></i>
<h1>
	Hello world!  OMG!!
</h1>

<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Holy guacamole!</strong> You should check in on some of those fields below.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>


<button type="button" class="btn btn-primary">Primary</button>
<button type="button" class="btn btn-secondary">Secondary</button>
<button type="button" class="btn btn-success">Success</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-light">Light</button>
<button type="button" class="btn btn-dark">Dark</button>

<button type="button" class="btn btn-link">Link</button>

<br>
<br>


<P>  The time on the server is ${formattedDate}. </P>
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

<%-- <c:out value = "${adminForm.nombre}"/><br>
<c:out value = "${adminForm.cargo}"/> --%>
</body>

<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
</html>
