<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	height: 100%;
	width: 100%;
	background-position: center;
	background-size: cover;
	position: relative;
}

.form-group {
	width: 30%;
}
</style>
</head>
<body
	background="${pageContext.request.contextPath}/resources/images/d.jpg">

	<div class="container">
		<form:form method="get" modelAttribute="venuedetails"
			action="update-venue1">
			<form:hidden path="id" />

			<fieldset class="form-group">
				<form:label path="id">Hall Id</form:label>
				<form:input path="id" size="20" pattern="[0-9]+"
					title="Enter only numbers" name="id" type="text"
					class="form-control" required="required" />
				<form:errors path="id" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="hallName">Hall Name</form:label>
				<form:input path="hallName" size="20" pattern="[A-Za-z ]{1,32}"
					title="Enter uppercase or lowercase only.. not numbers"
					name="hallName" type="text" class="form-control"
					required="required" />
				<form:errors path="hallName" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="venue">Venue</form:label>
				<form:input path="venue" type="text" name="venue"
					class="form-control" required="required" />
				<form:errors path="venue" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="place">Place</form:label>
				<form:input path="place" size="20" pattern="[A-Za-z ]{1,32}"
					title="Enter uppercase or lowercase only.. not numbers" type="text"
					name="place" class="form-control" required="required" />
				<form:errors path="place" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="facilitiesAvailable">Facilities Available</form:label>
				<form:input path="facilitiesAvailable" type="text"
					name="facilitiesAvailable" class="form-control" required="required" />
				<form:errors path="facilitiesAvailable" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="noOfSeats">No Of Seats</form:label>
				<form:input path="noOfSeats" size="20" pattern="[0-9]+"
					title="Enter only numbers" name="noOfSeats" type="text"
					class="form-control" required="required" />
				<form:errors path="noOfSeats" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="availableDays">Available Days</form:label>
				<form:input path="availableDays" name="availableDays" type="text"
					class="form-control" required="required" />
				<form:errors path="availableDays" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="cost">Cost</form:label>
				<form:input path="cost" size="20" pattern="^\d*(\.\d{0,2})?$"
					title="Enter only numbers(Eg:2000.00)" id="cost" type="text"
					class="form-control" required="required" />
				<form:errors path="cost" cssClass="text-warning" />
			</fieldset>
			<fieldset class="form-group">
				<form:label path="status">Status</form:label>
				<form:input path="status" size="20" pattern="[A-Za-z ]{1,32}"
					title="Enter uppercase or lowercase only.. not numbers"
					name="status" type="text" class="form-control" required="required" />
				<form:errors path="status" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="contactNumber">contactNumber</form:label>
				<form:input path="contactNumber" size="10"
					pattern="[7-9]{1}[0-9]{9}"
					title="Phone number with 7-9 and remaing 9 digit with 0-9"
					name="contactNumber" type="text" class="form-control"
					required="required" />
				<form:errors path="contactNumber" cssClass="text-warning" />
			</fieldset>
			<button type="submit" class="btn btn-success">Submit</button>
		</form:form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>