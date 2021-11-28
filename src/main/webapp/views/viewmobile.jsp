 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Mobile</title>
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

.tablecontainer {
	position: absolute;
	left: 15%;
	top:13%;
	height:570px;
	 
}

table {
	width: 900px;
	height:500px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.9);
	border-radius:15px;
	text-align:left;
	 
}

td {
	padding-left: 40px;
	padding-top: 10px;
	padding-bottom: 13px;	
	background-color: rgba(255,255,255,0.2);
	color: #fff;
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

.quantitycount{

	width: 80px;
	margin-top: 8px;
	padding-right: 15px;
	padding-left: 15px;
	font-size: 16px;
	line-height: 10px;
	color: #3b4465;
  background: #eef9fe;
  border: 1px solid #cddbef;
  border-radius: 2px;

}

.submitbutton {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: black;
  background-color: #DDDDDD;
  text-align: center;
  cursor: pointer;
  width: 50%;
   border-radius: 15px;
}

.submitbutton:hover {
  background-color: #A7E245;
  color: white;
}

.imagecontainer{
width:300 ;
height:300 ;
border-radius:5px;

}


.zoom {
  
  transition: transform .2s;
  width: 130px;
  height: 130px;  
}

.zoom:hover {
  -ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 
}


.zoom1 {
  
  transition: transform .4s;
  width: 250px;
  height: 250px;  
}

.zoom1:hover {
  -ms-transform: scale(1.3); /* IE 9 */
  -webkit-transform: scale(1.3); /* Safari 3-8 */
  transform: scale(1.3); 
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
<div class="tooltip">
<a href="cart"><img onmouseout="outFunc()" src="images/icons/cart.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Cart</span>
</div>
<div class="user-container">
<div class="tooltip">    
<a href="logout"><img src="images/icons/user.png" width="45px" height="45px"></a>
<span class="tooltiptext" id="myTooltip">Logout</span>
</div> </div></div></div>


    <table class="tablecontainer">
	<tbody>		
    <form:form method="post" modelAttribute="cart" >
	<form:hidden path="productid"/> 
	<tr><td rowspan="5" align="center" ><img src="${mobiles.photo}" class="zoom1"></td><td><h3>${mobiles.brand}</h3></td></tr>	
	<tr><td>RAM : ${mobiles.RAM}</td></tr>
	<tr><td>ROM : ${mobiles.ROM}</td></tr>
	<tr><td>OPERATING SYSTEM : ${mobiles.OS}</td></tr>
	<tr><td>PRICE : INR.${mobiles.price}.00</td></tr>
	<tr><td rowspan="2" align="center" style="margin:10px"  ><img src="${mobiles.photo1}" class="zoom"> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="${mobiles.photo2}"  class="zoom"><br><br></td><td><form:label path="quantity">QUANTITY : </form:label><form:input type="number" min="1" max ="10" path="quantity" class="quantitycount"/></td></tr>
	<tr><td><form:button type="submit" class="submitbutton">Add to Cart</form:button></td>
	</tr>		
		<br><br><br>	
	</form:form>
	</tbody>
	</table>
	
	<br><br><br>
	</body>
	</html>