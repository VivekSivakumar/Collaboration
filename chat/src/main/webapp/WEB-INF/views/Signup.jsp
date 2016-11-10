<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Register</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
 <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
  
</head>
<style>
  body {
    background:url('resources/images/4.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
 </style>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      <li><a href="Aboutus"><span class="glyphicon glyphicon-globe"></span>About Us</a></li>
          </ul>
<ul class="nav navbar-nav navbar-right">
      <li><a href="Signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="Signin"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
    </ul>

</div>
</nav>


<div class="container">
        <div class="row centered-form">
         <div style="margin-top:50px;" class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
         <div class="panel panel-default">
        <div class="panel-heading">
	 <h3 class="panel-title">Registration</h3>
	</div>
	<div class="panel-body">
	<form role="form">
<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<div class="form-group">
</div>
</div>	
</div>

<div class="form-group">
	<input type="fullname" name="fullname" id="fullname" class="form-control input-sm" placeholder="Enter your Fullname">
</div>

<div class="form-group">
	<input type="username" name="username" id="username" class="form-control input-sm" placeholder="Enter your Username">
</div>

<div class="form-group">
	<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Enter the Password">
</div>

<div class="form-group">
	<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Enter the Email Address">
</div>

<div class="form-group">
	<input type="contactno" name="contactno" id="contactno" class="form-control input-sm" placeholder="Enter the Contact no">
</div>

<div class="form-group">
	<input type="addr" name="addr" id="addr" class="form-control input-sm" placeholder="Enter the Address">
</div>

<div class="form-group">
	<input type="city" name="city" id="city" class="form-control input-sm" placeholder="Enter the City">
</div>

<div class="form-group">
	<input type="state" name="state" id="state" class="form-control input-sm" placeholder="Enter the State">
</div>

<div class="form-group">
	<input type="country" name="country" id="country" class="form-control input-sm" placeholder="Enter the Country">
</div>

<div class="form-group">
	<input type="postal" name="postal" id="postal" class="form-control input-sm" placeholder="Enter the Postal code">
</div>

</div>

<div class=" text-center">
<a class="btn btn-success" href="Signin.html" role="button">Submit</a>
<a class="btn btn-danger" href="Home.html" role="button">Cancel</a>
   </div>

</form>
</div>
</div>
   </div>
 </div>
</div>  



<nav class="navbar navbar-inverse">
<div class="container">
  <div class="row">
  <hr>
    <div class="col-lg-12">
      <div class="col-md-8">
           
      </div>
      <div class="col-md-4">
        <p class="text-success pull-right">© 2016 . All rights reserved</p>
      </div>
    </div>
  </div>
</div>
</nav>
 

</body>
</html>
