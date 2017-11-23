<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>About</title>
</head>
<body>
<h1>
	ABOUT.jsp
</h1>

<P>  The time on the server is ${serverTime}. </P>
<br>
<c:out value = "${result}"/><br><br>

<c:forEach items="${records}" var="rec"> 
	<c:out value="${rec.nombre}" />
	<a href='<c:url value="/about/${rec.adminnum}/update"/>'>Update</a><br>
</c:forEach>

</body>
</html>
