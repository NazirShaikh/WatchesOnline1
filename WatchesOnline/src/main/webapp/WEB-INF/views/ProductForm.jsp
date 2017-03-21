<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	
	<jsp:include page="customHeader.jsp"/>
	
	<div class="container">
	<div class="text-center">  		   
	 	 <a href="category" class="btn btn-info" role="button">Category</a>
		 <a href="subcategory" class="btn btn-info" role="button">SubCategory</a>
		 <a href="supplier" class="btn btn-info" role="button">Supplier</a>
	</div>
	<br>
	<h2 align="center">ADD PRODUCT</h2>
	
	<form:form method="POST" modelAttribute="product" action="addproduct" enctype="multipart/form-data" class="form" >
	
	<div class="container">
	
	<form:input type="hidden" path="productId" class="form-control"/>
	
	<form:input path="productName" placeholder="Product Name" class="form-control"/>
	<form:errors path="productName" cssClass="error" />
	<br>
	<form:input path="productDescription" placeholder="Product Description" class="form-control"/>
	<form:errors path="productDescription" cssClass="error" />
	<br>
	<form:input path="productQuantity" placeholder="Product Quantity" class="form-control"/>
	<br>
	<form:input path="productPrice" placeholder="Product Price" class="form-control"/>
	<br>
	<form:input path="productDiscount" placeholder="Product Discount" class="form-control"/>
	<br>
	<form:input path="productAmount" placeholder="Product Amount" class="form-control"/>
	<br>
	
	<div class="form-group">                         
    			<label class="custom-file">
    			<form:input path="productImg" type="file"></form:input>
    			<span class="custom-file-control"></span>
   				</label>
				</div><br>
	
	
			<form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" class="form-control">
			</form:select>
			<br>
			<form:select path="subCategory.subCategoryName" items="${subCategoryList}" itemValue="subCategoryName" itemLabel="subCategoryName" class="form-control">
			</form:select>
			<br>
			<form:select path="supplier.supplierName" items="${supplierList}" itemValue="supplierName" itemLabel="supplierName" class="form-control">
			</form:select>
	<br>
	<input class="btn btn-primary" type="Submit" name="addproduct">
	</div>
	</form:form>
	
	<table class="table table-hover">
                
		              <tr>
                        <th>Product Id</th>
                        <th>Product Name</th>
                        <th>Product Description</th>
                        <th>Product Quantity</th>
                        <th>Product Price</th>
                        <th>Product Discount</th>
                        <th>Product Amount</th>
                        <th>View Product</th>
                        <th>Edit Product</th>
                        <th>Delete Product</th>
                    </tr>
                  <c:forEach items="${productList}" var="c">
                  <tr>
                  	<td><img src="Resources/Productimages/${c.productId}.jpg" width="100px" height="100px"></td>
                    <td>${c.productId}</td>
                    <td>${c.productName}</td>
                    <td>${c.productDescription}</td>
                    <td>${c.productQuantity}</td>
                    <td>${c.productPrice}</td>
                    <td>${c.productDiscount}</td>
                    <td>${c.productAmount}</td>
                    <td><a href="viewproduct-${c.productId}"><button type="button" class="btn btn-success">View</button></a></td>
                    <td><a href="editproduct-${c.productId}"><button type="button" class="btn btn-success">Edit</button></a></td>
                    <td><a href="deleteproduct-${c.productId}"><button type="button" class="btn btn-success">Delete</button></a></td>
                    </tr>
                </c:forEach>
            </table>
	
	

</body>
</html>







<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
  

 <form:form method="POST" modelAttribute="Product" action="addproduct" enctype="multipart/form-data" id="login-form" role="form" style="display: block;">
 
        
   
   <div class="form-group">
                   <form:input path="productName" class="form-control" placeholder="Product Name"/>
        </div><br>
        
        
        <div class="form-group">
                          <form:input path="productDescription" class="form-control" placeholder="Product Description"/>
        </div><br>
        
    
    <div class="form-group">
      <form:input path="productQuantity" class="form-control" placeholder="Product Quantity"/>
     </div><br>
        
    
            <div class="form-group">                
        <form:input path="productPrice" class="form-control" placeholder="Product price"/>
        </div><br>
 

    <form:select path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" name="Category" class="form-control"  ></form:select><br>
    
    <form:select path="subCategory.subCategoryName" items="${listSubCategory}" itemValue="subCategoryName" itemLabel="subCategoryName" name="SubCategory" class="form-control" ></form:select>
    <br>
    <form:select path="supplier.suppliername" items="${supplierList}" itemValue="suppliername" itemLabel="suppliername" name="Supplier" class="form-control" ></form:select>
    
    
        
                 <input type="submit" value="addProduct" tabindex="4" class="form-control btn btn-login"/>
     
      
</form:form>


</body>
</html> --%>