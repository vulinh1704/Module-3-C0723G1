<%--
  Created by IntelliJ IDEA.
  User: Linh
  Date: 10/27/2023
  Time: 8:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/WEB-INF/style.css"/>">
    <style>
        img {
            width: 70px;
            height: 70px;
        }
    </style>
</head>
<body>
<a href="http://localhost:8080/products?action=create">Create Product</a>
Danh sách sản phẩm
<table border="1">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Image</th>
        <th>Action</th>
    </tr>
    <c:forEach var="item" items="${productList}">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>${item.price}</td>
            <td>${item.quantity}</td>
            <td><img src="${item.image}" alt=""></td>
            <td><button>Edit</button></td>
            <td><button onclick="confirm(`Are you ok ?`)"><a href="http://localhost:8080/products?action=delete&id=${item.id}">Delete</a></button></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
