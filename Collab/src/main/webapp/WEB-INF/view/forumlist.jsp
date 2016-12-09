<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>forumlist</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexstyle.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexnav.css'/>" rel="stylesheet"/>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<script>
var c=${pdata};
   //var app=angular.module('pdata',[]);
   angular.module('myapp',[]).controller('Forumcontroller',function($scope)
   {
	 //$http.get("addProduct")
	 //.then(function (response){$scope.names=response.data.records;});
	   $scope.aa=c;
	   
   });
</script>
</head>
<body>
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

	<div class="single">
		<div class="container" ng-app="myapp" ng-controller="Forumcontroller">
				<div class="single-top">
					<div class=" single-grid" ng-repeat="b in aa | filter:test">
						<h4><a href="forumpage?id={{b.forumId}}">{{b.question}}</a></h4>				
							<ul class="blog-ic">
								<li><a href="#"><span> <i  class="glyphicon glyphicon-user"> </i>{{b.author}}</span> </a> </li>
		  						 <li><span><i class="glyphicon glyphicon-time"> </i>{{b.creationDate}}</span></li>		  						 	
		  						 <li><span><i class="glyphicon glyphicon-eye-open"> </i>Hits:145</span></li>
		  					</ul>		  						
						<p>{{b.summery}}</p>
					</div>
					
				</div>	
			</div>					
	</div>
	<!--end-single-->
	<!--footer-starts-->
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