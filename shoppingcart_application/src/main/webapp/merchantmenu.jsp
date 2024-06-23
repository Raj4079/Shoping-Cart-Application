<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Merchant Management</title>
    <style>
        body {
            font-family: serif;
            margin: 0;
            padding: 20px;
            background-color: silver;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            padding: 20px;
            border: 2px solid black;
            border-radius: 8px;
            background-color: white; 
            box-shadow: 0px 0px 10px 0px black; 
        }
        .container a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            color: white; 
            background-color: black; 
            border: 2px solid groove ; 
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .container a:hover {
            background-color: white; 
            color: black; 
        }
    </style>
</head>
<body style="background:url('https://as2.ftcdn.net/v2/jpg/02/32/16/07/1000_F_232160763_FuTBWDd981tvYEJFXpFZtolm8l4ct0Nz.jpg')">    
    <div class="container">
        <h2>Welcome, Merchant!</h2>
        <p>Join our platform to manage your business more efficiently.</p>
        <a href="addmerchant">Register</a>
        <a href="merchantloginform.jsp">Login</a>
    </div>
</body>
</html>
