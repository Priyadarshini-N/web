<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head></head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">
<body>
<form method="get" action="duration">
 <select name="duration" id="time">
  <option value="daily">Daily</option>
  <option value="weekly">Weekly</option>
  <option value="monthly">Monthly</option>
  <option value="specificdate">Particular Date</option>
  <option value="sixmonths">Six Months</option>
  <option value="yearly">Yearly</option>
</select>

<button type="submit">Generate Report</button>
</form>
<body>
<form method="get" action="monthly">
  Choose the month for report generation
 <select name="month" id="time">
 	
  <option value="01">January</option>
  <option value="02">February </option>
  <option value="03">March </option>
  <option value="04">April </option>
  <option value="05">May </option>
  <option value="06">June </option>
  <option value="07">July </option>
  <option value="08">August </option>
  <option value="09">September </option>
  <option value="10">October </option>
  <option value="11">November </option>
  <option value="12">December </option>
</select>

<button type="submit">Generate Report</button>
</form>
<form method="get" action="yearly">
Enter the year for report generation
<input type=text name=year placeholder="Enter in YYYY format">
<button type="submit">Generate Report</button>
</form>
<form method="get" action="specificdate">
Enter specific date for report generation
<input type=text name=specificdate placeholder="Enter in YYYY-MM-DD format">
<button type="submit">Generate Report</button>
</form>
<form method="get" action="sixmonths">
 <select name="sixmonths" id="time">
  <option value="first">Jan-Jun</option>
  <option value="second">Jul-Dec</option>
 
</select>
<button type="submit">Generate Report</button>
</form>
<form>
Click Here For Weekly Report
</form>
