<%@page import="com.jsp.shoppingcart_application.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
<style>
    body {
        font-family: cursive;
        background-image: url('https://coolbackgrounds.io/images/backgrounds/index/disco-dba865f1.png');
        background-size: cover;
        background-repeat: no-repeat;
   	    background-attachment: fixed; 
        background-position: center;
        filter: brightness(100%);
      }
    table {
        width: 100%;
        border-collapse:separate;
        margin-top: 20px;
        border-radius: 1px;
    }
    th, td {
        padding: 10px;
        border: 1px solid groove;
        text-align: left;
        border-radius: 4px;
    }
    th {
        background-color: black;
        color: white; 
        border-radius: 4px;
    }
    tr {
        background-color: white; 
    }
    a {
        display: block;
        width: 100px;
        padding: 10px;
        margin-top: 20px;
        background-color: black; 
        color: white; 
        text-align: center;
        
    }
    a:hover {
       color: red; 
        text-decoration: underline; 
    }
    h4{
    color:white;
    }
</style>
</head>
<body>
<%
List<Item> items = (List<Item>)request.getAttribute("itemlist");
double totalprice = (Double)request.getAttribute("totalprice");	
%>
<table cellpadding="20px" border="1">
    <tr>
        <th>Brand</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
    <%
    for(Item i : items) { 
    %>
    <tr>
        <td><%= i.getBrand() %></td>
        <td><%= i.getCategory() %></td>
        <td><%= i.getQuantity() %></td>
        <td><%= i.getPrice() %></td>
    </tr>
    <%
    } 
    %>
</table>

<h4>Total Price: <%= totalprice %></h4><br>
<a href="addorder">Buy Now</a>
</body>
</html>
