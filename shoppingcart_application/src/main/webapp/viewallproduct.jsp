<%@page import="java.util.List"%>
<%@page import="com.jsp.shoppingcart_application.dto.Merchant"%>
<%@page import="com.jsp.shoppingcart_application.dto.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
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
        border-collapse: separate;
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
        color: blue;
    }
    a:hover {
    	color: red; 
        text-decoration: underline; 
    }
</style>
</head>
<body>
<%

List<Product> products=(List<Product>)request.getAttribute("productlist"); 
%>
<table cellPadding="20px" border="1">
<th>id</th>
<th>Brand</th>
<th>Category</th>
<th>Price</th>
<th>Stock</th>
<th>Update</th>
<th>Delete</th>
<%
for(Product p :products){
%>
<tr>
<td><%=p.getId() %></td>
<td><%=p.getBrand() %></td>
<td><%=p.getCategory()%></td>
<td><%=p.getPrice() %></td>
<td><%=p.getStock() %></td>
<td><a href="update?id=<%=p.getId()%>">update</a></td>
<td><a href="delete?id=<%= p.getId()%>">delete</a></td>
</tr>
<%
}
%>

<a href="merchantlogout">Logout</a>
</body>
</html>