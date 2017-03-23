<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="Resources/js/angular.min.js"></script>
 <link href="Resources/css/styles.css" rel="stylesheet">

  <link rel="stylesheet" href="Resources/css/bootstrap.min.css"/>
</head>

<body>
<div ng-app="myApp" ng-controller="myCtrl">

<img src="Resources/Productimages/{{myScope.productId}}.jpg" width="300px" height="300px">
{{myScope.productName}}
<br>
<br>
<input class="btn btn-primary" type="Submit" value="Add To Cart">
</div>


<!-- AngularJS -->	
<!-- <script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
	$scope.myData=${productData};
});
</script>	  --> 

<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
    $scope.myScope=${productData};
    /* $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    } */
});
</script>	    

</body>
</html>