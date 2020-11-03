<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<form:form method="get" modelAttribute="booking">
			<fieldset class="form-group">
				<form:label path="id">Booking Id:</form:label>
				<form:input path="id" name="id" type="text" class="form-control"
					required="required" />
				<form:errors path="id" cssClass="text-warning" />

				<fieldset class="form-group">
					<form:label path="userMaster.id">User Id:</form:label>
					<form:input path="userMaster.id" type="text" name="userMaster"
						class="form-control" required="required" />
					<form:errors path="userMaster.id" cssClass="text-warning" />

				</fieldset>
			</fieldset>
			<fieldset class="form-group">
					<form:label path="userMaster.firstName">User's First Name</form:label>
					<form:input path="userMaster.firstName" type="text" name="userMaster"
						class="form-control" required="required" />
					<form:errors path="userMaster.firstName" cssClass="text-warning" />

				</fieldset>
				<fieldset class="form-group">
					<form:label path="userMaster.lastName">User's Last Name</form:label>
					<form:input path="userMaster.lastName" type="text" name="userMaster"
						class="form-control" required="required" />
					<form:errors path="userMaster.lastName" cssClass="text-warning" />

				</fieldset>
			<fieldset class="form-group">
				<form:label path="venueDetails.id">Venue Id:</form:label>
				<form:input path="venueDetails.id" type="text" name="venueDetails"
					class="form-control" required="required" />
				<form:errors path="venueDetails.id" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="venueDetails.hallName">Hall Name:</form:label>
				<form:input path="venueDetails.hallName" type="text" name="venueDetails"
					class="form-control" required="required" />
				<form:errors path="venueDetails.hallName" cssClass="text-warning" />

			</fieldset>



			<fieldset class="form-group">
				<form:label path="status">Status</form:label>
				<form:input path="status" name="status" type="text"
					class="form-control" required="required" />
				<form:errors path="status" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
				<form:label path="date">Date of booking</form:label>
				<form:input path="date" name="status" type="text"
					class="form-control" required="required" />
				<form:errors path="date" cssClass="text-warning" />

			</fieldset>
		</form:form>
		<form method="get" action="booking"
			onclick="alert('Your Hall has been booked')">
			<a type="button" class="btn btn-success"
				href="/approve?id=${booking.id}">Acknowledge</a>
		</form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>
