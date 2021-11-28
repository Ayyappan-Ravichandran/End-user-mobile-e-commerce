<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Orders</title>
<link rel="icon" type="image/png" href="images/icons/company icon.png" />

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

.tablecontainer {
	position: absolute;
	left: 5%;
	top:15%;	 
}

.successcontainer  {
	position: absolute;
	left: 40%;
	top:50%;
	 
}
table {
	width: 1200px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.9);
	border-radius:15px;
	text-align:center;
}

th,td {
	padding: 15px;
	
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

.cancelbutton{
 border: none;
  color: white;
  padding: 6px 12px;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px;
  background-color: #DDDDDD;
 color:black;
  

}
.cancelbutton:hover{
background-color: red;
color:white;
}




</style>

</head>
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
<a href="cart"><img onmouseout="outFunc()" src="images/icons/cart.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Cart</span>
</div>
<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div> </div></div></div>
  <div class="successcontainer">
	<h3>${message}</h3>
</div>


<c:if test="${orders!=null}">

<table class="tablecontainer">
<thead>
    <tr><th colspan="9" align="center">Your ordered products</th></tr>
	<tr>	
    <th>Brand</th>
    <th>photo</th>
    <th>RAM</th>
    <th>ROM</th>
    <th>Operating System</th>
    <th>price</th>
    <th>Status</th>
    <th>Cancel</th>
    <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${orders}" var="item">
    <tr>
          <tr>
				<td>${item.mobiles.brand}</td>	
				<td><img src="${item.mobiles.photo}"width="100" height="100" style="border-radius:10px;"></td>
				<td>${item.mobiles.RAM}</td>
				<td>${item.mobiles.ROM}</td>
				<td>${item.mobiles.OS}</td>
				<td>INR.${item.mobiles.price}.00</td>
				<td>${item.status}</td>
                <td><a href="cancel?id=${item.orderId}"><button class="cancelbutton">Cancel Order</button></a></td>
                <td><a href="delete?id=${item.orderId}"><button class="cancelbutton">Delete</button></a></td>
    </tr>
   
</c:forEach>
</tbody>
</table>
</c:if>
</body>
</html>