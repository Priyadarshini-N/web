<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>

<style>

.topnav-centered p{
  float: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color:white;
}
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  
}

.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.navbar a.right {
  float: right;
}
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
  height: 75px;
}
body {
	height: 100%;
	width: 100%;
	background-position: center;
	background-size: cover;
	position: absolute;
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 5px 3px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

.button:hover {
	background-color: #3e8e41
}

.button1:hover {
	background-color: #ff6347
}

.button1 {
	background-color: red;
	border: none;
	color: white;
	padding: 5px 3px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

p {
	text-align: center;
	color: black;
	font-style: initial;
	font-size: x-large;
	height: 0px;
}

span {
	color: red;
}

.form-box {
	width: 380px;
	height: 480px;
	position: relative;
	margin: 6% auto;
	background: #fff;
	padding: 5px;
	overflow: scroll;
}

.input-field {
	width: 100%;
	padding: 10px 0;
	margin: 5px 0;
	border-left: 0;
	border-top: 0;
	border-right: 0;
	border-bottom: 1px solid #999;
	outline: none;
	background: transparent;
}

.submit-btn {
	width: 25%;
	padding: 10px 30px;
	cursor: pointer;
	display: block;
	margin: auto;
	background: linear-gradient(to right, #ff105f, #ffad06);
	border: 0;
	outline: none;
	/* changes */
	color: Black;
	border-radius: 30px;
}
</style>
<script>
	function checkForBlank() {
		var errorMessage = "";
		var a = 1;
		if (document.getElementById('id').value == "") {
			a = 0;

			document.getElementById('id').style.borderColor = "#ff6347"
		}

		if (document.getElementById('hallName').value == "") {
			a = 0;
			document.getElementById('hallName').style.borderColor = "#ff6347"
		}
		if (document.getElementById('venue').value == "") {
			a = 0;
			document.getElementById('venue').style.borderColor = "#ff6347"
		}
		if (document.getElementById('place').value == "") {
			a = 0;
			document.getElementById('place').style.borderColor = "#ff6347"
		}
		if (document.getElementById('facilitiesAvailable').value == "") {
			a = 0;
			document.getElementById('facilitiesAvailable').style.borderColor = "#ff6347"
		}
		if (document.getElementById('noOfSeats').value == "") {
			a = 0;
			document.getElementById('noOfSeats').style.borderColor = "#ff6347"
		}
		if (document.getElementById('availableDays').value == "") {
			a = 0;
			document.getElementById('availableDays').style.borderColor = "#ff6347"
		}
		if (document.getElementById('cost').value == "") {
			a = 0;
			document.getElementById('cost').style.borderColor = "#ff6347"
		}
		if (document.getElementById('status').value == "") {
			a = 0;
			document.getElementById('status').style.borderColor = "#ff6347"
		}
		if (document.getElementById('contactNumber').value == "") {
			a = 0;
			document.getElementById('contactNumber').style.borderColor = "#ff6347"
		}

		if (a == 0) {
			errorMessage += "Please update the highlighted mandatory field(s)*\n";
			alert(errorMessage);
			return "venuedetails";
		}
		if (a == 1) {
			errorMessage += "Venue Details are submitted successfully\n";
			alert(errorMessage);
			return "addvenue";
		}

	}
</script>
</head>
<body
	background="${pageContext.request.contextPath}/resources/images/c.jpg">
	 <div class="navbar">
          
            <a href="#">About us</a>
            <a href="/help">Help</a>
            <div class="topnav-centered"> <p>VENUE DETAILS</p></div>
           
            <a href="/" class="right">Logout</a>
      
        </div>
	
	
	<div class="form-box">

		<form method="get" onsubmit="return checkForBlank()" action="addvenue">
			<br> Hall Id:<span>*</span><br> <input type="text"
				class="input-field" name="id" placeholder="Enter the hall ID"
				id="id" size="20" pattern="[0-9]+" title="Enter only numbers"><br>
			<br> Hall Name:<span>*</span><br> <input type="text"
				class="input-field" name="hallName"
				placeholder="Enter the hall name" id="hallName" size="20"
				pattern="[A-Za-z ]{1,32}"
				title="Enter uppercase or lowercase only.. not numbers"><br>
			<br> Venue:<span>*</span><br> <input type="text"
				class="input-field" name="venue" placeholder="Enter the address"
				id="venue"><br> <br> Place:<span>*</span><br>
			<input type="text" class="input-field" name="place"
				placeholder="Enter the place" id="place" size="20"
				pattern="[A-Za-z ]{1,32}"
				title="Enter uppercase or lowercase only.. not numbers"><br>
			<br> Facilities Available:<span>*</span><br> <input
				type="text" class="input-field" name="facilitiesAvailable"
				id="facilitiesAvailable" placeholder="Enter the facilities">
			<br> <br> No: of Seating:<span>*</span><br> <input
				type="text" class="input-field" name="noOfSeats"
				placeholder="Enter the No:of seating" id="noOfSeats" size="20"
				pattern="[0-9]+" title="Enter only numbers"> <br> <br>
			Available Days: <span>*</span><br> <input type="text"
				class="input-field" name="availableDays"
				placeholder="Enter the available Days" id="availableDays"><br>
			<br> Cost:<span>*</span><br> <input type="text" name="cost"
				class="input-field" placeholder="Enter the cost" id="cost" size="20"
				pattern="^\d*(\.\d{0,2})?$" title="Enter only numbers(Eg:2000.00)"><br>
			<br> Status:<span>*</span><br> <input type="text"
				name="status" class="input-field" placeholder="Enter the status"
				id="status" size="20" pattern="[A-Za-z ]{1,32}"
				title="Enter uppercase or lowercase only.. not numbers"><br>
			<br> Contact Number:<span>*</span><br> <input type="tel"
				class="input-field" name="contactNumber"
				placeholder="Enter the contactNumber" id="contactNumber" size="10"
				pattern="[7-9]{1}[0-9]{9}"
				title="Phone number with 7-9 and remaing 9 digit with 0-9"><br>
			<br>
			<button type="submit" class="button">submit</button>
		</form>

		<form action="update">
			<button type="submit">Edit</button>
		</form>

	</div>

</body>
</html>