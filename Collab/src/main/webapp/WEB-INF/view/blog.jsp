<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Blog Post</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexstyle.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexnav.css'/>" rel="stylesheet"/>

</head>
<style>
  body {
    background: url(resources/images/3.jpg);
	background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}
.form-signin
{
    max-width: 330px;
    padding: 15px;
	color:white;
    margin: 0 auto;
}
h1 {
	margin-top: 20px;
	font-size: 100px;
    color: white;
    line-height: 50px;
}
input.form-control::-webkit-input-placeholder 
{ 
font-size: 9pt; 
color: #d9d9d9; 
}
textarea[type="text"]::-webkit-input-placeholder
{
	font-size: 9pt;
    color:#d9d9d9;
}
.form-signin input[type="text"]
{
	color: white;
	background: transparent;
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
	color: white;
	background: transparent;
    margin-bottom: 5px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
	position : static;
    margin-top: 100px;
    padding: 30px 0px 20px 0px;
	border-radius: 15px;
	background-color: rgba(255, 255, 255,0.0);
   
    -moz-box-shadow: 97px 87px 45px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 10px 10px 10px rgba(99, 56, 10, 0.3);
}
a{
color  :  #d9d9d9;
}
.login-title
{
    color: black-shadow;
    font-size: 22px;
    font-weight: 400;
    display: block;
}
.need-help
{
    margin-top: 10px;
}
.new-account
{
    display: block;
    margin-top: 10px;
}
.btn {
	  margin-top: 20px;
      padding: 2px 50px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 15;
      transition: .2s;
  }
  </style>
<body>
	<!--header-top-starts-->
	<div class="navbar navbar-inverse navbar-fixed-top opaque-navbar">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navMain">
  <span class="glyphicon glyphicon-chevron-right" style="color:white;"></span>
    
  </button>
      <a class="navbar-brand" href="#"><i>Collaboration</i></a>
    </div>
    <div class="collapse navbar-collapse" id="navMain">
      <ul class="nav navbar-nav pull-left">
        <li><a href="index">Home</a></li>
<!--         <li><a href="#">About Us</a></li> -->
        <li class="active"><a href="blog">Blog</a></li> 
        <li><a href="forum">Forum</a></li>
      </ul>
	  <ul class="nav navbar-nav pull-right">
		<li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		<li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  </ul>
    </div>
  </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
				<h1 class="text-center login-title"><i>Blog Post</i></h1>
                <form:form action="./confirmpage" commandName="blo" role="form" class="form-signin" method="post">
				<div class="form-group">
				
				<label for="inputName" class="center control-label">Blog Title</label>
				<div>
                <form:input path="btitle" type="text" class="form-control" placeholder="Title"/>
				</div>
				</div>
				<div class="form-group">
				<label for="inputName" class="left control-label">Blog Author</label>
				<div>
                <form:input path="bauthor" type="text" class="form-control" placeholder="Author"/>
				</div>
				</div>
				<div class="form-group">
				<label for="inputContact" class="left control-label">Tags</label>
				<div>
                <form:input path="btag" type="text" class="form-control" placeholder="Tags"/>
				</div>
				</div>
				<div class="form-group">
				<label for="Address" class="left control-label">Blog Content</label>
				<div>
                <form:textarea path="bcontent" type="text" style="background: transparent;" class="form-control" rows="4" placeholder="Content" /></textarea>
				</div>
				</div>				
                <button class="btn" type="submit">
                    Post</button>
                </form:form>
                <a href="bloglist">list blog</a>
            </div>
            
        </div>
    </div>
</div>
	<div class="footer">
		<div class="container">
			<div class="footer-text">
				<p>© 2016 Collaboration. All Rights Reserved | Design by  <a href="http://www.Collaboration.com/" target="_blank">Collaboration</a> </p>
			</div>
		</div>
	</div>
	<!--footer-end-->
</body>
</html>