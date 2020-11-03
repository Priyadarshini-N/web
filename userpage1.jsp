<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head></head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
<body>
${error}
<form method="get" modelAttribute="usermaster">
 <a type="button" class="btn btn-success"  href="/viewuserprofile?id=${usermaster.id}">User Profile</a>
 </form>
 <form method="get" modelAttribute="usermaster" action="addcontacts">
 <a type="button" class="btn btn-success" href="/addcontacts">Add Contacts</a>
 </form>
  <form method="get" modelAttribute="usermaster" action="addcontacts">
 <a type="button" class="btn btn-success" href="/viewcontacts">Contacts List</a>
 </form>

 </form>
 <form method="get" action="status" >
 <input type="text" name= "occasiondate" placeholder="Enter the Date of your occasion" required>
<input type="text" name="place"placeholder="Enter the Place" required>
 <button type="submit">Check</button>
  
 </form>
 </body>
 </html>