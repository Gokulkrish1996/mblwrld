

<%-- <table cellspacing="2" align="center" >
<tr bgcolor="gray">
	<td>Product Name</td>
	<td>Price</td>
	<td>Category</td>
	<td>Stock</td>
	<td>Photo</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productName}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.stock}</td>
		<td>
			<a href="productDesc/${product.productId}">
			<img src="<c:url value="resources/images/${product.productId}.jpg"/>" width="150px" height="150px">
			</a>
		</td>
	</tr>
</c:forEach>

</table> --%>






<%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<style>
.product_view .modal-dialog{max-width: 800px; width: 100%;}
.pre-cost{text-decoration: line-through; color: #a5a5a5;}
.space-ten{padding: 10px 0;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>mobileworld</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

<jsp:include page="UserHeader.jsp"></jsp:include>

Welcome : ${sessionScope.username}

<div class="container">
    <div class="row">
    
        <div class="col-md-4">
              <div class="thumbnail">                 
                <img src="resources/maamis-chicken-masala-02-500x500.jpg" alt="" class="img-responsive">               
                <div class="caption">
                  <h4 class="pull-right"><span class="fa fa-inr"></span>45.00</h4>
                  <h4><a href="#">Maamis Masala</a></h4>
                  <p>Chicken Masala Powder. (Available in 50gm, 100gm, 250gm, 500gm & 1Kg)</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (24 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="thumbnail">
                <img src="resources/maamis-biriyani-masala-01-500x500.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right"><span class="fa fa-inr"></span>55.00</h4>
                  <h4><a href="#">Maamis Masala</a></h4>
                  <p>Briyani Masala Powder. (Available in 50gm, 100gm, 250gm, 500gm & 1Kg)</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (25 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="thumbnail">
                <img src="resources/maamis-bajji-bonda-01-500x500.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right"><span class="fa fa-inr"></span>30.00</h4>
                  <h4><a href="#">Maamis Masala</a></h4>
                  <p>Bajji Bonda Mix. (Available in 50gm, 100gm, 250gm, 500gm & 1Kg)</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (18 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="thumbnail">
                <img src="resources/maamis-coriander-powder-01-500x500.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right"><span class="fa fa-inr"></span>15.00</h4>
                  <h4><a href="#">Maamis Masala</a></h4>
                  <p>Coriander Powder. (Available in 50gm, 100gm, 250gm, 500gm & 1Kg)</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (24 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            
            
    </div>
</div>


<div class="modal fade product_view" id="product_view">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
                <h3 class="modal-title">Chicken Masala Powder</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 product_img">
                        <img src="resources/maamis-chicken-masala-02-500x500.jpg" class="img-responsive">
                    </div>
                    <div class="col-md-6 product_content">
                        <h4>Product Id: <span>51526</span></h4>
                        <div class="rating">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            (24 reviews)
                        </div>
                        <p>In this blend, the flavouring agents marginally predominate the taste elements. Consequently the blend is less steeped in pungency. For chicken curry, this gives the right balance between the spice-elements and other ingredients in the dish..</p>
                        <h3 class="cost"><span class="fa fa-inr"></span> 45.00 <small class="pre-cost"><span class="fa fa-inr"></span> 55.00</small></h3>
                        <div class="row">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="select">
                                    <option value="" selected="">Size</option>
                                    <option value="50gm">50gm</option>
                                    <option value="100gm">100gm</option>
                                    <option value="250gm">250gm</option>
                                    <option value="500gm">500gm</option>
                                </select>
                            </div>
                            
                            <!-- end col -->
                            <div class="col-md-4 col-sm-12">
                                <select class="form-control" name="select">
                                    <option value="" selected="">QTY</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            <!-- end col -->
                        </div>
                        <div class="space-ten"></div>
                        <div class="btn-ground">
                            <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</button>
                            <button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-heart"></span> Add To Wishlist</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>