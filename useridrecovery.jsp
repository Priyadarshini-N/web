<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <html>
   <title>Secert Question</title>
    <head>
        <style>
             body{
    height: 100%;
    width: 100%;
    background-position: center;
    background-size: cover;
    position: absolute;   
}
            input:required:focus{
        border:5px solid red;
       
    }
            #frm{
              
   width: 17%;
                height:40%;
    border-radius: 50px;
    margin: 100px auto;
                position: relative;
    background-color: white;
    padding: 50px;
    overflow: hidden;
    
         background: #fff;    
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
                background: transparent;
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
                padding-left: 20px;
                border-radius: 25px;
                background: linear-gradient(to right,#ff105f,#ffad06);
  padding: 10px;
  width: 250px;
  height: 40px;
            padding-right: 5px;
                color:greenyellow;
            
            }
            #btn{
   
    transition: .5s;
    width: 250px;
    height: 40px;
    background: linear-gradient(to right,#ff105f,#ffad06);
    border-radius: 30px;
                 color:greenyellow;
}
            #id8{
                color:black;
            }
        </style>
    </head>
    <body background="${pageContext.request.contextPath}/resources/images/c.jpg">
       <div id="frm" >
       ${userId1}${userId}
       ${useriderror}
        <form  class="rainbow-text" action="/useridrecovery1" method="get">
           
            <button type="button" id="btn" >HELP US TO KNOW YOU</button><br><br>
         
          <i id="id8">Enter your favourite color</i>  <input type="text"  name="securityQuestions1" required/><br><br>
          <i id="id8">Enter your pet name</i>  <input type="text" name="securityQuestions2"   required/><br><br> 
          <i id="id8">Enter your lucky number</i>  <input type="text" name="securityQuestions3"  required/> <br><br><br>
          
            
            
            <button type="submit" id="submit" value="submit">VERIFY</button>
        </form>
        <form action="/">
        <button type="submit" id="submit" value="submit">RETURN TO HOME PAGE</button>
        </form>
        </div>
    </body>
</html>