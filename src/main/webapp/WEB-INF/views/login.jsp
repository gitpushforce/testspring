<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html disable-url-rewriting="false">
<head>
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body>

	   <h1>Accesso a Usuario</h1>
	<c:if test="${param.error != null}">
	   	<span style="color:red;">Error de credenciales あああああ</span>
	</c:if>
   <form name='f' action="j_spring_security_check" method='POST'>
      <table>
      <tr>
            <td>Usuario:</td>
            <td><input type='text' name='usuario' value=''></td>
         </tr>
        <tr>
            <td>Contrasena:</td>
            <td><input type='password' name='contrasena' /></td>
         </tr>
         <tr>
            <td><input name="submit" type="submit" value="Accesar" /></td>
         </tr>
      </table>
  </form>

</body>
</html>