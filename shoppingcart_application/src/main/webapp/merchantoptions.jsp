<%@page import="com.jsp.shoppingcart_application.dto.Merchant"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Merchant Dashboard</title>
<style>
    body {
        font-family: serif;
        margin: 0;
        padding: 20px;
        background-image: url('https://img.freepik.com/premium-photo/metal-shopping-cart-grey-background-black-friday-sale-concept-banner_427957-3952.jpg');
         background-size: cover;
         background-repeat: no-repeat;
         background-attachment: fixed; 
         background-position: center;
         filter: brightness(100%); 
    }
    .content {
        max-width: 800px; 
        margin: 0 auto; 
        padding: 20px;
        animation: fadeIn 1s ease;
        color:black;
        margin-right: 10px;
    }
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    .section {
        margin-top: 20px;
    }
    .section-title {
        font-size: 24px;
        margin-bottom: 10px;
    }
    .section-content {      
        border-radius: 5px;
        color:blue;
        font-size: 20px;
    }
    .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: black;
        color: white;
        border: none;
        border-radius: 5px;
        transition: background-color 0.3s, color 0.3s;
        text-decoration: none;
    }
    .btn:hover {
        background-color: #333;
    }
</style>
</head>
<body>
<div class="content">
    <h2>Hello! Welcome to the Dashboard</h2>
    <div class="section">
        <div class="section-content">
            <p>If you want to add a new product, click the button below:</p>
            <a href="addproduct" class="btn">Add Product</a>
        </div>
    </div>
    <div class="section">
        <div class="section-content">
            <p>If you want to view all the products that  you've added, click the button below:</p>
            <a href="viewallproducts" class="btn">View All Products</a>
        </div>
    </div>
</div>
</body>
</html>
