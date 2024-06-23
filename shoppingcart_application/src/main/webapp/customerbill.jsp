<%@page import="com.jsp.shoppingcart_application.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.shoppingcart_application.dto.Orders"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Bill</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://img.freepik.com/free-photo/calculator-money-notepad-orange-background-copy-space_169016-24503.jpg?size=626&ext=jpg&ga=GA1.1.1395991368.1711584000&semt=sph');
         background-size: cover;
            background-repeat: no-repeat;
            background-attachment: scroll; 
            background-position: center;
            filter: brightness(100%);
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        margin-left:20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: #333;
    }
    .customer-info {
        margin-bottom: 20px;
    }
    .customer-info p {
        margin: 5px 0;
    }
    table.bill-table {
        width: 100%;
        border-collapse: collapse;
    }
    table.bill-table th, table.bill-table td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: left;
    }
    table.bill-table th {
        background-color: #f2f2f2;
    }
    table.bill-table tfoot td {
        font-weight: bold;
    }
</style>
</head>
<body>
<%
    Orders o = (Orders)session.getAttribute("ordersdetails");
    List<Item> items = o.getItems();
%>
<div class="container">
    <h2>Customer Bill</h2>
    <div class="customer-info">
        <p><strong>Name:</strong> <%= o.getName() %></p>
        <p><strong>Address:</strong> <%= o.getAddress() %></p>
        <p><strong>Mobile number:</strong> <%= o.getMoileNo() %></p>
    </div>
    <table class="bill-table">
        <thead>
            <tr>
                <th>Brand</th>
                <th>Category</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <% for(Item i : items) { %>
                <tr>
                    <td><%= i.getBrand() %></td>
                    <td><%= i.getCategory() %></td>
                    <td><%= i.getQuantity() %></td>
                    <td><%= i.getPrice() %></td>
                </tr>
            <% } %>     
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">Total:</td>
                <td><%= o.getTotalPrice() %></td>
            </tr>
        </tfoot>
    </table>
</div>
<div style="text-align: center; margin-top: 20px;"><p>Thank you <%=o.getName() %> for Shopping .Please Visit Again our store</p></div>
</body>
</html>
