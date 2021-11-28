<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Mobile Mart</title>
<link rel="icon" type="image/png" href="images/icons/company icon.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="ISO-8859-1">
</head>
<style>
html {
	box-sizing: border-box;
}

html, body {
	height: 100%;
}

*, *:before, *:after {
	box-sizing: inherit;
	font-family: Open Sans;
}

body {
	margin: 0;
	background: #3b4465;
	font-family: sans-serif;
	font-weight: 100;
	color: white;
}

.mySlides {
	display: none;
	width: 100%;
}

.topnav {
	background-color: #DDDDDD;
	position: fixed;
	width: 100%;
	margin: 0;
	top: 0;
	left: 0;
}

.topnav a {
	float: left;
	color: #333;
	text-align: center;
	padding: 4px 15px;
	font-size: 20px;
}

.topnav a:hover {
	color: #3b4465;
}

.topnav .user-container {
	float: right;
	  padding-right:25px;
}

.tooltip {
  position: relative;
  display: inline-block;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 90px;
  background-color: #DDDDDD;
  color: #555;
  text-align: center;
  border-radius: 6px;
  padding: 3px;
  position: absolute;
  z-index: 1;  
  margin-left: -75px;
  opacity: 0.4;
  top:50px;
  transition: opacity 0.3s;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
  opacity: 1;
}


.sidebar {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	transition: 0.5s;
	padding-top: 60px;
}

.sidebar a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidebar a:hover {
	color: #f1f1f1;
}

.sidebar .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

.openbtn {
	font-size: 20px;
	cursor: pointer;
	background-color: #111;
	color: white;
	padding: 10px 15px;
	border: none;
}

.openbtn:hover {
	background-color: #444;
}



.column {
	float: left;
	width: 16.6%;
	margin-bottom: 110px;
	padding: 0 8px;
}
.columnc {
	float: left;
	width: 16.6%;
	margin-bottom: 40px;
	padding: 0 8px;
}
.filtercontainer {
	background-color: white;
	border-radius: 5px;
	color: green;
	width: 100%;
	background-color: white;
	text-align: center;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 5);
	border-radius: 10px;
	background-color: white;
	height: 400px;
	padding-bottom: 5px;
}

.container {
	padding: 0px 10px;
	background-color: white;
	border-radius: 10px;
}

.container h4, h6 {
	color: black;
}

.container b{
color:black;
font-size:15px;
}

.container::after, .row::after {
	content: "";
	clear: both;
	display: table;
}

.title {
	color: grey;
	padding:1px;
}

.newshowbutton {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 3px;
	color: white;
	background-color: #3B4465;
	text-align: center;
	cursor: pointer;
	width: 100%;
	border-radius: 15px;
}

.newshowbutton:hover {
	background-color: #A7E245;
}


.comparebutton{
border: none;
	outline: 0;
	display: inline-block;
	padding: 3px;
	font-size:10px;
	color: white;
	background-color: #3B4465;
	text-align: center;
	cursor: pointer;
	border-radius: 50%;
     float:right;
}


.comparebutton:hover {
	background-color: #A7E245;
	color:#3B4465;
}


.viewbutton {
	border: none;
	color: white;
	padding: 6px 2px;
	font-size: 15px;
	cursor: pointer;
	border-radius: 10px;
	background-color: #DDDDDD;
	color: black;
}

.viewbutton:hover {
	background-color: #A7E245;
	color: white;
}

.cardimage {
	height: 250px;
	padding-top: 10px;
	width: 100%;
	border-radius: 15px;
}

.companybutton {
	background-color: rgba(255, 255, 255, 0);
	border: none;
	opacity: 0.4;
	transition: 1s;
}

.companybutton:hover {
	background-color: rgba(255, 255, 255, 0);
	border: none;
	opacity: 1;
}


.heading{
text-align:center;
font-size:20px;
font-weight:150px;
}


footer {
	bottom: 0;
}

.footer-distributed {
	background-color: #292c2f;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
	margin-top: 80px;
}

.footer-distributed .footer-left, .footer-distributed .footer-center,
	.footer-distributed .footer-right {
	display: inline-block;
	vertical-align: top;
}

.footer-distributed .footer-left {
	width: 40%;
}

