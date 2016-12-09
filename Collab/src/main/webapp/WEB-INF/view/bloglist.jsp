<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Blog List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexstyle.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexnav.css'/>" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>

<script>
var c=${pdata};
   //var app=angular.module('pdata',[]);
   angular.module('myapp',[]).controller('Blogcontroller',function($scope)
   {
	 //$http.get("addProduct")
	 //.then(function (response){$scope.names=response.data.records;});
	   $scope.aa=c;
	   
   });
</script>
</head>
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
        <li><a href="blog">Blog</a></li> 
        <li><a href="forum">Forum</a></li>
      </ul>
	  <ul class="nav navbar-nav pull-right">
		<li><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		<li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  </ul>
    </div>
  </div>
</div>

	<!--banner-end-->
	<!--about-starts-->
	<div class="about" ng-app="myapp" ng-controller="Blogcontroller">
		<div class="container" >
			<div class="about-main" ng-repeat="b in aa | filter:test">
				<div class="col-md-8 about-left">
					<div class="about-one">
						<p>Find The Most</p>
						<h3>{{b.btitle}}</h3>
					</div>
					<div class="about-two">
						<a href="single.html"><img src="<c:url value='resources/images/5.jpg'/>" alt="" /></a>
						<p>Posted by <a href="#">{{b.bauthor}}</a> {{b.creationDate}} <a href="#">comments(2)</a></p>
						<p>{{b.bcontent}}</p>
						<div class="about-btn">
							<a href="blogpage?id={{b.blogId}}">Read More</a>
						</div>
						<ul>
							<li><p>Share : </p></li>
							<li><a href="#"><span class="fb"> </span></a></li>
							<li><a href="#"><span class="twit"> </span></a></li>
							<li><a href="#"><span class="pin"> </span></a></li>
							<li><a href="#"><span class="rss"> </span></a></li>
							<li><a href="#"><span class="drbl"> </span></a></li>
						</ul>
					</div>		
				</div>
				<div class="clearfix"></div>			
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