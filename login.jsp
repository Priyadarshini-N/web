<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Party Planning Management</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/urstyle.css">
	<style>
	#register{
    
   height: 300px;
    overflow: scroll;
    scrollbar-color:dark;
}

#agree{
    /* changes */
    color: rgb(167, 212, 76);
    font-size: 12px;
    bottom:0px;
    position: absolute;
}
input:required:focus { border: 5px solid red;}
.submit-btn1{
    width: 20%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right,#d710ff,#ffad06);
    border: 0;
    outline: none;
    border-radius: 30px;
}
.form-box{
    width: 380px;
    height: 480px;
    position: relative;
    margin: 6% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
    border-radius:20px;
}

	</style>
</head>
<body
	background="${pageContext.request.contextPath}/resources/images/c.jpg">

<body>

        <div class="class1">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-button" onclick="login()">Log In</button>
                    <button type="button" class="toggle-button" onclick="register()">Register</button> 
                </div>
                <form id="login"class="input-group" action="userauthentication" >
                	${usererror}
					${passworderror}	
                    <input type="text"  class="input-field" name="id" placeholder="User Id" required>
                    <input type="password"   class="input-field" name="password" placeholder="Enter the Password" required>
                    <input type="checkbox" class="check-box">Remember Password
                    <button type="submit" class="submit-btn">Log In</button><br><br>
          
                     
                </form>
                
                <form id="register" action="add" class="input-group" method="get" onsubmit="alert('New User Created Successfully')">
                    <input type="text"  size="20" pattern="[0-9]+" title="Enter only numbers" class="input-field" placeholder="User Id" name="id" required>
                    <input type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  class="input-field" placeholder="Enter the password" name="password" required>
                    <input type="text" placeholder="Enter the First name" size="20"	pattern="[A-Za-z ]{1,32}" title="Enter uppercase or lowercase only.. not numbers" class="input-field"  name="firstName"required>
                    <input type="text"  size="20"	pattern="[A-Za-z ]{1,32}" title="Enter uppercase or lowercase only.. not numbers" class="input-field" placeholder="Enter the lastName" name="lastName" required>
                    <input type="text" class="input-field" pattern="(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" title="Enter in MM/DD/YYYY format"  placeholder="Enter  dob(mm/dd/yyyy)" name="dob" required>
                    <input type="text" class="input-field" placeholder="Enter Male/Female" name="gender" required>
                     <input type="tel" size="10" pattern="[7-9]{1}[0-9]{9}"	title="Phone number with 7-9 and remaing 9 digit with 0-9" class="input-field" placeholder="Enter Contact Number" name="contactNumber" required>
                     <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Exmaple:abc@xyz.com" class="input-field" placeholder="Email Id" name="emailId" required>
                     <input type="text" class="input-field" placeholder="Enter your favourite color" name="securityQuestions1"required>
                    <input type="text" class="input-field" placeholder="Enter pet name" name="securityQuestions2" required>
                    <input type="text" class="input-field" placeholder="Enter your lucky number" name="securityQuestions3" required>
                    <input type="checkbox" class="check-box"/>I agree to the terms and condition
                    <button type="submit" class="submit-btn">Register</button>
                </form>
            </div>
            <form action="passwordreset2">
                <button type="submit" class="submit-btn1">Forget Password</button>
                </form><br>
                <form action="useridrecovery">
                <button type="submit" class="submit-btn1">Forget UserId</button>
                </form><br>
              
                
               
        </div>
        
        <script>
            var x=document.getElementById("login");
            var y=document.getElementById("register");
            var z=document.getElementById("btn");
            function register(){
                x.style.left="-400px";
                y.style.left="50px";
                z.style.left="110px";

            }
            function login(){
                x.style.left="50px";
                y.style.left="450px";
                z.style.left="0px";

            }
        </script>
        
    </body>
</html>