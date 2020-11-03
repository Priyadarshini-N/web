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
<table border =1>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
<tr>
<td>1</td>2<td>3</td>
</tr>
</table>
</body>
</html>