<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login Here</title>
<link rel="icon" type="image/png" href="images/icons/company icon.png" />
</head>

<style>

* {
  box-sizing: border-box;
}
body {
  font-family: 'Rubik', sans-serif;
  margin: 0;
  padding: 0;
  background: #3b4465;
}
.container {
  display: flex;
  height: 100vh;
}
.left-section {
  overflow: hidden;
  display: flex;
  flex-wrap: wrap;
  flex-direction: column;
  justify-content: center;
  -webkit-animation-name: left-section;
          animation-name: left-section;
  -webkit-animation-duration: 1s;
          animation-duration: 1s;
  -webkit-animation-fill-mode: both;
          animation-fill-mode: both;
  -webkit-animation-delay: 1s;
          animation-delay: 1s;
}
.right-section {
  flex: 1;
  background: linear-gradient(to right, #f50629 0%, #fd9d08 100%);
  transition: 1s;
  background-image: url("/images/admin.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center;
}
.header > h1 {
  margin: 0;
  color: white;
}
.header > h4 {
  margin-top: 10px;
  font-weight: normal;
  font-size: 15px;
  color: rgba(0, 0, 0, 0.4);
}
.form {
  max-width: 80%;
  display: flex;
  flex-direction: column;
}
.form > p {
  text-align: right;
}
.form > p > a {
  color: #000;
  font-size: 14px;
}
.form-field {
  height: 46px;
  padding: 0 16px;
  border: 2px solid #ddd;
  border-radius: 4px;
  font-family: 'Rubik', sans-serif;
  outline: 0;
  transition: .2s;
  margin-top: 20px;
}
.form-field:focus {
  border-color: #0f7ef1;
}
.form > button {
  padding: 12px 10px;
  border: 0;
  border-radius: 3px;
  margin-top: 10px;
  color: #555;
  background-color: #DDDDDD;
  letter-spacing: 1px;
  font-family: 'Rubik', sans-serif;
}


.form > button:hover{
background-color: #A7E245;
color:white;

}
.animation {
  -webkit-animation-name: move;
          animation-name: move;
  -webkit-animation-duration: .4s;
          animation-duration: .4s;
  -webkit-animation-fill-mode: both;
          animation-fill-mode: both;
  -webkit-animation-delay: 2s;
          animation-delay: 2s;
}


@keyframes move {
  0% {
    opacity: 0;
    visibility: hidden;
    -webkit-transform: translateY(-40px);
            transform: translateY(-40px);
  }
  100% {
    opacity: 1;
    visibility: visible;
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}
@keyframes left-section {
  0% {
    opacity: 0;
    width: 0;
  }
  100% {
    opacity: 1;
    padding: 20px 40px;
    width: 440px;
  }
}
.message{
color:#A7E245;
}
</style>
<body>

<form method="post" action="adminvalidate">
<div class="container">
  <div class="left-section">
    <div class="header">
      <h1 class="animation a1">Welcome Back!!!</h1>
    </div>
    <div class="form">	
	 <input type="text" name="adminname" class="form-field animation a4" placeholder="admin" required>
     <input type="password" name="password" class="form-field animation a4" placeholder="Password" required>
     <button class="animation a6" type="submit" >LOGIN</button>
     <h5><span class="message">${errorMessage}</span></h5>
    </div>
  </div>
  <div class="right-section"></div>
</div>
 </form>
</body>
</html>