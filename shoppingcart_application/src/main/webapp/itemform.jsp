<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Item to Cart</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
    body {
        font-family: cursive;
        margin: 0;
        padding: 20px;
        background-image: url('https://www.shutterstock.com/image-vector/smartphone-surrounded-by-shopping-cart-600nw-1539636704.jpg');
         background-size: cover;
        background-repeat: no-repeat;
   	    background-attachment: fixed; 
        background-position: center;
        filter: brightness(100%); 
    }
    form {
       position: absolute;
    left: 10%;
    width: 20%;
    padding: 20px;
    margin-top:70px;
    border-radius: 10px;
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    color:white;
    }
    input[type="text"] {
        width: calc(100% - 24px);
        padding: 10px;
        margin-bottom: 20px;
        border-radius: 4px;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: gray; 
        color: white; 
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
        background-color: black; 
    }
    .fas
    {
    color:black;
    }
</style>
</head>
<body>
${msg}
<form:form action="additemtocart" modelAttribute="itemobj">
    <form:hidden path="pid"/>
<i class="fas fa-industry"></i> Brand:-		<form:input path="brand" readonly="true"/><br>
<i class="fas fa-tags"></i> Category:-	<form:input path="category" readonly="true"/><br>
    <i class="fas fa-dollar-sign"></i> Price:-		<form:input path="price" readonly="true"/><br>
    <i class="fas fa-boxes"></i> Enter Quantity:-	<form:input path="quantity" type="text"/><br>
    <input type="submit" value="Add to Cart">
</form:form>
</body>
</html>
