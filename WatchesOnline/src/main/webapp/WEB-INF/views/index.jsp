<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
<html lang="en">
<head>


  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="Resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/button.css" >
  
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  
  <script src="Resources/js/jquery-1.10.2.min.js"></script>
  <script src="Resources/js/jquery.sldr.js"></script>
  <style>
/* .myCarousel {
 width: 70%;
    height: 50%;
   
} */ 
</style>
</head>

<body>

	<%-- <%@include file="customHeader.jsp" %> --%>
	<jsp:include page="customHeader.jsp" />
	<%-- <%@ include file="footer.html" %> --%>
	


<div class="row" style=" margin-bottom: 0px; margin-top: -20px;">
<c:forEach var="category" items="${categoryList}">
<div class="dropdown">
	<div class="col-md-2">
  <button class="dropbtn">${category.categoryName}</button>
  <div class="dropdown-content">
  	<div class="row">
    	<a href="#"><c:forEach var="subCategory" items="${category.subCategory}">
		<div class="col-md-12"><ul><li>
			${subCategory.subCategoryName}</li></ul>
		</div>
	</c:forEach> </a>
    </div>
  </div>
  </div>
</div>
</c:forEach>
</div>
	
	
	<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100%;height: 50%; margin-top: -5px;">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="Resources\img\download.jpg" height="300">
        <div class="carousel-caption">
          <h3>Adriatica</h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="Resources\img\download1.jpg" height="300">
        <div class="carousel-caption">
          <h3>Omega</h3>
          <p></p>
        </div>
      </div>
    
      <div class="item">
        <img src="Resources\img\download2.jpg" height="300">
        <div class="carousel-caption">
          <h3>Omega</h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="Resources\img\download3.jpg" height="300">
        <div class="carousel-caption">
          <h3>Curren</h3>
          <p></p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>





<!-- <div class="container">
  <div class="row">
    <div class="col-sm-3">
      <div class="thumbnail">
        <a href="Resources\img\gallery1.jpg" target="_blank">
        <h5>ROLEX</h5>
        	<img src="Resources\img\gallery1.jpg" style="height:10% ,width:48%">
          <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail">
        <a href="Resources\img\gallery2.jpg" target="_blank">
        <h5>OMEGA</h5>
          <img src="Resources\img\gallery2.jpg" style="height:10% ,width:48%">
          <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail">
        <a href="Resources\img\gallery3.jpg" target="_blank">
        <h5>OMEGA</h5>
          <img src="Resources\img\gallery3.jpg" style="height:10% ,width:48%">
          <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail">
        <a href="Resources\img\gallery4.jpg" target="_blank" >
        <h5>ROLEX</h5>
          <img src="Resources\img\gallery4.jpg" style="height:10% , width:48%">
          <div class="caption">
            <p></p>
          </div>
        </a>
      </div>
    </div>
    
  </div>
</div>
 -->
</body>
</html>