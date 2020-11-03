<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head></head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
<body>
  <form method="get" modelAttribute="id">
 <a type="button" class="btn btn-success" href="/viewfeedback?id=${id}">FEEDBACK</a>
 </form>
 <form method="get" modelAttribute="id">
 <a type="button" class="btn btn-success" href="/userupload">UPLOAD INVITATION</a>
 </form>
 </body>
 
 </html>
