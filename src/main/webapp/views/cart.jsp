<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link rel="icon" type="image/png" href="images/icons/company icon.png" />
</head>
<style>
body {
  margin: 0;
	background: #3b4465;
	font-family: sans-serif;
	font-weight: 100; 
    color:white; 
}

.topnav {

	background-color: #DDDDDD;
	position: absolute;
	width: 100% ;
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

.tablecontainer {
	position: absolute;
	left: 10%;
	top:15%;
	 
}

.successcontainer  {
	position: absolute;
	left: 40%;
	top:50%;
	 
}

table {
	width: 1000px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.9);
	border-radius:15px;
	text-align:center;
}

th,td {
	padding : 25px;
	
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

th {
	text-align: center;
	
}

thead {
	th {
		background-color: #55608f;
		
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
			
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;			
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}

.removebutton{
border: none;
  color: white;
  padding: 6px 12px;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px;
  background-color: #DDDDDD;
color:black;
  

}
.removebutton:hover{
background-color: red;
color:white;
}


.paybutton{
border: none;
  color: white;
  padding: 6px 30px;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px;
  background-color: #DDDDDD;
color:black;
  

}
.paybutton:hover{
background-color: #A7E245;
color:white;
}

</style>
<body>

<!--Navication-->

<div class="w3-top">
<div class="topnav">			
<a href="#"><img src="images/icons/company icon.png" width="45px" height="45px"></a> 
<div class="tooltip">
<a href="home"><img onmouseout="outFunc()" src="images/icons/home.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Home</span>
</div>
<div class="tooltip">
<a href="myorders"><img onmouseout="outFunc()" src="images/icons/orders.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">My Orders</span>
</div>

<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div> </div></div></div>

  <div class="successcontainer">
	<h3>${message}</h3>
</div>

<!--Cart-->

<c:if test="${cart!=null}">

	<table class="tablecontainer">
	    <tr><th colspan="6" align="center">Cart</th></tr>
		<tr>
			<th>Brand</th>
			<th>Photo</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Total</th>
			<th>Action</th>
		</tr>		
	<c:forEach var="item" items="${cart}">	
			<tr>
				<td>${item.mobiles.brand}</td>
				<td><img src="${item.mobiles.photo}" width="120" style="border-radius:10px;"></td>
				<td>INR.${item.mobiles.price}.00</td>
				<td>${item.quantity}</td>
				<td>INR.${item.quantity * item.mobiles.price}.00</td>
				<td><a href="remove?productid=${item.mobiles.id}"><button class="removebutton">Remove</button></a></td>
			</tr>			
		</c:forEach>
			<tr><td colspan="6" align="center">Cart Value =INR. ${total}</td></tr>
			<tr><td colspan="6" align="center"><a href="paymentpage"><button class="paybutton">Proceed Payment</button></a></td></tr>
			</table>	
	</c:if>
	
	
</body>
</html>