<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <html>
   <title>Password Reset</title>
    <head>
        <style>
        
           body{
    height: 100%;
    width: 100%;
    background-position: center;
    background-size: cover;
    position: absolute;   
}
            #frm{
            
                width: 15%;
                height:40%;
                border-radius: 30px;
                margin: 100px auto;
                background: white;
                padding: 50px;
                background-image: linear-gradient(white);
                
             
            }
            #name{
                padding-left:17px; 
            }
            #email{
                padding-left:19px;
            }
            #phonenumber{
                padding-left: 17px;
               
            }
            #tarea{
                
            }
            #id1{
                display:inline-block;
                padding-right: 5px;
            }
            #id2{
                display:inline-block;
                padding-right: 33px;
            }
            #id3{
                display:inline-block;
                padding-right: 37px;
            }
            #id4{
                text-align: left;
               
                margin-left: 5px;
            }
            #submit{
                
                width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right,#d710ff,#ffad06);
    border: 0;
    outline: none;
    border-radius: 30px;
            }
           
        </style>
    </head>
   
	<body background="${pageContext.request.contextPath}/resources/images/c.jpg">
   
       <div id="frm" >
        <form  class="rainbow-text" action="passwordreset1">
        	 ${errormessage}
           <p align="center" style="color:BLACK">PASSWORD RESET</p><br>
           <label id="id1"><i>Enter Your Id</i></label> <br>  <input type="text"  name="id" id="name" required/><br><br>
          <label id="id2"><i>Enter New Password</i></label> <br>  <input type="text"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  name="password" id="name" required/><br><br>
           <label id="id3"><i>Confirm New Password</i></label> <br>  <input type="text" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  name="confirmpassword" id="name" required/><br><br>
          <br>
            
            
            <button type="submit" id="submit" value="submit">RESET PASSWORD</button>
        </form>
        </div>
    </body>
</html>