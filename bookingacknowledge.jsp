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
<form:form method="get" modelAttribute="booking">
		

				<table class="table table-hover">
					<thead>
						<th>BOOKING ID</th>
						<th>MORE INFO</th>
					</thead>
					<c:forEach items="${booking}" var="bd">
						<tr>
			
							<td>${bd.id}</td>
							<td><a href="/fullbookingdetails?id=${bd.id}" >Click here</a></td>
						</tr>
					</c:forEach>
				</table>


			
		</form:form>
		</div>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>