<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<form:form method="POST" modelAttribute="contactlist" action="updatecontact1">
		<form:hidden path="id"/>  

			<fieldset class="form-group">
                <form:label path="firstName">First Name</form:label>
                <form:input path="firstName" size="20" pattern="[A-Za-z ]{1,32}" title="Enter uppercase or lowercase only.. not numbers"  name="firstName" type="text" class="form-control"
                    required="required" />
                <form:errors path="firstName" cssClass="text-warning" />
            </fieldset>
            	<fieldset class="form-group">
				<form:label path="lastName">Last Name</form:label>
				<form:input path="lastName" size="20" pattern="[A-Za-z ]{1,32}" title="Enter uppercase or lowercase only.. not numbers" type="text" name="lastName" class="form-control"
					required="required"/>
				<form:errors path="lastName" cssClass="text-warning" />

			</fieldset>
			<fieldset class="form-group">
                <form:label path="emailId">Email Id</form:label>
                <form:input path="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Exmaple:abc@xyz.com" type="text" name="emailId" class="form-control"
                    required="required" />
                <form:errors path="emailId" cssClass="text-warning" />
            
			<fieldset class="form-group">
                <form:label path="contactNumber">Contact Number</form:label>
                <form:input path="contactNumber" size="10" pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9" name="contactNumber" type="text" class="form-control"
                    required="required" />
                <form:errors path="contactNumber" cssClass="text-warning" />
            </fieldset>
			<button type="submit" class="btn btn-success">Update</button>
		</form:form>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>