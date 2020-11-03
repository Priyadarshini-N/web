<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head></head>
<body>

<form action="addcontacts1" method="get" onsubmit="alert('Your Details are submitted Successfully')" >
<input type="text" name="firstName" placeholder="Enter the First Name" required>
<input type="text" name="lastName"placeholder="Enter the Last name" required>
<input type="tel" name="contactNumber" placeholder="Enter the contactNumber" required>
<input type="email" name="emailId" placeholder="Enter the Email Id" required>
<button type="submit" >Add</button></form>
</html>