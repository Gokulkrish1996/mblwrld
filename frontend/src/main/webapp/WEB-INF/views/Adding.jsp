<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>adding</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>

<jsp:include page="AdminHeader.jsp"></jsp:include>


<div class="container">
 <h3 class="text-center">Hello ${sessionScope.username}</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Product</a></li>
    <li><a data-toggle="tab" href="#menu1">Category</a></li>
    <li><a data-toggle="tab" href="#menu2">Supplier</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      		 <form:form method="post" action="InsertProduct" enctype="multipart/form-data" class="form-signing">
			<span id="reuth-email" class="reuth-email"></span>
			<h3 class="input-title">Product ID</h3>
			<input class="form-control" type="number" name="productId" required/>
			<h3 class="input-title">Product Name</h3>
			<input class="form-control" type="text" name="productName" required/>			
			<h3 class="input-title">Product Desc</h3>
			<input class="form-control" type="text" name="productDesc" required/>
			<h3 class="input-title">Product Stock</h3>
			<input class="form-control" type="text" name="stock" required/>
			<h3 class="input-title">Product Price</h3>
			<input class="form-control" type="text" name="price" required/>
			
			<div class="form-group">
				<h3 class="input-title">Category Name</h3>
			<td>	<select class="form-control" name="catName" required>
				<option value="">----category choices----</option>
				<c:forEach items="${catList}" var="category">
				<option value="${category.catName}">${category.catName}</option></c:forEach>
					
				</select></td>
			</div>
			
			<div class="form-group">
				<h3 class="input-title">Supplier Id</h3>
			<td>	<select class="form-control" name="supplierId" required>
				<option value=""> ----supplier choices----</option>
				<c:forEach items="${supList}" var="supplier">
				<option value="${supplier.supplierId}">${supplier.supplierId}</option></c:forEach>
				</select></td>
			</div>
			<h3 class="input-title">Product Image</h3>
			<input class="form-control" type="file" name="pimage" required/>
			
			<br>
		<center>	<button class="btn btn-lg btn-primary" type="submit">Save</button>
			<button class="btn btn-lg btn-primary" type="reset">Cancel</button></center>
			</form:form>
    </div>
    
    
    <div id="menu1" class="tab-pane fade">
     <form method="post" action="AddCategory"  class="form-signing">
			<span id="reuth-email" class="reuth-email"></span>
			<h3 class="input-title">Category ID</h3>
			<input class="form-control" type="number" name="catId" required/>
			<h3 class="input-title">Category Name</h3>
			<input class="form-control" type="text" name="catName" required/>			
			<h3 class="input-title">Category Desc</h3>
			<input class="form-control" type="text" name="catDesc" required/>
			<br>
		<center>	<button class="btn btn-lg btn-primary" type="submit">Save</button>
			<button class="btn btn-lg btn-primary" type="reset">Cancel</button></center>
			</form>
    </div>
    <div id="menu2" class="tab-pane fade">
      <form method="post" action="AddSupplier"  class="form-signing">
			<span id="reuth-email" class="reuth-email"></span>
			<h3 class="input-title">Supplier ID</h3>
			<input class="form-control" type="number" name="supplierId" required/>
			<h3 class="input-title">Supplier Name</h3>
			<input class="form-control" type="text" name="supplierName" required/>			
			<h3 class="input-title">Supplier Address</h3>
			<input class="form-control" type="text" name="supplierAddress" required/>
			<br>
		<center>	<button class="btn btn-lg btn-primary" type="submit">Save</button>
			<button class="btn btn-lg btn-primary" type="reset">Cancel</button></center>
			</form>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>