
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="icon" type="image/png" href="images/icons/company icon.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body {
	margin: 0;
	background: #3b4465;
	font-family: sans-serif;
	font-weight: 100;
	color: white;
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
.topnav .search-container {
  float: right;
  padding-right:25px;
}
.topnav .ordersort-container {
  float: right;
  padding-right:25px;
}
.tablecontainer {
	position: absolute;
	left: 5%;
	top: 13%;
	width: 88%;
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
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.9);
	border-radius: 15px;
	text-align: center;
}
th, td {
	padding: 15px;
	background-color: rgba(255, 255, 255, 0.2);
	color: #fff;
}
th {
	text-align: center;
}

thead {th { background-color:#55608f;
	
}

}
tbody {tr { &:hover {
			background-color : rgba(255, 255, 255, 0.3);
	
}

}
td {
	position: relative; &: hover { & : before { 
				 content : "";
	position: absolute;
	left: 0;
	right: 0;
	top: -9999px;
	bottom: -9999px;
	background-color: rgba(255, 255, 255, 0.2);
	z-index: -1;
}

}
}
}
.intransitbutton {
	border: none;
	color: white;
	padding: 6px 12px;
	font-size: 15px;
	cursor: pointer;
	border-radius: 10px;
	background-color: #DDDDDD;
	color: black;
}

.intransitbutton:hover {
	background-color: yellow;
}

.deliverybutton {
	border: none;
	color: white;
	padding: 6px 12px;
	font-size: 15px;
	cursor: pointer;
	border-radius: 10px;
	background-color: #DDDDDD;
	color: black;
}

.deliverybutton:hover {
	background-color: green;
	color: white;
	font-weight: 100;
}

a {
	text-decoration: none;
	font-weight: 100;
}


.address{
text-align:left;

}

.topnav select {
  padding: 6px;
  margin-top: 10px;
  font-size: 17px;
  border: none;
border-radius: 5px;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 10px;
  font-size: 17px;
  border: none;
border-radius: 5px;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

.topnav .ordersort-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .ordersort-container button:hover {
  background: #ccc;
}

</style>
<body>
	
<!--Navication-->

<div class="w3-top">
<div class="topnav">		

<a href="#"><img src="images/icons/company logo.png" width="170px" height="45px"></a>
<div class="tooltip">
<a href="adminorders"><img onmouseout="outFunc()" src="images/icons/orders.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">My Orders</span>
</div>
<div class="tooltip">
<a href="mobilelist"><img onmouseout="outFunc()" src="images/icons/list.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Mobiles</span>
</div>
<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div> </div>
<div class="search-container">
    <form method="post" action="searchorderid">
      <input type="text" min="1"  placeholder="order id..." name="search" required>
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
</div>

<div class="ordersort-container">
    <form method="post" action="orderstatus">
       <select name="orderstatus">
						        <option value="none" selected>-sort orders-</option>
						        <option value="ordered" >Ordered </option>
						        <option value="In Transit" >In Transit</option>
						        <option value="delivered" >Deliverd</option>
						        <option value="cancelled" >Cancelled</option>
	        </select>
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
</div>
</div></div>

  <div class="successcontainer">
	<h3>${message}</h3>
</div>

<!--Orders List-->

<c:if test="${adminorders!=null}">

		<table class="tablecontainer">
			<thead>
				<tr>
					<th colspan="8" align="center">Your ordered products</th>
				</tr>
				<tr>
				    <th>Order Id</th>
					<th>Customer Id</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>price</th>
					<th class="address">Address</th>
					<th>Status</th>
					<th>Action</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${adminorders}" var="item">
					<tr>
					     <td>${item.orderId}</td>
						<td>${item.custid}</td>
						<td>${item.mobiles.id}</td>
						<td>${item.quantity}</td>
						<td>INR.${item.mobiles.price}.00</td>						
                        <td class="address">${item.username} <br>
						${item.address} , <br>${item.city},
						${item.state} ,<br>Pincode : ${item.pincode}.<br>
						Email : ${item.email}</td>
						<td>${item.status}</td>
						<td><a type="button" href="intransit?id=${item.orderId}" class="intransitbutton">InTransit</a>
							<a type="button" href="delivered?id=${item.orderId}" class="deliverybutton">Delivery</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

	
</body>
</html>