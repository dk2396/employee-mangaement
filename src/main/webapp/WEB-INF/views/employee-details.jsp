<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>
<link rel="stylesheet" href="<c:url value='/css/styles.css' />">
</head>
<body>
    <div class="container">
        <div class="content">
            <h2>Employee Details</h2>
            <table>
                <tr>
                    <td>ID:</td>
                    <td>${employee.id}</td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td>${employee.firstName}</td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>${employee.lastName}</td>
                </tr>
                <tr>
                    <td>Date of Birth:</td>
                    <td>${employee.dob}</td>
                </tr>
                <tr>
                    <td>Department:</td>
                    <td>${employee.department}</td>
                </tr>
                <tr>
                    <td>Salary:</td>
                    <td>${employee.salary}</td>
                </tr>
                <tr>
                    <td>Manager:</td>
                    <td>${employee.manager != null ? employee.manager.firstName : 'None'}</td>
                </tr>
            </table>
            <br>
            <a href="<c:url value='/employees'/>">Back to Employee List</a> |
            <a href="<c:url value='/employees/edit/${employee.id}'/>">Edit</a>
        </div>
    </div>
</body>
</html>
