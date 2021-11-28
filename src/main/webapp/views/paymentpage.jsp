<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Payment Page</title>
<link rel="icon" type="image/png" href="images/icons/company icon.png" />
</head>

<style>

body {
  margin: 0;
	background: #3b4465;
	font-family: sans-serif;	
    color:white; 
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


.topnav a:hover {  
  color: black;
}
.topnav .user-container {
  float: right;
    padding-right:25px;
}


.lefttablecontainer {
	position: absolute;
	left: 6%;
	top:16%;
	width: 600px;
	height:500px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.9);
	border-radius:20px;
	text-align:left;
	position:fixed;
    border: 1px solid lightgrey;
}

.righttablecontainer{
    position: absolute;
	left: 55%;
	top:16%;
	width: 400px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.9);
	border-radius:20px;
	
	position:fixed;
    border: 1px solid lightgrey;

}
th{
    padding-top: 13px;	
	padding-left: 18px;	
	padding-bottom: 18px;	
	background-color: rgba(255,255,255,0.2);
	font-size:18px;
}

td {
	padding-left: 18px;	
	background-color: rgba(255,255,255,0.2);
	font-size:15px;
}
input[type=text] {
  width: 90%;
  margin-bottom: 5px;
  padding: 5px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 5px;
  display: block;
}

.icon-container {
  margin-bottom: 5px;  
  font-size: 24px;
}

.btn {
  background-color: #DDDDDD;
  color: black;
  padding: 8px;
  margin: 10px 0;
  border: none;
  width: 80%;
  border-radius: 6px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #A7E245;
  color:white;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}


.pprice h4{ 
  float: right;
  padding-right:10px;

}

.totalamount h4{
float: right;
color:#A7E245;
border-radius:5px;
font-size:16px;
  padding-right:10px;
}

.quantiyt{
text-align:center;
}

</style>
<body>

<!--Navication-->

<div class="w3-top">
<div class="topnav">			
<a onclick="#"><img src="images/icons/company icon.png" width="45px" height="45px"></a> 
<div class="tooltip">
<a href="home"><img onmouseout="outFunc()" src="images/icons/home.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Home</span>
</div>
<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div> </div></div></div>
 <form  method="post" action="payment" >
    <table class="lefttablecontainer">

	<tr><th colspan="2" align="left">Billing Address</th><th colspan="2" align="left">Payment</th></tr>
	
	<tr><td colspan="2" align="left"><label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="username" placeholder="Enter Full Name" required>
		</td> 
		<td colspan="2" align="left"> <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
		</td>
	</tr>
	<tr><td colspan="2" align="left">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="abc@example.com" required>
		</td>  
		<td colspan="2" align="left"><label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Name on the card" >
		</td>
	</tr>
	<tr><td colspan="2" align="left">   <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="001. East Street" required >
		</td> 
	    <td colspan="2" align="left"><label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" >
		</td>
	</tr>
	<tr><td colspan="2" align="left"> <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="City" required>
		</td> 
		<td colspan="2" align="left"><label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="Month">
		</td>
	</tr>
	<tr>
	    <td><label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="State" required>
		</td>
		<td> 
				<label for="pin">Pin Code</label>
                <input type="text" id="pincode" name="pincode" placeholder="600024" required>
		</td> 
		<td> <label for="expyear">Exp Year</label>
             <input type="text" id="expyear" name="expyear" placeholder="2018"></td><td><label for="cvv">CVV</label>
             <input type="text" id="cvv" name="cvv" placeholder="cvv">
		</td>
	</tr>
	<tr><td colspan="4" align="left"> <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing  </label></td></tr>
	<tr><td colspan="4" align="center"><input type="submit" value="Continue to checkout" class="btn"></td></tr>
	</table>
	</form>
	<table class="righttablecontainer">	 
	<tr><th>Cart</th><th>quantity<th><i class="fa fa-shopping-cart" ></i></th></tr>
	<c:forEach var="item" items="${cart}">	
	<tr><td>${item.mobiles.brand}</td><td class="quantiyt">${item.quantity}</td><td class="pprice"><h4>INR.${item.quantity * item.mobiles.price}.00</h4></td></tr>
	</c:forEach>
		
	<tr><td class="totalamount"><h4>Total</h4></td><td></td><td class="totalamount"><h4>INR. ${total}.00</h4></td></tr>
	</table>
	
	</body>
	</html>