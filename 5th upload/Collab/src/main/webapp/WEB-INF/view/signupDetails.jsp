<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Signup</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexstyle.css'/>" rel="stylesheet"/>
<link href="<c:url value='resources/css/indexnav.css'/>" rel="stylesheet"/>

</head>
<style>
body{
	padding:7em;
	background: url(resources/images/2.jpg)no-repeat; 
	background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
	
}

h1,h2,h3,h4,h5,h6{
	margin:0;			   
}	
p{
	margin:0;
}
ul{
	margin:0;
	padding:0;
}
label{
	margin:0;
}
a{ 
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
	transition: 0.5s all;
	outline: none;
	text-decoration:none;
}
a:hover{
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
} 
/*-- widget start here --*/
.login {
    margin-top: 3em;
}
.login h2 {
    font-size: 3em;
    color: #fff;
    text-align: center;
    margin-bottom: 1em;
}
.login h3 {
    font-size: 1em;
    text-align: center;
    color: #fff;
    margin-bottom: 0.5em;
    font-weight: 100;
}
.login h3 a {
    color: #ecba65;
	margin-left: 6px;
}
.login h3 a:hover{
    color: #fff;
}
.login-main {
    width: 30%;
    margin: 0 auto;
    border: 1px solid #fff;
    padding: 3em;
    background: rgba(0, 0, 0, 0.45);
}
.login h1, h5.w3ls-title {
    text-align: center;
    font-size:1.7em;
    color: #d6921e;
    margin-bottom: 1em;
	font-weight:100;
} 
.login input[type="text"],.login input[type="password"] {
    display: block;
    background: none;
	border: none;
    border-bottom: 1px solid #ffffff;
    width: 100%;  
    outline: none;
    font-size: 0.95em;
    color: #ffffff;
    font-weight: 400;
    -webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
    border-radius: 3px;
    padding: 10px 0px;
    text-align: center;
    margin: 0 0 2em 0em;
    font-family: 'Roboto Condensed', sans-serif;
}
.login input[type="text"]:focus ,.login input[type="password"]:focus{
    border-color: #d6921e;
} 
.login input[type="submit"] {
    font-size: 1em;
    color: #FFFFFF;
    padding: 0.6em 1em 0.6em 1em;
    display: block;
    border: none;
    margin: 3em auto 0em;
    outline: none;
    background:#d6921e;
	border: 1px solid #d6921e;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
    border-radius: 3px;
    text-align: center;
    width: 30%;
    cursor: pointer;
    font-family: 'Roboto Condensed', sans-serif;
	transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
}
.login input[type="submit"]:hover {
    background: transparent; 
    color: #d6921e;
}
.login p {
    font-size: 1em;
    color: #fff;
}
::-webkit-input-placeholder{
   color:#d4d2d2 !important;
} 
.copy-rights {
    text-align: center;
    padding: 3em 0;
}
.copy-rights p {
    font-size: 1em;
    color: #fff;
    text-align: center;
    line-height: 1.7em;
}
.copy-rights p a{
  color:#FFC562; 
} 
.copy-rights p a:hover{
  color: #fff; 
} 
.login-modal.login {
    width: 50%;
    margin: 5em auto 0;
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
        <li><a href="chats">Chat</a></li>
<!--         <li><a href="#">About Us</a></li> -->
        <li><a href="blog">Blog</a></li> 
        <li><a href="forum">Forum</a></li>
      </ul>
	  <ul class="nav navbar-nav pull-right">
		<li  class="active"><a href="memberShip"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		<li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	  </ul>
    </div>
  </div>
</div>
</div>
	<!-- login starts here -->
	<div class="login agile">
		<div class="w3agile-border">
			
			<div class="login-main login-agileits"> 
				<h1><i>Sign Up</i></h1> 
				<form:form modelAttribute="registerModule" accept-charset="utf-8"
					class="form" role="form">
					<p>Name</p>
					<form:input path="fname" type="text" pattern="[a-zA-Z\s]{3,30}" placeholder="name" name="name" required="" />
					<!-- to display validation messages -->
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('fname')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<p>Email</p>
					<form:input path="email" type="text" placeholder="example@gmail.com" name="mail" required=""/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<p>DOB</p>
					<form:input path="dob" type="text" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" placeholder="date of birth" name="DOB" required=""/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('dob')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<p>User Name</p>
					<form:input path="uname" type="text" placeholder="username" name="name" required=""/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('uname')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<p>Password</p>
					<form:input path="pwrd" type="password" placeholder="Password" name="Password" required=""/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('pwrd')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<p>Confirm Password</p>
					<form:input path="repwrd" type="password" placeholder="Confirm Password" name="Password" required=""/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('repwrd')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
					<p>Contact No</p>
					<form:input path="mobno" type="text" placeholder="mobile" name="number" required=""/>
					<c:forEach
						items="${flowRequestContext.messageContext.getMessagesBySource('mobno')}"
						var="err">
						<div>
							<span style="color:white" class="error1">${err.text}</span>
						</div>
					</c:forEach>
					<br>
<!-- 					<p>Skills</p> -->
<%-- 					<form:input path="skls" type="text" placeholder="skills" name="mail" required=""/> --%>
<%-- 					<c:forEach --%>
<%-- 						items="${flowRequestContext.messageContext.getMessagesBySource('skls')}" --%>
<%-- 						var="err"> --%>
<!-- 						<div> -->
<%-- 							<span style="color:white" class="error1">${err.text}</span> --%>
<!-- 						</div> -->
<%-- 					</c:forEach> --%>
<!-- 					<br> -->
					<input name="_eventId_submit" type="submit" onclick="return validatePassword() value="Signup">
				</form:form>
				
			</div>
		</div> 
	</div>
	
	<script type="text/javascript">
	function validatePassword(){
	var password = document.getElementById("pwrd").value;
    var confirmPassword = document.getElementById("repwrd").value;
    if (password != confirmPassword) {
        alert("Passwords does not match.");
        return false;
    }
    return true;
}

		
	</script>
	<!--slide-end-->
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