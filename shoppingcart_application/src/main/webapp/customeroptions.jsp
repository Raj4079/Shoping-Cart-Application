<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Options</title>
<style>
    body {
        font-family: cursive;
        margin: 0;
        padding: 20px;
         
        background-image: url('https://img.freepik.com/free-photo/arrangement-black-friday-shopping-carts-with-copy-space_23-2148667047.jpg');
        background-size: cover;
        background-repeat: no-repeat;
   	    background-attachment: fixed; 
        background-position: center;
        filter: brightness(100%);
    }
    .container {
        width: 300px;
        margin: 100px auto;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px black; 
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
        color:white;
    }
    p {
        color: white;
    }
    
    a {
        display: block;
        color: lime; 
        padding: 10px;
        border-radius: 4px;
        transition: background-color 0.3s, color 0.3s;
    }
    a:hover {
        background-color: black; 
        color: white; 
    }
</style>
</head>
<body>
<div class="container">
    <h2>Welcome to Our Online Store!</h2>
    <p>Explore our wide range of products:</p>
    <a href="fetchallproducts">View All Products</a>
    <a href="">View Products By Brand</a>
    <a href="">View Products By Category</a>
    <a href="">View Products Between Price Range</a>
</div>
</body>
</html>
