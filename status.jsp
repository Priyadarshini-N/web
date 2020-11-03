<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<title></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<form:form method="get" modelAttribute="venuedetailslist">
			<fieldset class="form-group">
				<form:label path="availableDays">Available Days</form:label>
				<form:input path="availableDays" name="availableDays" type="text"
					class="form-control" required="required" />
				<form:errors path="availableDays" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="place">Place</form:label>
				<form:input path="place" name="place" type="text"
					class="form-control" required="required" />
				<form:errors path="place" cssClass="text-warning" />
			</fieldset>
		</form:form>
		<form:form method="get" modelAttribute="vd">
		

				<table class="table table-hover">
					<thead>
						<th>HALL NAME</th>
						<th>STATUS</th>
						<th>MORE INFO</th>
					</thead>
					<c:forEach items="${vd}" var="vd1">
						<tr>
							<td>${vd1.hallName }</td>
							<td>${vd1.status}</td>
							<td><a href="/fullvenuedetails?id=${vd1.id}" >Click here</a></td>
				
						</tr>
					</c:forEach>
				</table>


			
		</form:form>
		
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>