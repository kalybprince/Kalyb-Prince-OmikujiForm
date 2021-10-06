<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="d-flex flex-column justify-content-center text-center">
			<h1>Send an omikuji!</h1>
		    <form action="/processForm" method="post">
		    	<div>
			        <label>Pick any number from 5 to 25</label>
			        <input type="number" id="quantity" name="quantity" min="5" max="25">		    	
		    	</div>
		    	<div>
			        <label>Enter the name of city</label>
			        <input type="text" name="city">		    	
		    	</div>
		    	<div>
			        <label>Enter the name of a real person</label>
			        <input type="text" name="person">		    	
		    	</div>
		    	<div>
			        <label>Enter professional endeavor</label>
			        <input type="text" name="endeavor">		    	
		    	</div>
		    	<div>
			        <label>Enter any type of living thing</label>
			        <input type="text" name="thing">		    	
		    	</div>
		    	<div>
			        <label>Say something nice to someone</label>
			        <textarea name="nice"></textarea>		    	
		    	</div>
		    	<div>
			        <input type="submit">		    	
		    	</div>
		    </form>		
		</div>
	</div>
</body>
</html>