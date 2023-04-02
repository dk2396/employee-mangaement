<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
<link rel="stylesheet" href="<c:url value='/css/styles.css' />">
</head>
<body>
    <div class="container">
        <div class="content">
            <h2>Edit Employee</h2>
            <form:form method="post" action="/employees/edit/${employee.id}" modelAttribute="employee">
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
                        <td><form:label path="dob">Date of Birth:</form:label></td>
                        <td><form:input path="dob" /></td>
                        <td><form:errors path="dob" cssClass="error" /></td>
                    </tr>
                    <tr>
                        <td><form:label path="department">Department:</form:label></td>
                        <td><form:select path="department">
                                <form:option value="">--Select Department--</form:option>
                                <form:options items="${departments}" />
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
                        <td>
                            <form:select path="manager">
                            <form:option value="">--None--</form:option>

                            <c:forEach items="${managers}" var="manager">
                            <c:if test="${manager.id != employee.manager.id}">
                                    <form:option value="${manager.id}">${manager.firstName} ${manager.lastName}</form:option>
                            </c:if>
                            </c:forEach>
                        </form:select>
                        </td>
                        <td><form:errors path="manager" cssClass="error" /></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <input type="submit" value="Save Changes" />
                            <a href="<c:url value='/employees' />">Cancel</a>
                        </td>
                    </tr>
                </table>
            </form:form>
        </div>
    </div>
</body>
</html>
