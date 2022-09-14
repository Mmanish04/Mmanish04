<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  .navbar {
    margin-bottom: 0;
    background-color: #004c4c;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
}
.navbar li a, .navbar .navbar-brand {
    color: #fff !important;
}
.navbar-nav li a:hover, .navbar-nav li.active a {
    color: #145A32 !important;
    background-color: #fff !important;
}
.navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
}
  
.jumbotron {
   background-image: url("https://blog.prezi.com/wp-content/uploads/2019/03/jason-leung-479251-unsplash.jpg");

    color: #fff;
    padding-top:40px;
    padding-bottom:5px;
    font-family: Montserrat, sans-serif;
  }
h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #004c4c;
    font-weight: 600;
    margin-bottom: 1px;
  }
  .loginfooter {
	background-color: #008060;
    letter-spacing: 2px;
    border-radius: 0;
	width: 100%;
	box-sizing: border-box;
	padding: 1px 1px;
	width: 100%;
	align-self: stretch;
}
.loginfooter a {
    color: #fff !important;
    float: center;
  text-align: center;
  padding: 18px 18px;
  text-decoration: none;
  font-size: 17px;
  border: 1px solid #145A32;
  display: inline-block;
  width: 100%;
  height: 100%;
  align-self: stretch;
  }
  .loginfooter a:hover{
    color: #145A32  !important;
    background-color: #fff !important;
  }
  .neomorphism{
  	width: 85%;
  	margin: 0 auto;
  	border-radius: 22px;
	background: #ffffff;
	box-shadow:  10px 10px 21px #8a8a8a, 
             -10px -10px 21px #ffffff;
    font-family: Montserrat, sans-serif;
    padding: 30px;
    padding-top: 40px;
    
  }
.errorMessage{
color: red;
text-align: center;
}  

</style>
<title>User Login</title>
<link rel="icon" href="https://www.onlinelogomaker.com/blog/wp-content/uploads/2018/01/education-logo-design-1.jpg">
</head>
<Body background="https://static-cse.canva.com/blob/142356/removing-background-images_Unsplash.jpeg"
body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.html">Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="support">Contact Us?</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>Vidyalaya</h1> 
  <p>Learn or Teach anything on Vidyalaya!</p> 
</div>

<h2 class="text-center">Login</h2><br />
<div class="neomorphism">
<p class="errorMessage"><b>${msg}</b></p><br />
<form class="form-horizontal" action="performLogin" method="post">
<div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email" placeholder="Enter your email" class="form-control"  type="email">
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" >Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input type="password" name="password"  placeholder="Enter your password" class="form-control">
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="submit" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspLOGIN <span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
  
   <!-- <a href="reset_password">I forgot my password</a>  --> 
  </div>
</div>
</form>
</div>
<br />
<div class="loginfooter">

	<a href="showReg">Not a member? Click here to register.</a>
</div>

</body>
</html>