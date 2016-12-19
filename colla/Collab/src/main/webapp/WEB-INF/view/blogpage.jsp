<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Blog Detail</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexstyle.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexnav.css'/>" rel="stylesheet"/>

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
        <li><a href="chats">Chat</a></li>
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

	<div class="single">
		<div class="container">
				<div class="single-top">
						<a href="#"><img src="<c:url value='resources/images/5.jpg'/>" alt="" /></a>
					<div class=" single-grid">
						<h4>${blog.btitle}</h4>				
							<ul class="blog-ic">
								<li><a href="#"><span> <i  class="glyphicon glyphicon-user"> </i>${blog.bauthor}</span> </a> </li>
		  						 <li><span><i class="glyphicon glyphicon-time"> </i>${blog.creationDate}</span></li>		  						 	
		  						 <li><span><i class="glyphicon glyphicon-eye-open"> </i>Hits:145</span></li>
		  					</ul>		  						
						<p>${blog.bcontent}</p>
					</div>
					<div class="comments heading">
						<h3>Comments</h3>
						<c:forEach items="${cmts }" var="a">
						<div class="media">
					      	<div class="media-body">
						        <h4 class="media-heading">	${a.userid}</h4>
						        <p>${a.creationDate}</p>
						        <p>${a.cmt}</p>
					      	</div>
					      <div class="media-right">
					        <a href="#">
								<img src="<c:url value='resources/images/si.png'/>" /> </a>
					      </div>
					 </div>
					 </c:forEach>
    				</div>
    				<div class="comment-bottom heading">
    					<h3>Leave a Comment</h3>
    				<form:form action="./addComment?id=${blog.blogId}" commandName="cmt" method="post">	
						<form:input type="text" value="Username" path="userid" />
						<form:hidden value="${blog.blogId}" path="blogid" />
						<form:textarea placeholder="comment" path="cmt"></form:textarea>
							<input type="submit" value="Comment">
					</form:form>
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