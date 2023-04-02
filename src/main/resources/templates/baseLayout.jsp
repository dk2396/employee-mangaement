<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<header>
		<h1><tiles:getAsString name="title" /></h1>
		<nav>
			<ul>
				<li><a href="<c:url value='/employees/add' />">Add Employee</a></li>
				<li><a href="<c:url value='/employees/list' />">Employee Listing</a></li>
			</ul>
		</nav>
	</header>
	<section>
		<tiles:insertAttribute name="body" />
	</section>
	<footer>
		<p>&copy; 2023 My Company. All rights reserved.</p>
	</footer>
</body>
</html>
