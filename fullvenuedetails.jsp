<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body >
	
	<div class="container">
		<form:form method="get" modelAttribute="venuedetailslist" >
		<fieldset class="form-group">
                <form:label path="hallName">Hall Name</form:label>
                <form:input path="hallName" name="hallName" type="text"  class="form-control"
                    required="required" />
                <form:errors path="hallName" cssClass="text-warning" />
            </fieldset>
            	<fieldset class="form-group">
				<form:label path="venue">Venue</form:label>
				<form:input path="venue" type="text" name="venue" class="form-control"
					required="required"/>
				<form:errors path="venue" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
                <form:label path="place">Place</form:label>
                <form:input path="place" type="text" name="place" class="form-control"
                    required="required" />
                <form:errors path="place" cssClass="text-warning" />
            </fieldset>
            	<fieldset class="form-group">
				<form:label path="facilitiesAvailable">Facilities Available</form:label>
				<form:input path="facilitiesAvailable" type="text" name="facilitiesAvailable" class="form-control"
					required="required"/>
				<form:errors path="facilitiesAvailable" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
                <form:label path="noOfSeats">No Of Seats</form:label>
                <form:input path="noOfSeats" name="noOfSeats" type="text" class="form-control"
                    required="required" />
                <form:errors path="noOfSeats" cssClass="text-warning" />
            </fieldset>
            	<fieldset class="form-group">
				<form:label path="availableDays">Available Days</form:label>
				<form:input path="availableDays"  name="availableDays" type="text" class="form-control"
					required="required"/>
				<form:errors path="availableDays" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
                <form:label path="cost">Cost</form:label>
                <form:input path="cost" id="cost" type="text" class="form-control"
                    required="required" />
                <form:errors path="cost" cssClass="text-warning" />
            </fieldset>
	<fieldset class="form-group">
				<form:label path="status">Status</form:label>
				<form:input path="status" name="status" type="text" class="form-control"
					required="required"/>
				<form:errors path="status" cssClass="text-warning" />

			</fieldset>
				</form:form>
		<form method="get" action="booking" onclick="alert('Your Hall has been booked')">
		<a type="button" class="btn btn-success" href="/booking?id=${venuedetailslist.id}">Book Now</a>
		</form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>