<%@ page language="java" contentType="application/vnd.ms-excel"
    %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
window.history.forward(); 
function noBack() { 
    window.history.forward(); 
}
function fn1(x)
{
	alert(x.files[0].size);
}
</script>
</head>
<body>
<table border="1">
<tr>
<th>Booking Id</th>
<th>User Id</th>
<th>User Name</th>
<th>Booked Date</th>
</tr>
<c:forEach var="s" items="${fullbookinglist}">
<tr>
<td>${s.id }</td>
<td>${s.userMaster.id }</td>
<td>${s.userMaster.firstName }</td>
<td>${s.date1} </td>

</tr>
</c:forEach>
</table>
</body>
</html>