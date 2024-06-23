<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Form</title>
<!-- Font Awesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
    body {
        font-family: serif;
        background-image: url('https://previews.123rf.com/images/nachai/nachai1712/nachai171200020/91675986-blurred-photo-of-products-in-shelf-for-shopping-background.jpg');
    }

    .container {
        max-width: 300px;
        margin: 0 auto;
        margin-top: 60px;
        padding: 20px; 
        box-shadow: 0px 0px 10px 0px white; 
        animation: blink 1.5s; /* Apply blinking animation to the container */
    }

    @keyframes blink {
        0% { opacity: 0; }
        50% { opacity: 1; }
        100% { opacity: 0; }
    }

    h1 {
        text-align: center;
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
    }
    
    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid gray; 
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: black; 
        color: white; 
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: silver;
    }

    /* Style for FontAwesome icons */
    .icon {
        margin-right: 5px;
    }
</style>
</head>
<body>
<div style="text-align :center; margin-top: 50px;font-size: 20px;">Welcome! Add Your Product Here</div>
<div class="container">
    <h1>Product Form</h1>
    <h1>${message}</h1>
    <form:form action="saveproducts" modelAttribute="productobj">
        <div>
            <i class="fas fa-tag icon"></i> <!-- Font Awesome icon for Brand -->
            Enter Brand: <form:input path="brand" type="text"/>
        </div>
        <div>
            <i class="fas fa-list icon"></i> <!-- Font Awesome icon for Category -->
            Enter Category: <form:input path="category" type="text" />
        </div>
        <div>
            <i class="fas fa-cubes icon"></i> <!-- Font Awesome icon for Stock -->
            Enter Stock: <form:input path="stock"  type="number" />
        </div>
        <div>
            <i class="fas fa-dollar-sign icon"></i> <!-- Font Awesome icon for Price -->
            Enter Price: <form:input path="price"  type="number" />
        </div>
        <input type="submit" value="Submit" />
    </form:form>
</div>
</body>
</html>
