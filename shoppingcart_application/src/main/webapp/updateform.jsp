<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Update Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image:url('https://img.pikbest.com/backgrounds/20200604/blue-style-honeycomb-unique-background-template-v_1776853jpg!w700wp');
        background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed; 
            background-position: center;
            filter: brightness(100%);
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 400px;
        color:white;
        margin: 50px auto;
        margin-top:10px;
        margin-left:700px;
        border-radius: 8px;
        box-shadow: 0 0 10px white;
        padding: 15px;
    }
   
    form {
        display: flex;
        flex-direction: column;
    }
    input[type="text"], input[type="number"] {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    input[type="submit"] {
        padding: 10px;
        background-color: white;
        color: black;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container">
    <form:form action="newupdateform" modelAttribute="prodobj">
        <label for="id">Enter ID:</label>
        <form:input path="id" readonly="true"/><br>
        <label for="brand">Enter Brand:</label>
        <form:input path="brand"/><br>
        <label for="category">Enter Category:</label>
        <form:input path="category"/><br>
        <label for="price">Enter Price:</label>
        <form:input path="price"/><br>
        <label for="stock">Enter Stock:</label>
        <form:input path="stock"/><br>
        <input type="submit" value="Submit">
    </form:form>
</div>
</body>
</html>
