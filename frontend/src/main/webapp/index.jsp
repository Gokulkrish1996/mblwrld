<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>

<style>

body, html
{
    height: 88%;
    margin: 0;
}

.bg {
    
    background-image: url("resources/Index BG.jpg");    
    height: 100%;     
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

</style>
</head>
<body>
<div class="bg">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>  
<jsp:include page="/WEB-INF/views/Carousel.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>
</body>
</html>
