<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login As Customer</title>
<!-- Font Awesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
body {
            background-image:url('https://t3.ftcdn.net/jpg/02/64/92/28/360_F_264922838_NErJEovZiP9MTa49apqL1Vs3f88ZT8Dg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed; 
            background-position: center;
            filter: brightness(100%);
}

.container {
    position: absolute;
    left: 20%;
    width: 20%;
    padding: 20px;
    margin-top:70px;
    background-color: rgba(0, 0, 128, 0.5); 
    border-radius: 10px;
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    color:white;
   background: linear-gradient(45deg, navy , rgba(0, 0, 128, 0) 25%, rgba(0, 0, 128, 0) 75%, navy , navy), 
                      linear-gradient(45deg, navy , rgba(0, 0, 128, 0) 25%, rgba(0, 0, 128, 0) 75%, navy , navy);
}

    h4 {
        text-align: center;
        margin-bottom: 20px;
        color: green; 
    }
    
    h3 {
        text-align: center;
        margin-bottom: 20px;
        color: red; 
    }
    
    form {
        text-align: center;
    }
    input[type="email"], input[type="password"], input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        border: 1px solid gray; 
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: black; 
        color: white; 
        border: none;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
        background-color: gray;
    }
    .links {
        text-align: center;
        
    }
    .links a {
        text-decoration: none;
        color: white;
        margin: 0 5px;
    }
    .links a:hover {
    text-decoration: underline;
    color: black;
}
    
}
</style>
</head>
<body>

<div class="container">
    <div class="welcome">
        <h2>Welcome Customer</h2>
        <p>Please login to access your account.</p>
    </div>
    <h4>${smsg}</h4>
	<h3>${imsg}</h3>
    <form action="validatecustomer">
        <label for="email"> <i class="fa fa-envelope"></i> Enter Email:-</label> <br>
        <input type="email" name="email"><br>
        <label for="password"> <i class="fa fa-lock"></i> Enter Password:-</label> <br>
        <input type="password" name="password"><br>
        <input type="submit" value="Login Here">
    </form>

    <div class="links">
        <a href="#">Already User</a>
        <span>|</span>
        <a href="addcustomer">Sign Up</a>
    </div>
</div>
</body>
</html>
