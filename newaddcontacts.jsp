<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <script>
        function checkForBlank(){
    var errorMessage="";
    var a=1;
    if(document.getElementById('firstName').value=="")
    {   a=0;
        
        document.getElementById('firstName').style.borderColor=	"red"
    }
    
    if(document.getElementById('lastName').value=="")
    {
        a=0;
        document.getElementById('lastName').style.borderColor="red"
    }
    if(document.getElementById('email').value=="")
    {
        a=0;
        document.getElementById('email').style.borderColor="red"
    }
  
    if(document.getElementById('contactNumber').value=="")
    {
        a=0;
        document.getElementById('contactNumber').style.borderColor="red"
    }
    
   
    if(a==0)
    {   errorMessage+="Please update the highlighted mandatory field(s)*\n";
        alert(errorMessage);
        return false;
       
    }
    if(a==1)
    {
        errorMessage+="Your details are submitted successfully\n";
        alert(errorMessage);
        return true;
      
    }
    
    }
    
    
    </script>
    <style>
 .navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
  height: 75px;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
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
p{
    color: white;
    text-align: center;
}
span{
                color: red;
            }
            .form-box {
    width: 380px;
    height: 480px;
    position: relative;
    margin: 6% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
    border-radius: 5px;
    
    
    
}
.input-field{
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
.topnav-centered p{
  float: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
 
    </style>
</head>
<body>
    <div class="navbar">
        
        <a href="#">About us</a>
        <a href="/help">Help</a>
        <div class="topnav-centered"> <p>CONTACT</p></div>
       
        <a href="/" class="right">Logout</a>
  
    </div>
   
<div class="form-box">

<form  method="get" onsubmit="return checkForBlank()" action="addcontacts1"><br>
   <img src="${pageContext.request.contextPath}/resources/images/name.png" height="20" width="20"> First Name:<span>*</span><br> 
<input type="text"class="input-field"id="firstName"name="firstName" placeholder="Enter the First Name" size="20" pattern="[A-Za-z ]{1,32}" title="Enter uppercase or lowercase only.. not numbers"><br><br>
<img src="${pageContext.request.contextPath}/resources/images/name.png" height="20" width="20"> Last Name:<span>*</span><br> 
<input type="text" class="input-field"id="lastName" name="lastName"placeholder="Enter the Last name" size="20" pattern="[A-Za-z ]{1,32}" title="Enter uppercase or lowercase only.. not numbers"><br><br>
<img src="${pageContext.request.contextPath}/resources/images/phone.png" height="20" width="20"> Contact Number:<span>*</span><br> 
<input type="tel" class="input-field" id="contactNumber" name="contactNumber" placeholder="Enter the Contact Number" size="10"pattern="[7-9]{1}[0-9]{9}" title="Phone number with 7-9 and remaing 9 digit with 0-9"><br><br>
<img src="${pageContext.request.contextPath}/resources/images/email.png" height="20" width="20"> Email:<span>*</span><br> 
<input type="email" class="input-field" name="emailId" placeholder="Enter the Email Id" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Exmaple:abc@xyz.com"><br><br>
<button type="submit" >Add</button></form>
</div>

</body>
</html>

