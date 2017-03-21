<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href="Resources/css/styles.css" rel="stylesheet">

  <link rel="stylesheet" href="Resources/css/bootstrap.min.css"/>
  <script src="Resources/js/angular.min.js" ></script>
</head>
<body>


	
	<jsp:include page="customHeader.jsp" />
	
<%-- 	<div class="text-center">  		   
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
		</tr>
	</c:forEach>
	</table>

</body>
</html> --%>


	<div class="container">
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
	

	<!-- <div class="container" ng-app="myApp" ng-controller="myCtrl"> -->
	<table class="table table-hover table-fixed" id="myTable">
	
    <tr>
	<th class="control-label col-sm-2">Sr No.</th>
	<th class="control-label col-sm-2">Name</th>
	<th class="control-label col-sm-2">Description</th>
	<th class="control-label col-sm-2">Edit</th>
	<th class="control-label col-sm-2">Delete</th>
	</tr>
	
	<tr ng-repeat="c in myScope">
	
    <td class="control-label col-sm-2">{{c.categoryId}}</td>
	<td class="control-label col-sm-2">{{c.categoryName}}</td>
	<td class="control-label col-sm-2">{{c.categoryDescription}}</td>
	<td class="control-label col-sm-2"><a href="editcategory-{{c.categoryId}}">Edit</a></td>
	<td class="control-label col-sm-2"><a href="deletecategory-{{c.categoryId}}">Delete</a></td>
    </tr>
	</table>
	
<script>
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope){
    $scope.myScope=${listCategoryByJson};
});
</script>	


<script src="Resources/js/jquery-1.10.2.min.js"></script>

<script src="Resources/js/bootstrap.min.js" ></script>
</body>
</html>