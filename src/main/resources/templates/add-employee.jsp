<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
</head>
<body>
	<h1>Add Employee</h1>
	<form:form action="/employees/add" method="post" modelAttribute="employee">
		<table>
			<tr>
				<td><form:label path="firstName">First Name:</form:label></td>
				<td><form:input path="firstName" /></td>
				<td><form:errors path="firstName" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name:</form:label></td>
				<td><form:input path="lastName" /></td>
				<td><form:errors path="lastName" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="dateOfBirth">DOB:</form:label></td>
				<td><form:input path="dateOfBirth" /></td>
				<td><form:errors path="dateOfBirth" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="department">Department:</form:label></td>
				<td><form:select path="department">
						<c:forEach items="${departments}" var="department">
							<form:option value="${department}">${department}</form:option>
						</c:forEach>
					</form:select></td>
				<td><form:errors path="department" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="salary">Salary:</form:label></td>
				<td><form:input path="salary" /></td>
				<td><form:errors path="salary" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="manager">Manager:</form:label></td>
				<td><form:select path="manager">
						<form:option value="">--None--</form:option>
						<c:forEach items="${employees}" var="employee">
							<form:option value="${employee.id}">${employee.firstName} ${employee.lastName}</form:option>
						</c:forEach>
					</form:select></td>
				<td><form:errors path="manager" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="Add Employee" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
