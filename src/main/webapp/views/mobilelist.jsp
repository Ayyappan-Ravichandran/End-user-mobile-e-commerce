
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
	  padding-right:5px;
} 
.topnav .search-container {
  float: right;
  padding-right:25px;
}



.tablecontainer {
	position: absolute;
	left: 15%;
	top: 13%;
	width: 60%;
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


.topnav input[type=text] {
  padding: 6px;
  margin-top: 10px;
  font-size: 17px;
  border: none;
border-radius: 10px;
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
<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div>
 </div>
<div class="search-container">
    <form method="post" action="searchid">
      <input type="text" min="1" max="33" placeholder="mobile id..." name="search" required>
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>

</div></div>

  <div class="successcontainer">
	<h3>${message}</h3>
</div>
		
<table class="tablecontainer">
<thead>
<tr>
    <th>ID</th>
    <th>Brand</th>
    <th>PHOTO</th>
    <th>RAM</th>
    <th>ROM</th>   
    <th>PRICE</th>
   
</tr>
</thead>
	<c:forEach var="mobiles" items="${mobiles}">
			<tr>
			    <td>${mobiles.id}</td>	
			    <td class="brand">${mobiles.brand}</td>	
				<td><img src="${mobiles.photo}"	width="50" height="70"></td>
				<td>${mobiles.RAM}</td>
				<td>${mobiles.ROM}</td>				
				<td>INR.${mobiles.price}.00</td>
				
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>