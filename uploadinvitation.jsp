<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<form method="get" action="uploadbackground">
<input type=file name=bgpic onchange="fn1(this)" accept="image/png" /><br/>
				<button type="submit" class="btn btn-success">Upload BackGround Image</button>
</form>
<form method="get" action="uploadimage">
<input type=file name=igpic onchange="fn1(this)" accept="image/png" /><br/>
				<button type="submit" class="btn btn-success">Upload Image</button>
</form>
<form method="get" action="uploadwordings" onsubmit=fn()>
<select name="occasionid" >
<option>Choose the occasion</option>
	<c:forEach var="d" items="${occasionlist}">
		<option value="${d.id}">${d.occasionName}</option>
	</c:forEach>
</select>
<textarea id="wordings" name="wordings" rows="4" cols="50"></textarea>
<button type="submit" class="btn btn-success">Submit</button>

</form>

<br/>
</body>
</html>