<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scace=1.0">
        <title>Responsive Content US Page</title>
   <style>

 

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins' , sans-serif;
}
.contact
{
    position: relative;
    min-height: 100vh;
    padding: 50px 100px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
   background-color: white;
}

 

.contact  .content
{
    max-width: 800px;
    text-align: center;
}

 

.contact  .content h2
{
    font-size: 36px;
    font-weight: 500;
    color: rgb(12, 12, 12);
}
.contact  .content p
{
    font-weight: 500;
    color: rgb(10, 10, 10);
}

 

.container
{
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;
}

 

.container .contactInfo
{
    width: 50%;
    display: flex;
    flex-direction: column;
}

 

.container .contactInfo .box
{
    position: relative;
    padding: 20px 0;
    display: flex;
}

 

.container .contactInfo .box .icon
{
    min-width: 60px;
    height: 60px;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    font-size: 22px;
}

 

.container .contactInfo .box .text
{
    display: flex;
    margin-left: 20px;
    font-size: 16px;
    color:rgb(10, 10, 10);
    flex-direction: column;
    font-weight: 300;
}

 

.container .contactInfo .box .text h3
{
    font-weight: 500;
    columns: #0f0f0f;
}
.contactForm
{
    width: 40px;
    padding: 40px;
    background: #fff;
}

 

.contactForm h2
{
    font-size: 30px;
    color: #333;
    font-weight: 500;
}

 

.contactForm .inputBox
{
    position: relative;
    width: 100px;
    margin-top: 10px;
}
.contactForm  .inputBox input,
.contactForm  .inputBox textarea
{
    width: 100%;
    padding: 5px 0;
    font-size: 16px;
    margin: 10px 0;
    border: none;
    border-bottom: 2px solid #333;
    outline: none;
    resize: none;
}

 

.contactForm .inputBox span
{
    position: absolute;
    left: 0;
    padding: 5px 0;
    font-size: 16px;
    margin: 10px 0;
    pointer-events: none;
    transition: 0.5s;
    color: #666;
    width:45px;
}

 

.contactForm .inputBox input:focus ~ span,
.contactForm .inputBox input:valid ~ span,
.contactForm .inputBox textarea:focus ~ span,
.contactForm .inputBox textarea:valid ~ span
{
    color: #e91e63;
    font-size: 12px;
    transform: translateY(-20px);
}

 

.contactForm .inputBox input[text="submit"]
{
    width: 100px;
    background: #00bcd4;
    color: #fff;
    border: none;
    cursor: pointer;
    padding: 10px;
    font-size: 18px;
}
   </style>
   	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
   	
    </head>
    <body>
        <section class="contact">
            <div class="content">
                <h2>Contact Us</h2>
               <a  href="/aboutus">Guidelines</a>
            </div>
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                            <div class="text">
                                <h3>Address</h3>
                                <p>22,Camp road,<br>Sholinganallur,Chennai,<br>600100</p>
                            </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                            <div class="text">
                                <h3>Phone</h3>
                                <p>+91 9900044800</p>
                            </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                            <div class="text">
                                <h3>Email</h3>
                                <p>awesomepartyplanning@gmail.com</p>
                            </div>
                    </div>
                </div>
                <div class="contactForm">
                    <form action="sendmail" onsubmit="alert('Your issue mail has been sent successfully')">
                        <h2>Send Message</h2>
                            <div class="inputBox">
                                <input type="text" name="Name" required="required"/>
                                <span>Full Name</span>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="Email" required="required"/>
                                <span>Email</span>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="Issue" required="required"/>
                                <span>Issue</span>
                            </div>
                             <div class="inputBox">
                                <input type="text" name="Description" required="required"/>
                                <span>Description</span>
                            </div>
                            <div class="inputBox">
                                <input type="submit" name="" value="Send"/>
                            </div>
                    </form>

 

                </div>
            </div>
        </section>
        <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </body>
</html>