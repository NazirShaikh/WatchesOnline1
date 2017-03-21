<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="Resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

	<jsp:include page="customHeader.jsp" />
	<br>
	<div class="container">
	
	<h2 align="center">REGISTRATION FORM</h2>
  <form:form class="form" modelAttribute="userDetails" action="addUserDetails">
  

	<form:input path="username" placeholder="Enter Email Id" class="form-control"/>
	<form:errors path="username" cssClass="error" />
	<br>
	
	<form:input class="form-control" type="password" path="password" placeholder="Password" />
	<br>
	<form:input class="form-control" path="fname" placeholder="First Name"/>
	<br>
	<form:input class="form-control" path="lname" placeholder="Last Name"/>
	<br>
	<form:input class="form-control" path="DOB" placeholder="Date of Birth"/>
	<br>
	<form:input class="form-control" path="contactNo" placeholder="Contact Number"/>
	<br>
	<form:input class="form-control" path="alternateContactNo" placeholder="Alternate Contact Number"/>
	<br>
	<input type="submit" value="signup" />
	<input type="reset" value="Reset" />
</form:form>
  

     
</body>
</html>    
    
