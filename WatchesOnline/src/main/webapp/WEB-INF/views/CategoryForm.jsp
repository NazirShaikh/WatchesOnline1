<%@include file="customHeader.jsp" %>
	<%@ page isELIgnored="false" %>
	<div class="text-center">  		   
	 	 <a href="subcategory" class="btn btn-info" role="button">SubCategory</a>
		 <a href="product" class="btn btn-info" role="button">Product</a>
		 <a href="supplier" class="btn btn-info" role="button">Supplier</a>
	</div>
	<br>
	<h2 align="center">ADD CATEGORY</h2>
	
	<form:form method="POST" modelAttribute="category" action="addcategory" class="form">
	
	<div class="container">
	<form:input type="hidden" class="form-control" path="categoryId" />
	</div>
	
	
	<form:input path="categoryName" placeholder="Category Name" class="form-control"/>
	<form:errors cssClass="error" path="categoryName"/>
	<br>
	
	<form:input path="categoryDescription" placeholder="category Description" class="form-control"/>
	<form:errors cssClass="error" path="categoryDescription"/>
	<br> 
	
	<input class="btn btn-primary" type="Submit" name="Add category">

</form:form>
		<table class="table table-hover">
		<tr>
		<th>Category Id</th>
		<th>Category Name</th>
		<th>Category Description</th>
		<th>Edit category</th>
		<th>Delete category</th>
		</tr>

	<c:forEach var="c" items="${categoryList}">
		<tr> 
			<td>${c.categoryId}</td>
			<td>${c.categoryName}</td>
			<td>${c.categoryDescription}</td>
 			<td><a href="editcategory-${c.categoryId}"><button type="button" class="btn btn-success">Edit</button></a></td>
			<td><a href="deletecategory-${c.categoryId}"><button type="button" class="btn btn-success">Delete</button></a></td>
			
<%-- 			<td><a href="editcategory-${c.categoryId}"class="btn"><i class="icon-edit"></i> <strong>Edit</strong></a></td>
			<td><a href="deletecategory-${c.categoryId}"class="btn"><i class="icon-trash"></i> <strong>Delete</strong></a></td> --%>
		</tr>
	</c:forEach>
	</table>



	<%-- <div class="container">
	<div class="text-center">  		   
	 	 <a href="category" class="btn btn-info" role="button">SubCategory</a>
		 <a href="subcategory" class="btn btn-info" role="button">Supplier</a>
		 <a href="supplier" class="btn btn-info" role="button">Product</a>
	</div>
	<br>
	
	<form:form method="POST" modelAttribute="category" action="addcategory" class="form">
	
	<div class="container">
	<form:input type="hidden" class="form-control" path="categoryId" />
	</div>
	
	<div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="categoryName">Enter Category Name</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="categoryName" placeholder="Category Name" autofocus="true" />		
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="categoryName" />
			</div>
		  </div>
		  <br>
		  <div class="row">
		  	<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label  path="categoryDescription">Enter Category Description</form:label>		
			</div>
		  	<div class="col-xs-12 col-sm-4 col-md-4">		
				<form:input class="form-control" path="categoryDescription" placeholder="Category Description" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:errors cssClass="error" path="categoryDescription" />
			</div>	
		  </div>
		<br>  
		  <div class="row">
		  	<div class="col-sm-12 col-md-12">	
		  		<div class="text-center">	
					<input class="btn btn-primary" type="Submit" name="Add Category">
				</div>
				
			</div>
		  </div>
	<br>
	</form:form>		
	
	<hr style="height:2px;border-width:0;color:gray;background-color:gray">
 
	<div ng-App ="myApp"  ng-controller="myCtrl"></div>
 <div class="text-center">
 	<h1>Category List</h1>
 </div>
 <div class="row">	
 	<div class="input-group col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="Search..." />
 		<div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </div>
 	</div>
 </div>
 <br>
	

	<div class="container" ng-app="myApp" ng-controller="myCtrl"> 
	<table>
	<tr ng-repeat="c in myScope">
	<td>{{c.categoryId}}</td>
	</table>
	</div>
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope){
    $scope.myScope=${categoryListByJson};
});
</script>	
 --%>