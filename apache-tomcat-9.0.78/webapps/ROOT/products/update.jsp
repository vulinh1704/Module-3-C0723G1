<%--
  Created by IntelliJ IDEA.
  User: Linh
  Date: 10/30/2023
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="http://localhost:8080/products?action=update&id=${id}" method="post">
    <input type="text" name="name" placeholder="name" value="${product.name}">
    <input type="text" name="quantity" placeholder="quantity" value="${product.quantity}">
    <input type="text" name="price" placeholder="price" value="${product.price}">
    <input type="text" name="image" placeholder="image" value="${product.image}">
    <img src="${product.image}" alt="">
    <button>Submit</button>
</form>
</body>
</html>
