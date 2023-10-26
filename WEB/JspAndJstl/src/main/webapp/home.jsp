<%--
  Created by IntelliJ IDEA.
  User: Linh
  Date: 10/26/2023
  Time: 8:35 AM
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
    <title>Document</title>
</head>
<body>
<%--<% String name = (String) request.getAttribute("username");--%>
<%--    String[] names = (String[]) request.getAttribute("names");--%>
<%--%>--%>
<%--<h1>Hello <%= name %>--%>
<%--</h1>--%>

<%--<h1>Danh sách tên</h1>--%>
<%--<% for (String item : names) { %>--%>
<%--    <h4> <%=item%> </h4>--%>
<%--<%}%>--%>

<h1>${username}</h1>

<h1>Danh sách tên là: </h1>
<c:forEach var="item" items="${names}">
    <c:if test="${item != 'Sang'}">
        <h4>${item}</h4>
    </c:if>
</c:forEach>

<h2>Sinh viên là: ${student.id} - ${student.name}</h2>
</body>
</html>

<%--Tạo một List sinh viên bên controller và thực hiện --%>
<%--hiển thị Tất cả lên view--%>
<%--Hiển thị tất cả sinh viên tuổi > 15--%>
<%--Hiển thị tất cả sinh tên bắt đầu bằng H--%>
