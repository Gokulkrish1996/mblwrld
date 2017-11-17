<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>mobileworld</title>
</head>
<body>

<form:form action="${pageContext.request.contextPath}//UpdateProduct" modelAttribute="product">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Module</td>
	</tr>
	<tr>
		<td>Product ID</td>
		<td><form:input path="productId"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
	<td>Product Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
	<td>Product price</td>
		<td><form:input path="price"/></td>
	</tr>
	<tr>
	<td>CatId</td>
		<td><form:input path="catName"/></td>
	</tr>
	<tr>
	<td>SupId</td>
		<td><form:input path="supplierId"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateProduct"/>
			<button type="Product.jsp"  class="btn btn-lg btn-info">Cancel</button></center>
		</td>
	</tr>
	
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product ID</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Product Stock</td>
	<td>Product Price</td>
	<td>CatId</td>
	<td>SupId</td> 
	<td>Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.supplierId}</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.productId}"/>">DELETE</a>
			<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
		</td>
	</tr>
	
</c:forEach>

</table>

</body>
</html>