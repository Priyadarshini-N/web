<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head></head>
<body>
${usererror}
${passworderror}

<div>
<form id="login"class="input-group" action="passwordreset" >
                    <input type="text" class="input-field" name="id" placeholder="User Id" required>
                    <input type="password" class="input-field" name="password" placeholder="Enter the Password" required>
                    <input type="checkbox" class="check-box"><span>Remember Password</span>
                    <!--  <button type="submit" class="submit-btn">Log In</button>-->
                     <button type="submit" class="submit-btn">ForgetPassword</button>
                    
                </form></div>
<form id="register" action="add" class="input-group" method="get" onsubmit="alert('New User Created Successfully')">
                    <input type="text" class="input-field" placeholder="User Id" name="id" required>
                    <input type="password" class="input-field" placeholder="Enter the password" name="password" required>
                    <input type="text" class="input-field" placeholder="Enter the firstName" name="firstName"required>
                    <input type="text" class="input-field" placeholder="Enter the lastName" name="lastName" required>
                    <input type="date" class="input-field" placeholder="enter date" name="dob" required>
                    <input type="text" class="input-field" placeholder="Enter Male/Female" name="gender" required>
                     <input type="tel" class="input-field" placeholder="Enter Contact Number" name="contactNumber" required>
                     <input type="email" class="input-field" placeholder="Email Id" name="emailId" required>
                     <input type="text" class="input-field" placeholder="Enter your favourite color" name="securityQuestion1"required>
                    <input type="text" class="input-field" placeholder="Enter pet name" name="securityQuestion2" required>
                    <input type="text" class="input-field" placeholder="Enter your lucky number" name="securityQuestion3" required>
                    <input type="checkbox" class="check-box"><span>I agree to the terms and condition</span>
                    <button type="submit" class="submit-btn">Register</button>
                </form>
                
                             
                </body>
                
                </html>