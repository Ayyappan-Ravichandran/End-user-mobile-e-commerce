<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Filter</title>
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
	left: 1%;
	top:13%;
	width: 98%;	
	text-align:center;	 
}

table {
	
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.9);
	border-radius:15px;
	
}

th {
	padding: 5px;	
	background-color: rgba(255,255,255,0.2);
	color: #fff;
}

td {
	padding: 6px;	
	background-color: rgba(255,255,255,0.2);
	color: #fff;
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


.column {
  float: left;
  width: 15.3%;
  margin-bottom: 39px;
  padding: 0 8px;
  }
  
.filtercontainer {
   background-color:white;
  border-radius: 5px; 
 color:green;  
  width:100%;  
  background-color:white;
text-align:center;
 
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 5);
    border-radius: 10px;	
	 background-color:white;
	 height:400px;
	 padding-bottom:5px;
}

.container {
  padding: 0px 15px;
  background-color:white;
  border-radius: 10px;   
}


.container h4,h5 {
  color:black;
}


.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
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


.viewbutton{
border: none;
  color: white;
  padding: 6px 12px;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px;
  background-color: #DDDDDD;
color:black;
  

}
.viewbutton:hover{
background-color: #A7E245;
color:white;
}

.cardimage{
height:180px;
padding-top:20px; 
width:100%;
border-radius:15px;
}



select{
  border: none;
  color: white;
  padding: 5px 1px;
  font-size: 15px;
  cursor: pointer;
  border-radius:3px;
  background-color: #DDDDDD;
  color:black;
  width:160px;
}

select:hover{
background-color: #A7E245;
color:white;
}

.sortbutton{
width:30%;
  border: none;
  color: white;
  padding: 6px 12px;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px;
  background-color: #DDDDDD;
  color:black;
  
}
.sortbutton:hover{
  background-color: #A7E245;
  color:white;
}


.viewbutton{
  border: none;
  color: white;
  padding: 6px 12px;
  font-size: 15px;
  cursor: pointer;
  border-radius:10px;
  background-color: #DDDDDD;
  color:black;
  

}
.viewbutton:hover{
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
<div class="tooltip">
<a href="cart"><img onmouseout="outFunc()" src="images/icons/cart.png" width="45px" height="45px"></a> 
<span class="tooltiptext" id="myTooltip">Cart</span>
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
<br><br><br><br>

<!--Sort table-->

			<form action="sort" method="post">
				<table class="tablecontainer">				
					<tr>
						<th colspan="5" align="center"><b>Sort Based on </b></th>
					</tr>	
					<tr>
						<th>Company</th>
						<th>RAM</th>
						<th>ROM</th>
					</tr>	
					<tr>
						<td><select name="company">
						        <option value="none" selected>-select-</option>
						        <option value="APPLE" >APPLE</option>
						         <option value="SAMSUNG" >SAMSUNG</option>
						          <option value="OPPO" >OPPO</option>
						           <option value="VIVO" >VIVO</option>
						            <option value="REALME" >REALME</option>
						             <option value="NOKIA" >NOKIA</option>
						      
							</select>
							
						</td>
						<td><select name="RAM">
						        <option value="none" selected>-select-</option>
						        	<option value="3 GB">3 GB</option>
								<option value="4 GB">4 GB</option>
								<option value="6 GB">6 GB</option>
								<option value="8 GB">8 GB</option>
							</select>
						</td>
						<td><select name="ROM">
						        <option value="none" selected>-select-</option>
								<option value="64 GB">64 GB</option>
								<option value="128 GB">128 GB</option>
								<option value="256 GB">256 GB</option>
								<option value="512 GB">512 GB</option>				
							</select>
						</td>
						
					</tr>	
					
					<tr>					
						<td colspan="3" align="center"><button type="submit" class="sortbutton">Sort Details</button></a></td>
					</tr>
				</table>
			</form>
<br><br><br><br><br><br><br><br><br><br>

<!--Sorted mobiles-->

<div class="row">
<c:forEach var="mobiles" items="${mobiles}">
  <div class="column">
    <div class="card">
      <img src="${mobiles.photo}"  alt="mobilename" class="cardimage" >      
	  <div class="container">
        <h5>${mobiles.brand}</h5>
		<div class="title">
        <p>RAM : ${mobiles.RAM} </p>
		<p>ROM : ${mobiles.ROM}</p>
		<p>OS : ${mobiles.OS}</p>
		<p>INR.${mobiles.price}.00</p>
        </div>
        <p><a href="view?id=${mobiles.id}"><button class="newshowbutton">View</button></a></p>
      </div>
    </div>
  </div>
    </c:forEach>
  </div>
		

</body>
</html>