.footer-distributed h3 {
	color: #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

.footer-distributed h3 span {
	color: #5383d3;
}

.footer-distributed .footer-links {
	color: #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a {
	display: inline-block;
	line-height: 1.8;
	text-decoration: none;
	color: inherit;
}

.footer-distributed .footer-company-name {
	color: #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-center {
	width: 35%;
}

.footer-distributed .footer-center i {
	background-color: #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope {
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p {
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin: 0;
}

.footer-distributed .footer-center p span {
	display: block;
	font-weight: normal;
	font-size: 14px;
	line-height: 2;
}

.footer-distributed .footer-center p a {
	color: #5383d3;
	text-decoration: none;;
}

.footer-distributed .footer-right {
	width: 20%;
}

.footer-distributed .footer-company-about {
	line-height: 20px;
	color: #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span {
	display: block;
	color: #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons {
	margin-top: 25px;
}

.footer-distributed .footer-icons a {
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color: #33383b;
	border-radius: 2px;
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;
	margin-right: 3px;
	margin-bottom: 5px;
}
</style>
<body>

<!--Navication-->

<div class="w3-top">
<div class="topnav">			
<a onclick="openNav()"><img src="images/icons/menu.png" width="45px" height="45px"></a> 
<a href="home"><img src="images/icons/company logo.png" width="170px" height="45px"></a>
<div class="tooltip">
<a href="myorders"><img onmouseout="outFunc()" src="images/icons/orders.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">My Orders</span>
</div>
<div class="tooltip">
<a href="cart"><img onmouseout="outFunc()" src="images/icons/cart.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Cart</span>
</div>
<div class="tooltip">
<a href="filters"><img onmouseout="outFunc()" src="images/icons/filter.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Filters</span>
</div>
<div class="tooltip">
<a href="compares"><img onmouseout="outFunc()" src="images/icons/comparator.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Compare</span>
</div>
<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div> </div></div></div>

<!--SideBar-->

	<div id="mySidebar" class="sidebar">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">x</a>
		<a href="#home">Home</a> <a href="#newlaunches">New Launches</a> <a href="#company">Companies</a> <a href="#footer">About</a> <a href="#footer">Contact</a>
	</div>
	
<!--SlideShow-->	
	
	<div class=" w3-display-container" id="home"
		style="max-width: 100%; margin-top: 80px">
		<!-- Automatic Slideshow Images -->
		<div class="mySlides w3-display-container w3-center">
			<img
				src="https://www.reliancedigital.in/medias/Vivo-Vivo-X50-1365-x-260.jpg?context=bWFzdGVyfGltYWdlc3w5OTcyN3xpbWFnZS9qcGVnfGltYWdlcy9oZDIvaGNjLzkzMzg0NzY0OTQ4NzguanBnfDBkZmZmOWE4YmVjNzUzMTNiYmI0ZWNlZmYzOGM0ZTQ1ZDMyMGYxMDhlOGZhMjFkYWJjMmVhZTI5Yjc5MWIxMzE">
		</div>
		<div class="mySlides w3-display-container w3-center">
			<img
				src=" https://www.reliancedigital.in/medias/Samsung-Galaxy-Note20-Available-Now-Home-Page-Banner-28-08-2020.jpg?context=bWFzdGVyfGltYWdlc3w3NzcyN3xpbWFnZS9qcGVnfGltYWdlcy9oYWMvaGFjLzkzNzE0MjIzOTIzNTAuanBnfGQ5YTY0ZGU4NzcwNmU3YThhYjRiYzUxN2ZiMzc5YmNjZjdjOWY1NjFmOTE0Yjc0NWNhNzQ1OWUxN2ZlMzYxZmU"
				style="width: 100%">
		</div>
		<div class="mySlides w3-display-container w3-center">
			<img
				src="https://www.reliancedigital.in/medias/Smartphone-Home-Page-Banner-14-08-2020.jpg?context=bWFzdGVyfGltYWdlc3wxMDA3NjZ8aW1hZ2UvanBlZ3xpbWFnZXMvaGJlL2g2NC85MzY0OTc3NTQ5MzQyLmpwZ3wwNzJhMWUxMjdkYTM4ZGRiYmE0MWY2OWY1N2NiMzhlODg2YzIwMTFlMjliYTc1YWYwYzM5OTBlYzAyOGViMDMz"
				style="width: 100%">
		</div>
		<div class="mySlides w3-display-container w3-center">
			<img
				src="https://www.reliancedigital.in/medias/Find-X2-Pro-1365-x-260.jpg?context=bWFzdGVyfGltYWdlc3wyMzY3NTR8aW1hZ2UvanBlZ3xpbWFnZXMvaDg2L2g2Yi85MzMwMjk1MDc4OTQyLmpwZ3xiZDQyODc0MWNjMTI3ZTIwNzU4MDJjNGM5NWJjZTc4ZTU4OTBiMjM0MDkyZGQ0MDIyYWNkYjM0YzUyNDQyMmJm"
				style="width: 100%">
		</div>
		<div class="mySlides w3-display-container w3-center">
			<img
				src="https://www.reliancedigital.in/medias/Smartphone-Home-Page-Banner-14-08-2020.jpg?context=bWFzdGVyfGltYWdlc3wxMDA3NjZ8aW1hZ2UvanBlZ3xpbWFnZXMvaGJlL2g2NC85MzY0OTc3NTQ5MzQyLmpwZ3wwNzJhMWUxMjdkYTM4ZGRiYmE0MWY2OWY1N2NiMzhlODg2YzIwMTFlMjliYTc1YWYwYzM5OTBlYzAyOGViMDMz"
				style="width: 100%">
		</div>
		<button class="w3-button w3-display-left w3-transparent w3-black"
			onclick="plusDivs(-1)">&#10094;</button>
		<button class="w3-button w3-display-right w3-transparent w3-black"
			onclick="plusDivs(1)">&#10095;</button>
</div>
	
<!--New Launches-->
	
		<p class="heading" id="newlaunches">New Launches</p>		
		<div class="row">
		<c:forEach var="latestmobiles" items="${latestmobiles}">
			<div class="column">
				<div class="card">
					<img src="${latestmobiles.photo}" alt="mobilename" class="cardimage">
					<div class="container">
						<b>${latestmobiles.brand} &nbsp;  <a href="compare?id=${latestmobiles.id}"><button class="comparebutton">AC</button></a></b>
						<div class="title">
							<p>RAM : ${latestmobiles.RAM}</p>
							<p>ROM : ${latestmobiles.ROM}</p>
							<p>OS : ${latestmobiles.OS}</p>
							<p>INR.${latestmobiles.price}.00</p>
						</div>
						<p>
							<a href="view?id=${latestmobiles.id}"><button class="newshowbutton">View</button></a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	
<!--Company Icons filter-->

	<p class="heading" id="company">Our branded companies</p>
	
	<div class="row">
		<form action="sortmobile" method="post">
			<div class="columnc">
				<div class="filtercontainer">
					<button type="submit" name="company" value="APPLE"
						class="companybutton">
						<img
							src="https://www.thechennaimobiles.com/image/cache/catalog/brand/I-phone-120x74.png" />
					</button>
				</div>
			</div>
		</form>
		<form action="sortmobile" method="post">
			<div class="columnc">
				<div class="filtercontainer">
					<button type="submit" name="company" value="SAMSUNG"
						class="companybutton">
						<img
							src="https://www.thechennaimobiles.com/image/cache/catalog/brand/Samsung-120x74.png" />
					</button>

				</div>
			</div>
		</form>
		<form action="sortmobile" method="post">
			<div class="columnc">
				<div class="filtercontainer">
					<button type="submit" name="company" value="OPPO"
						class="companybutton">
						<img
							src="https://www.thechennaimobiles.com/image/cache/catalog/brand/Oppo-120x74.png" />
					</button>

				</div>
			</div>
		</form>
		<form action="sortmobile" method="post">
			<div class="columnc">
				<div class="filtercontainer">
					<button type="submit" name="company" value="VIVO"
						class="companybutton">
						<img
							src="https://www.thechennaimobiles.com/image/cache/catalog/brand/VIVO-120x74.png" />
					</button>

				</div>
			</div>
		</form>
		<form action="sortmobile" method="post">
			<div class="columnc">
				<div class="filtercontainer">
					<button type="submit" name="company" value="REALME"
						class="companybutton">
						<img
							src="https://images.fonearena.com/blog/wp-content/uploads/2018/11/Realme-e1542268184706.jpg" width="70px" height="72px"/>
					</button>

				</div>
			</div>
		</form>
		<form action="sortmobile" method="post">
			<div class="columnc">
				<div class="filtercontainer">
					<button type="submit" name="company" value="NOKIA"
						class="companybutton">
						<img
							src="https://www.thechennaimobiles.com/image/cache/catalog/brand/Nokia-120x74.png" />
					</button>

				</div>
			</div>
		</form>
	</div>

<!--Sorted Mobile List-->

	<div class="row">
		<c:forEach var="mobiles" items="${mobiles}">
			<div class="column">
				<div class="card">
					<img src="${mobiles.photo}" alt="mobilename" class="cardimage">
					<div class="container">
						<b>${mobiles.brand} &nbsp;  <a href="compare?id=${mobiles.id}"><button class="comparebutton">AC</button></a></b>
						<div class="title">
							<p>RAM : ${mobiles.RAM}</p>
							<p>ROM : ${mobiles.ROM}</p>
							<p>OS : ${mobiles.OS}</p>
							<p>INR.${mobiles.price}.00</p>
						</div>
	        
                         <p>
							<a href="view?id=${mobiles.id}"><button class="newshowbutton">View</button></a>
						</p>
					</div></div></div>
		</c:forEach></div>
<!--Footer-->
	
	<footer class="footer-distributed" id="footer">
		<div class="footer-left">
			<h3>
				<a href="home"><img src="images/icons/footer company.png" width="270px" height="85px"></a>
			</h3>
			<p class="footer-links">
				<a href="#home">Home</a>| <a href="#">Pricing</a>|<a href="#footer">About</a> |
				 <a href="#footer">Faq</a> | <a href="#footer">Contact</a>
			</p>

			<p class="footer-company-name">mobilemart &copy; 2020</p>
		</div>

		<div class="footer-center">
			<div>
				<img src="images/icons/location.png" width="40px" height="40px">
				<p>
					<span>21 Market Street</span> Chennai, India
				</p>
			</div>

			<div>
				<img src="images/icons/contact.png" width="40px" height="40px">
				<p>+91 98765 43210</p>
			</div>

			<div>
				<img src="images/icons/email.png" width="40px" height="40px">
				<p>
					<a href="mailto:support@company.com">contact@mobilemart.com</a>
				</p>
			</div>
		</div>
		<div class="footer-right">
			<p class="footer-company-about">
				<span>About the company</span> Mobile Mart is a leading destination for online mobile shopping in India, 
				offering some of the best prices and a completely hassle-free experience with options 
				 of paying through Cash on Delivery, Debit Card, Credit Card and Net Banking processed through 
				 secure and trusted gateways. Now shop for your favorite Mobiles.
				
			</p>

			<div class="footer-icons">

				     <a href="#"><img src="images/icons/fb.png" width="40px" height="40px"></a> 
				     <a href="#"><img src="images/icons/insta.png" width="40px" height="40px"></a> 
				     <a href="#"><img src="images/icons/twit.png" width="40px" height="40px"></a> 
				     <a href="#"><img src="images/icons/wapp.png" width="40px" height="40px"></a>
			</div>
		</div>
	</footer>

</body>
<script>

     // side container
     
	function openNav() {
		document.getElementById("mySidebar").style.width = "250px";
		document.getElementById("main").style.marginLeft = "250px";
	}

	function closeNav() {
		document.getElementById("mySidebar").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
	
	// Automatic Slideshow - change image every 3 seconds
	
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 2500);
	}

	var slideIndex = 1;
	showDivs(slideIndex);

	function plusDivs(n) {
		showDivs(slideIndex += n);
	}

	function showDivs(n) {
		var i;
		var x = document.getElementsByClassName("mySlides");
		if (n > x.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = x.length
		}
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		x[slideIndex - 1].style.display = "block";
	}
	
	//image hover command
	
	function outFunc() {
		  var tooltip = document.getElementById("myTooltip");
		 
		}
	
</script>
</html>


