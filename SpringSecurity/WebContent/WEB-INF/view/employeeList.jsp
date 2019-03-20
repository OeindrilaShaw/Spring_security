<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Employee Management Information</h2>
<h6><a href="<c:url value='j_spring_security_logout'/>">Click here</a></h6>
<form:form method="post" action="add" commandName="employee"> <!-- commandName is compulsory with we can go to the controller -->
<table>
<tr>
<td>
<form:label path="firstname">
<spring:message code="label.firstname"></spring:message>
</form:label></td>
<td>
<form:input path="firstname"/>
</td>
</tr>
<tr>
<td>
<form:label path="lastname">
<spring:message code="label.lastname"></spring:message>
</form:label></td>
<td>
<form:input path="lastname"/>
</td>
</tr>
<tr>
<td>
<form:label path="email">
<spring:message code="label.email"></spring:message>
</form:label></td>
<td>
<form:input path="email"/>
</td>
</tr>
<tr>
<td>
<form:label path="telephone">
<spring:message code="label.telephone"></spring:message>
</form:label></td>
<td>
<form:input path="telephone"/>
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="<spring:message code="label.add"/>"/>
</td></tr>
</table>
</form:form>
<h3>Employee Information</h3>
<c:if test="${!empty employeeList}">
<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Telephone</th>
<th>Action</th>
</tr>
<c:forEach items="${employeeList}" var="emp">
<tr>
<td>${emp.id}</td>
<td>${emp.firstname} ${emp.lastname}</td>
<td>${emp.email}</td>
<td>${emp.telephone}</td>
<td><a href="delete/${emp.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>