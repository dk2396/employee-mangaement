<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-Hc5l1aKZ10EGO/9a27PQqUzCk1tzJVYjomsClixLs6UvJxhDjzzsXp8hT0j4hU1Q" crossorigin="anonymous">

<!-- JS Bundle -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+dbzKpXLmIfTJ90KC8WwQ6E2Kcjo+J+" crossorigin="anonymous"></script>

<header>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="<c:url value='/' />">Employee Management System</a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="<c:url value='/employees/add' />">Add Employee</a></li>
                <li><a href="<c:url value='/employees' />">Employee Listing</a></li>
            </ul>
        </div>
    </nav>
</header>
</head>
