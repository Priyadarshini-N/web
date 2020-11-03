<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    .header {
  padding: 80px;
  text-align: center;

  background-image:url('resources/images/party.PNG');
  background-repeat: no-repeat;
 
  color: white;
}
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

* {
  box-sizing: border-box;
}
h1{
  color: palevioletred;
}
p{
  color: palevioletred;
}


/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
/* Right-aligned link */
.navbar a.right {
  float: right;
}
.header h1 {
  font-size: 40px;
}



/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}
.btn{
  background-color: palevioletred;
}
.btn:hover {background-color:pink}
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
    </style>
      </head>
  
        <body>

            <div class="header">
              <h1>WELCOME</h1>
              <p> <b>PARTY PLANNING MANAGEMENT</b> </p>
            </div>
            
            <div class="navbar">
              <a href="#" class="active">Home</a>
              <a href="/login" class="right">Logout</a>
            </div>
        <div class="row">
            <div class="col"> 
                <form action="venuedetails">
                <img src="${pageContext.request.contextPath}/resources/images/venue.PNG" width="200" height="200"> <br>
               <button class="button btn">Schedule</button>
                </form>
            </div>
            <div class="col">
                <form method="get" action="uploadbackground1">
                    <img src="${pageContext.request.contextPath}/resources/images/invitation.PNG" width="200 " height="200"> <br>
                    <button class="button btn">Upload Invitation</button>
                </form>
            </div>
                <div class="col">
                    <form method="get" action="bookingforacknowledge">
                        <img src="${pageContext.request.contextPath}/resources/images/ackn.png" width="200 " height="200"> <br>
                        <button class="button btn">Booking For Acknowlegement</button>
                    </form>
                 </div>
        </div>
            <form method="get" >
 <a type="button" class="btn btn-success" href="/reportgenerationpage">Report</a>
 </form>
            </body>
            </html>