<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
</body>
</html>
