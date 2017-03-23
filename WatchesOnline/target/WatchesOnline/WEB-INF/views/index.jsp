
<%@include file="customHeader.jsp" %>

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
        <img class="img-responsive" src="Resources\img\download.jpg" height="300px" width="350px">
        <div class="carousel-caption">
          <h3>Adriatica</h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img class="img-responsive" src="Resources\img\download1.jpg" height="300px" width="350px">
        <div class="carousel-caption">
          <h3>Omega</h3>
          <p></p>
        </div>
      </div>
    
      <div class="item">
        <img class="img-responsive" src="Resources\img\download2.jpg" height="300px" width="350px">
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
