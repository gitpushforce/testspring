<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    
    <h2>menu</h2>
    <sec:authorize access="!isAuthenticated()">
    	Por favor inicie sesion
    </sec:authorize>
       <sec:authorize access="isAuthenticated()">
    	Usuario ha iniciado sesion como:
    	<sec:authentication property="principal" var="principal"/>
    	<c:set var="username" value="${principal.username}"/>
    	<c:out value="${username}"/>
    </sec:authorize>