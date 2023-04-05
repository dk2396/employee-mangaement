<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="<c:url value='/css/styles.css' />">
</head>
<body>
	<h1>Add Employee</h1>
	<form:form action="/employees/add" method="post" modelAttribute="employee" onsubmit="return validateDob()">
		<table>
			<tr>
				<td><form:label path="firstName">First Name<span style="color: red;">*</span>:</form:label></td>
				<td><form:input path="firstName" required="required" /></td>
				<td><form:errors path="firstName" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name<span style="color: red;">*</span>:</form:label></td>
				<td><form:input path="lastName" required="required" /></td>
				<td><form:errors path="lastName" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="dob">Date of Birth<span style="color: red;">*</span>:</form:label></td>
                <td><input type="date" id="dob" name="dob" required="required"/></td>
				<td><form:errors path="dob" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="department">Department<span style="color: red;">*</span>:</form:label></td>
				<td><form:select path="department">
						<c:forEach items="${departments}" var="department">
							<form:option value="${department}">${department}</form:option>
						</c:forEach>
					</form:select></td>
				<td><form:errors path="department" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="salary">Salary<span style="color: red;">*</span>:</form:label></td>
				<td><form:input path="salary" required="required"/> </td>
				<td><form:errors path="salary" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="manager">Manager:</form:label></td>
				<td><form:select path="manager.id">
						<form:option value="">--None--</form:option>
						<c:forEach items="${managers}" var="manager">
						    <form:option value="${manager.id}">${manager.firstName} ${manager.lastName}</form:option>
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
<script>
    $(document).ready(function() {
        $('.datepicker').datepicker({
            dateFormat: 'yy-mm-dd',
            changeYear: true,
            changeMonth: true,
            yearRange: "-100:+0"
        });
    });

    function validateDob(){
        var dob=new Date(document.getElementById("dob").value);
        var today=new Date();
        var age=today.getFullYear()-dob.getFullYear();
        if(age<18){
            alert("you must be 18 years");
            return false;
        }
        return true;
    }
</script>
</html>
