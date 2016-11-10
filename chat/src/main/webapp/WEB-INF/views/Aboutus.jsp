<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>About Us</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
 <script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>
 <script src="<c:url value='resources/js/jquery-2.2.3.min.js'/>"/></script>
  
</head>
<style>
  body {
    background:url('resources/images/5.jpg');
     background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 450px;
}
 </style>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      
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
        <div class="row">
            
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> About US</legend>
         <h3>
        <p style="color: #9932cc;">Chat with friends.
          </form>
        </div>
    </div>
</div>

<nav class="navbar navbar-inverse navbar-fixed-bottom">
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
