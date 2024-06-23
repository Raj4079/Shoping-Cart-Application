<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Here</title>
<!-- Font Awesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
    body {
        margin: 0;
        padding: 0;
        background-image: url('https://file.forms.app/sitefile/Starting%20an%20online%20retail%20business%20with%20order%20forms%20cover-min.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
        filter: brightness(100%);
    }
    .container {
        position: absolute;
	    left: 20%;
	    width: 15%;
	    padding: 20px;
	    margin-top:110px;
	    
	    box-shadow: 0 8px 32px 0 white;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 4px;
        border: 1px solid #ccc;
        box-sizing: border-box;
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

    /* Style for FontAwesome icons */
    .icon {
        margin-right: 5px;
    }
</style>
</head>
<body>
<div style="text-align: center; margin-top: 50px; color: black; margin-right: 400px;margin-bottom: -50px;font-size:large;">Hello! To complete the order, please enter the receiver's details below:</div>
<div class="container">

    <form:form action="saveorder" modelAttribute="ordersobj">
        <div>
            <i class="fas fa-user icon"></i> <!-- Font Awesome icon for Name -->
            Enter Name: <form:input path="name" /><br>
        </div>
        <div>
            <i class="fas fa-mobile-alt icon"></i> <!-- Font Awesome icon for MobileNo -->
            Enter MobileNo: <form:input path="moileNo" /><br>
        </div>
        <div>
            <i class="fas fa-map-marker-alt icon"></i> <!-- Font Awesome icon for Address -->
            Enter Address: <form:input path="address" /><br>
        </div>
        <input type="submit" value="Submit">
    </form:form>
</div>
</body>
</html>
