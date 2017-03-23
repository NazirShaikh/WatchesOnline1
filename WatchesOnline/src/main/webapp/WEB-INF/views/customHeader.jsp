<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  <link href="Resources/css/styles.css" rel="stylesheet">

  

  <link rel="stylesheet" href="Resources/css/button.css" >


  
  <script src="Resources/js/jquery-1.10.2.min.js"></script>
  <script src="Resources/js/bootstrap.min.js"></script>
  
  
    <script src="Resources/js/angular.min.js" ></script>
</head>
<body>


<!-- start navbar -->
	<nav class="navbar navbar-default">
  		<div class="container-fluid">
  		
    		<div class="navbar-header">
      			<a class="navbar-brand" href="/WatchesOnline/">WatchesOnline</a>
    		</div>
    
   		<ul class="nav navbar-nav">
     		<li> <!-- class="active" --><a href="/WatchesOnline/">Home</a></li>
      			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin Panel <span class="caret"></span></a>
        			<ul class="dropdown-menu">
          				<li><a href="category">Manage Category</a></li>
          				<li><a href="subcategory">Manage SubCategory</a></li>
          				<li><a href="supplier">Manage Supplier</a></li>
           				<li><a href="product">Manage Product</a></li>
        			</ul>
      			</li>
      		<li><a href="">About</a></li>
      		<li><a href="">Contact Us</a></li>
    	</ul>
        <%-- 
        <form class="navbar-form navbar-center">
      		<div class="input-group">
        		<input type="text" class="form-control" placeholder="Search">
        			<div class="input-group-btn">
          				<button class="btn btn-default" type="submit">
            				<i class="glyphicon glyphicon-search"></i>
          				</button>
        			</div>
      		</div>
    	</form> --%>
    
    <ul class="nav navbar-nav navbar-right">
<!--       <li><a href="registration"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
    
    
   
    <li>
    <security:authorize access="isAuthenticated()">
    <a href="#" style="space-top: 10px; color: black;">Welcome,  		
   			 <security:authentication property="principal.username" /> 
			</security:authorize> 
			<security:authorize access="isAnonymous()">
			<li><a href="registration" style="space-top: 10px; color: black;"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
   			<li><a href="login"style="space-top: 10px; color: black;"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			 </security:authorize>
			 <security:authorize access="isAuthenticated()">
			<li><a href="logout" style="space-top: 10px; color: black;"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
			</security:authorize>
		
			</ul>
    
  </div>
</nav>

</body>
</html>