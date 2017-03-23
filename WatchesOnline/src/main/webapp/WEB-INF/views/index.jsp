<%@include file="customHeader.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Oswald:700|Patua+One|Roboto+Condensed:700" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

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
        			<img class="img-responsive" src="Resources\img\download.jpg" >
        				<div class="carousel-caption">
          					<h3>Adriatica</h3>
          				</div>
      			</div>

      			<div class="item">
        			<img class="img-responsive" src="Resources\img\download1.jpg" height="300px" width="350px">
        				<div class="carousel-caption">
          					<h3>Omega</h3>
          				</div>
          		</div>
    
      			<div class="item">
        			<img class="img-responsive" src="Resources\img\download2.jpg" height="300px" width="350px">
        				<div class="carousel-caption">
          					<h3>Omega</h3>
          				</div>
          		</div>

      			<div class="item">
        			<img src="Resources\img\download3.jpg" height="300">
        				<div class="carousel-caption">
          					<h3>Curren</h3>
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
    
 	<!-- Start Carousel Gallery -->
 	<hr>
 	 <hr>
      <hr>
      <br>
      
      
      <div class="container">
    <div id="main_area">
        <!-- Slider -->
        <div class="row">
            <div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets">
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-0">
                            <img src="Resources\img\hand.jpg">
                        </a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1"><img src="http://placehold.it/150x150&text=1"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2"><img src="http://placehold.it/150x150&text=2"></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3"><img src="http://placehold.it/150x150&text=3"></a>
                    </li>


                </ul>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="active item" data-slide-number="0">
                                        <img src="Resources\img\hand.jpg"></div>
												
                                    <div class="item" data-slide-number="1">
                                        <img src="http://placehold.it/470x480&text=1"></div>

                                    <div class="item" data-slide-number="2">
                                        <img src="http://placehold.it/470x480&text=2"></div>

                                    <div class="item" data-slide-number="3">
                                        <img src="http://placehold.it/470x480&text=3"></div>

                                    <div class="item" data-slide-number="4">
                                        <img src="http://placehold.it/470x480&text=4"></div>


                                <!-- Carousel nav -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/Slider-->
        </div>

    </div>
</div>

				<!-- End Carousel Gallery -->
 	
<br>
<br>
<br>
<hr>
  <!-- Start Contact Us -->
  
  	<section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container">
              <h2>Contact Us</h2>
              <div class="row">
                <div class="col-md-8 col-md-offset-2">
                  <form class="form-horizontal">
                    <div class="form-group">
                      <label for="exampleInputName2">Name</label>
                      <input type="text" class="form-control" id="exampleInputName2" placeholder="Name">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail2">Email</label>
                      <input type="email" class="form-control" id="exampleInputEmail2" placeholder="nazirs75@gmail.com">
                    </div>
                    <div class="form-group ">
                      <label for="exampleInputText">Your Message</label>
                     <textarea  class="form-control" placeholder="Description"></textarea> 
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                  </form>

                  <hr>
                    <h3>Our Social Sites</h3>
                  <ul class="list-inline banner-social-buttons">
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter"> <span class="network-name">Twitter</span></i></a></li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-facebook"> <span class="network-name">Facebook</span></i></a></li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-youtube-play"> <span class="network-name">Youtube</span></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
        </div>
      </section> <!-- End Contact Us -->
      
      <!-- Start Footer -->
      
<style>
.footer-distributed{
    background-color: #000033;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
    box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;

	padding: 55px 50px;
	margin-top: 80px;
}

.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}

/* Footer left */

.footer-distributed .footer-left{
	width: 30%;
}

/* The company logo */

.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}

.footer-distributed h3 span{
	color:  #ffffff;
}

/* Footer links */

.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}

.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */

.footer-distributed .footer-center{
	width: 45%;
}

.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}

.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}

.footer-distributed .footer-center p a{
	color:  #5383d3;
	text-decoration: none;;
}


/* Footer Right */

.footer-distributed .footer-right{
	width: 20%;
}

.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #000000;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span{
	display: block;
	color:  #000000;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons{
	margin-top: 25px;
}

.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;

	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;

	margin-right: 3px;
	margin-bottom: 5px;
}

