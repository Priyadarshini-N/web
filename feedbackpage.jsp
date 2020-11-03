<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<title>FEEDBACK FORM</title>
<head>
<style>
body{
    height: 100%;
    width: 100%;
    background-position: center;
    background-size: cover;
    position: absolute;   
}

input:required:focus {
	border: 5px solid red;
}

.frm{
    width: 380px;
    height: 480px;
    position: relative;
    margin: 6% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
    border-radius:20px;
}

#name {
	padding-left: 17px;
	background: transparent;
}

#email {
	padding-left: 19px;
	background: transparent;
}

#phonenumber {
	padding-left: 17px;
	background: transparent;
}

#tarea {
	background: transparent;
}

#id1 {
	display: inline-block;
	padding-right: 5px;
	color: greenyellow;
}

#id2 {
	display: inline-block;
	padding-right: 33px;
	color: greenyellow;
}

#id3 {
	display: inline-block;
	padding-right: 37px;
	color: greenyellow;
}

#id4 {
	text-align: left;
	color: greenyellow;
	margin-left: 5px;
}

#submit {
	padding-left: 20px;
	border-radius: 25px;
	background: linear-gradient(to right, #ff105f, #ffad06);
	padding: 10px;
	width: 260px;
	height: 40px;
	padding-right: 5px;
	color: greenyellow;
}

#id8 {
	color: greenyellow;
}

#btn {
	transition: .5s;
	width: 250px;
	height: 40px;
	background: linear-gradient(to right, #ff105f, #ffad06);
	border-radius: 30px;
	color: greenyellow;
}
</style>
</head>
<body background="${pageContext.request.contextPath}/resources/images/c.jpg">
	<div class="frm">
		<form:form class="rainbow-text" method="get" modelAttribute="bookingid" action="submitfeedback">
			<button type="button" id="btn">FEEDBACK</button>
			<br> <br> <label id="id1"><i>User ID</i></label> <br>
			<form:input type="text" path="userMaster.id" name="userId"  required="required" />
			<br> <br> <label id="id2"><i>Booking ID</i></label><br>
			<form:input path="id" type="number" id="email" name="bookingId" required="required" /><br>
			'Share Your Experience With Us! Help Us to Improve Ourself'
			<br>
			<textarea id="wordings" name="wordings" rows="4" cols="50"></textarea>
			<form action="submitfeedback" method="get">
			<button type="submit" id="submit" value="submit">SUBMIT
				FEEDBACK</button>
				</form>
		</form:form>
	</div>
</body>
</html>