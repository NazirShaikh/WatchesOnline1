

<%@include file="customHeader.jsp" %>

<!-- Angular JS -->
	
	<div ng-app="myApp" ng-controller="myCtrl">
		<img src="Resources/Productimages/{{myScope.productId}}.jpg" width="300px" height="300px">
			{{myScope.productName}}
			<br>
			<br>
				<div class="section">
				<!-- <a href="addcart-{{myScope.productId}}" class="btn btn-primary value="submit"></a> -->
			
 <button class="btn btn-success"><a href="addcart-{{myScope.productId}}" style="text-decoration:none"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add To Cart</a></button>
 
	</div>
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