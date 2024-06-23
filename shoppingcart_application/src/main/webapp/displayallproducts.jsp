<%@page import="com.jsp.shoppingcart_application.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        font-family: cursive;
        margin: 0;
        padding: 20px;
        background-image: url('https://media.istockphoto.com/id/1169630303/photo/blue-textured-background.webp?b=1&s=170667a&w=0&k=20&c=tI2xFhXqXFqMM0IvxSYY3F7LIwv450h2ch3yD-lZ9HU=');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed; 
        background-position: center;
        filter: brightness(100%);
    }
        .product-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 10px; 
    margin-top: 20px;
    width: inherit;
    padding-right: 15px; 
    }
    .product-box {
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s, box-shadow 0.3s; 
}

.product-box:hover {
    transform: scale(1.05); 
    cursor: pointer; 
    box-shadow: 0 0 15px black; 
}
    .add-to-cart-btn {
        width: 120px;
        padding: 10px;
        background-color: black;
        color: white;
        text-align: center;
        text-decoration: none;
        border: none;
        border-radius: 4px;
        transition: background-color 0.3s;
        align-items: center;
        margin: auto;
    }
    .add-to-cart-btn:hover {
        background-color: darkblue;
    }
    #link
    {
    color:white;
    }
    #link:hover
    {
    	color:lime;
    }
    .cart
    {
    background-color: black;
    }
</style>
</head>
<body>
<% List<Product> products = (List<Product>) request.getAttribute("productslist"); %>
<button class="cart"><a href="viewitemsfromcart" id="link">View Cart</a></button>
<div class="container product-container">
    <% for(Product p : products) { %>
    <div class="card product-box">
        <div class="card-body">
            <h5 class="card-title">Brand:  <%= p.getBrand() %></h5>
            <p class="card-text">Category: <%= p.getCategory() %></p>
            <p class="card-text">Price: <%= p.getPrice() %></p>
            <a href="additem?id=<%= p.getId() %>" class="btn btn-primary add-to-cart-btn">Add to Cart</a>
        </div>
    </div>
    <% } %>
</div>
</body>
</html>
