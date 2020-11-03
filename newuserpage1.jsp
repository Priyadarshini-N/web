<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#share-buttons img {
	width: 35px;
	padding: 5px;
	border: 0;
	box-shadow: 0;
	display: inline;
}

* {
	box-sizing: border-box;
}

h1 {
	color: palevioletred;
}

p {
	color: palevioletred;
}

/* Style the body */
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}
/* Active/current link */
.navbar a.active {
	background-color: #666;
	color: white;
}

.header {
	padding: 80px;
	text-align: center;
	background-image: url('resources/images/party.PNG');
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

.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
}

.btn {
	background-color: palevioletred;
}

.btn:hover {
	background-color: pink
}

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
		<p>
			<b>PARTY PLANNING MANAGEMENT</b>
		</p>
	</div>

	<div class="navbar">
		<a href="#" class="active">Home</a> <a href="#">About us</a> <a
			href="/help">Help</a> <a href="/" class="right">Logout</a>
	</div>
	<div class="row">
		<div class=" col">
			<h2>About Me</h2>
			<form method="get" modelAttribute="usermaster">
				<img
					src="${pageContext.request.contextPath}/resources/images/profile.png"
					alt="Trulli" width="200" height="200"> <br> <a
					type="button" class="button btn"
					href="/viewuserprofile?id=${usermaster.id}">View My Profile</a>
			</form>
			</form>
		</div>


		<div class=" col">
			<form method="get" modelAttribute="usermaster" action="addcontacts">
				<img
					src="${pageContext.request.contextPath}/resources/images/contatct.png"
					width="300" height="300"><br> <a type="button"
					class="button btn" href="/addcontacts">Add Contacts</a>
					<a type="button"
					class="button btn" href="/viewcontacts">View Contacts</a>
			</form>
			</form>
		</div>
		<div class="col">
			<form method="get" action="status">
				<br>
				<br>
				<br> <input type="text" name="occasiondate"
					placeholder="Enter the Date of your occasion" required><br>
				<br> <input type="text" name="place"
					placeholder="Enter the Place" required><br>
				<br>
				<button class=" button btn">Check
			</form>
		</div>


	</div>

	<div class="footer">
		<div id="share-buttons">

			<h2>Share this in...</h2>

			<!-- Buffer -->
			<a
				href="https://bufferapp.com/add?url=https://simplesharebuttons.com&amp;text=Simple Share Buttons"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/buffer.png"
				alt="Buffer" />
			</a>

			<!-- Digg -->
			<a
				href="http://www.digg.com/submit?url=https://simplesharebuttons.com"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/diggit.png"
				alt="Digg" />
			</a>

			<!-- Email -->
			<a
				href="mailto:?Subject=Simple Share Buttons&amp;Body=I%20saw%20this%20and%20thought%20of%20you!%20 https://simplesharebuttons.com">
				<img src="https://simplesharebuttons.com/images/somacro/email.png"
				alt="Email" />
			</a>

			<!-- Facebook -->
			<a
				href="http://www.facebook.com/sharer.php?u=https://simplesharebuttons.com"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/facebook.png"
				alt="Facebook" />
			</a>

			<!-- Google+ -->
			<a
				href="https://plus.google.com/share?url=https://simplesharebuttons.com"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/google.png"
				alt="Google" />
			</a>

			<!-- LinkedIn -->
			<a
				href="http://www.linkedin.com/shareArticle?mini=true&amp;url=https://simplesharebuttons.com"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/linkedin.png"
				alt="LinkedIn" />
			</a>

			<!-- Pinterest -->
			<a
				href="javascript:void((function()%7Bvar%20e=document.createElement('script');e.setAttribute('type','text/javascript');e.setAttribute('charset','UTF-8');e.setAttribute('src','http://assets.pinterest.com/js/pinmarklet.js?r='+Math.random()*99999999);document.body.appendChild(e)%7D)());">
				<img
				src="https://simplesharebuttons.com/images/somacro/pinterest.png"
				alt="Pinterest" />
			</a>

			<!-- Print -->
			<a href="javascript:;" onclick="window.print()"> <img
				src="https://simplesharebuttons.com/images/somacro/print.png"
				alt="Print" />
			</a>

			<!-- Reddit -->
			<a
				href="http://reddit.com/submit?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/reddit.png"
				alt="Reddit" />
			</a>

			<!-- StumbleUpon-->
			<a
				href="http://www.stumbleupon.com/submit?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/stumbleupon.png"
				alt="StumbleUpon" />
			</a>

			<!-- Tumblr-->
			<a
				href="http://www.tumblr.com/share/link?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/tumblr.png"
				alt="Tumblr" />
			</a>

			<!-- Twitter -->
			<a
				href="https://twitter.com/share?url=https://simplesharebuttons.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/twitter.png"
				alt="Twitter" />
			</a>

			<!-- VK -->
			<a
				href="http://vkontakte.ru/share.php?url=https://simplesharebuttons.com"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/vk.png" alt="VK" />
			</a>

			<!-- Yummly -->
			<a
				href="http://www.yummly.com/urb/verify?url=https://simplesharebuttons.com&amp;title=Simple Share Buttons"
				target="_blank"> <img
				src="https://simplesharebuttons.com/images/somacro/yummly.png"
				alt="Yummly" />
			</a>

		</div>
	</div>

</body>

</html>