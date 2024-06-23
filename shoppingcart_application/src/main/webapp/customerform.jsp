<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register as Customer</title>
<!-- Font Awesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
    body {
        font-family: monospace;
        margin: 0;
        padding: 0;
        background-color: transparent;
        background-image: url('https://t4.ftcdn.net/jpg/05/39/99/67/360_F_539996737_T5gJEIEqsGUjMXhrLZt0lDLcrOWsSHlb.jpg');
        background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
    }
    .container {
        max-width: 300px; /* Increased container length */
        left: 30%;
        margin: 90px auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        position: relative;
    }
    input[type="text"], input[type="email"], input[type="password"], input[type="number"] {
        width: calc(100% - 40px); /* Adjust width to account for icon */
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid lightgrey;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="text"] ~ i.fa,
    input[type="email"] ~ i.fa,
    input[type="password"] ~ i.fa
    input[type="number"] ~ i.fa {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        left: 5px;
        color: #aaa;
    }
    input[type="submit"] {
        width: 88%;
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
    .user-icon {
        position: absolute;
        top: -10px;
        left: 50%;
        transform: translateX(-50%);
    }
    
</style>
</head>
<body>
<div class="container">
    <i class="fa-regular fa-circle-user"></i>
    <h2>Create an Account</h2>
    <form:form action="savecustomer" modelAttribute="customerobj">
        <input type="text" name="name" placeholder="Enter name"> <i class="fas fa-user"></i><br>
        <input type="number" name="mobileno" placeholder="Enter Mobile No."> <i class="fas fa-mobile-alt"></i><br>
        <input type="email" name="email" placeholder="Enter email"> <i class="fas fa-envelope"></i><br>
        <input type="password" name="password" placeholder="Enter password"> <i class="fas fa-lock"></i><br>
        <input type="submit" value="Submit">
    </form:form>
</div>
</body>
</html>