/* If you don't want the footer to be responsive, remove these media queries */

@media (max-width: 880px) {

	.footer-distributed{
		font: bold 14px sans-serif;
	}

	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}

	.footer-distributed .footer-center i{
		margin-left: 0;
	}

}
</style>


<!DOCTYPE html>
<head>

    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />

	<title>State College of Florida Libraries</title>

	<link rel="stylesheet" href="css/demo.css">
	<link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

</head>

<html>

<head>

    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />

	<title>State College of Florida Libraries </title>

	<link rel="stylesheet" href="css/demo.css">
	<link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">

</head>



		<!-- The content of your page would go here. -->

		<footer class="footer-distributed">

			<div class="footer-left">
<div class="row"><span class="hidden-xs">
				<h3><span></span><a href="/WatchesOnline/"> <img src="http://lgimages.s3.amazonaws.com/data/imagemanager/22114/scf_libraries180x70.jpg"></span></h3></a>



				<p class="footer-links">
					<a href="Contact Us">Contact Us</a><p></p>
					·
					<a href="http://www.libsurveys.com/loader.php?id=117">Feedback</a><p></p>
					·
					<a href="http://www.linccweb.org/Linking.aspx">LINCCweb Links</a><p></p>
					·
					<a href="mailto:LibrarySuggestionBox@scf.edu">Suggestion Box</a><p></p>
					·
				
					<a href="http://libguides.scf.edu/c.php?g=119436&p=779092">Image Attribution</a>
				</p>

			
                </span>
			</div>
            </div>

			<div class="footer-center">

				<div>
					<i class="fa fa-map-marker"></i>
					<p><span>Hours: <a href="http://libguides.scf.edu/c.php?g=102813&p=710449">Bradenton</a> | <a href="http://libguides.scf.edu/c.php?g=102813&p=710461">Venice</a> | <a href="http://libguides.scf.edu/c.php?g=102813&p=710462">Lakewood Ranch</a> </span>
                    <a href="http://www.scf.edu/AboutSCF/Locations/default.asp">Maps</a></p>
				</div>

			<div>
<i class="fa fa-phone"></i>
<p><span>Bradenton Library : 941-752-5305</span><br>
                </div>
                
                <div>
                    <i class="fa fa-phone"></i>
                    <p><span>Venice Library : 941-408-1435</span></br>
                </div>
                
                <div>
                     <i class="fa fa-phone"></i>
                    <p><span>Lakewood Ranch : 941- 363-7250</span></p>
</div>

                <div>
                    <i class="fa fa-mobile"></i>
                    <p><span>Text: (941) 270-9643 | Twitter: @SCFLibraries</span></p>
                    
                </div>




				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="http://www.askalibrarian.org/vrl_intro.php?library=FLCC1500">Ask A Librarian</a></p>
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
                </br>
                </br>
                </br>
                <div class="row"><span class="hidden-xs">
					<span><h3>Our Mission Statement:</span></h3><p></p>
					<h4><font color="white">The State College of Florida Libraries Engage Students, Faculty, Staff, and Community Members in the Discovery and Creation of Knowledge.
				</p>
                </div>
                </span>

				<div class="footer-icons">

					<a href="https://www.facebook.com/statecollegeoffloridalibraries/" target="_blank"><i class="fa fa-facebook"></i></a>
					<a href="https://twitter.com/scflibraries" target="_blank"><i class="fa fa-twitter"></i></a>
                    <a href="https://www.instagram.com/scf_libraries/" target="_blank"><i class="fa fa-instagram"></i></a>
					<a href="https://www.pinterest.com/scflibraries/" target="_blank"><i class="fa fa-pinterest-square"></i></a>
                    <a href="https://www.linkedin.com/in/state-college-of-florida-libraries-a3a91a111" target="_blank"><i class="fa fa-linkedin"></i></a>
                    <a href-"https://www.youtube.com/user/SCFLibrary" target="_blank" > <i class="fa fa-youtube"></i></a>
                    
                    </br>
                </br
                    
                    
                   State College of Florida Libraries © 2017</h4></font>
</li></li></li></li>
</li></li>
</li></li>

<div><div><div>
				</div>

			</div>

		</footer>
      
      
      
      
     