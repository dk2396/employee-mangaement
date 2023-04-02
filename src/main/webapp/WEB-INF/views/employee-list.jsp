<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Listing</title>
<link rel="stylesheet" href="<c:url value='/css/styles.css' />">
</head>
<body>
    <div class="container">
        <div class="content">
            <h2>Employee Listing</h2>
            <a href="<c:url value='/employees/add'/>">Add Employee</a>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Date of Birth</th>
                        <th>Department</th>
                        <th>Salary</th>
                        <th>Manager</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${employees}" var="employee">
                        <tr>
                            <td>${employee.id}</td>
                            <td>${employee.firstName}</td>
                            <td>${employee.lastName}</td>
                            <td>${employee.dob}</td>
                            <td>${employee.department}</td>
                            <td>${employee.salary}</td>
                            <td>${employee.manager != null ? employee.manager.firstName : ''}</td>
                            <td>
                                <a href="<c:url value='/employees/${employee.id}'/>">View</a> |
                                <a href="<c:url value='/employees/edit/${employee.id}'/>">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
