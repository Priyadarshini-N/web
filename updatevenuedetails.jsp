<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	position: absolute;
}
.container{
    width: 1200px;
    height: 600px;
    position: relative;
    margin: 6% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
    border-radius:20px;
}
    </style>
</head>
<body background="${pageContext.request.contextPath}/resources/images/c.jpg">
	<div class="container">
		<table class="table table-striped">
			<caption>VENUE DETAILS</caption>
			<thead>
				<tr>
					<th>HALL ID</th>
					<th>HALL NAME</th>
					<th>VENUE</th>
					<th>PLACE</th>
					<th>FACILITIES AVAILABLE</th>
					<th>NUMBER OF SEATS</th>
					<th>AVAILABLE DAYS</th>
					<th>COST</th>
					<th>STATUS</th>
					<th>CONTACT NUMBER</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${venuedetailslist}" var="venuedetails">
					<tr>
						<td>${venuedetails.id}</td>
						<td>${venuedetails.hallName}</td>
						<td>${venuedetails.venue}</td>
						<td>${venuedetails.place}</td>
						<td>${venuedetails.facilitiesAvailable}</td>
						<td>${venuedetails.noOfSeats}</td>
						<td>${venuedetails.availableDays}</td>
						<td>${venuedetails.cost}</td>
						<td>${venuedetails.status}</td>
						<td>${venuedetails.contactNumber}</td>
					
						<td>
							
								<a type="button" class="btn btn-success" 
								href="/update-venue?id=${venuedetails.id}">Update</a>
								
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>