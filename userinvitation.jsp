<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head></head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<body>
	<form method="get" action="us1">



		<select name="occasionId">
			<option>Choose the occasion</option>
			<c:forEach var="d" items="${occasionlist}">
				<option value="${d.id}">${d.occasionName}</option>

			</c:forEach>

		</select> 
		
		<button type="submit">FIND WORDINGS</button>

	</form>
	<form>
		<select name="wordingsid">
			<option>Choose the wordings</option>
			<c:forEach var="d" items="${wordingslist}">
				<option value="${d.id}">${d.wordings}</option>
			</c:forEach>
		</select>
		</form>
				<form method="post">
		
			<c:forEach var="d" items="${imagelist}">
				 <input type="radio" name="images" value="${d.id}"/><img width="50" height="50" src="data:image/png;base64,${d.images1}" />
			</c:forEach>
			</form>
	
	