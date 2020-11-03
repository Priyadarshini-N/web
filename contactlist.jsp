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
		<table class="table table-striped">
			<caption>CONTACT DETAILS</caption>
			<thead>
				<tr>
					<th>FIRST NAME</th>
					<th>LAST NAME</th>
					<th>CONTACT NUMBER</th>
					<th>EMAIL ID</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contactlist}" var="contactlist">
					<tr>
						<td>${contactlist.firstName}</td>
						<td>${contactlist.lastName}</td>
						<td>${contactlist.contactNumber}</td>
						<td>${contactlist.emailId}</td>
					
						<td>
							
								<a type="button" class="btn btn-success" 
								href="/updatecontact?id=${contactlist.id}">Update</a>
								
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div>
			<a type="button" class="btn btn-success" href="/addcontacts">Add</a>
		</div>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>