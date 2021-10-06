<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div>
			<h1>Here is your omikuji!</h1>
			<div>
				<p>In <c:out value="${ quantity }"></c:out> years, you will live in <c:out value="${ city }"></c:out> with <c:out value="${ person }"></c:out> as your roommate, <c:out value="${ endeavor }"></c:out> for a living. Also, <c:out value="${ nice }"></c:out></p>
			</div>
		</div>
	</div>
</body>
</html>