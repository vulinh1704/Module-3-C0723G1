<%--
  Created by IntelliJ IDEA.
  User: Linh
  Date: 10/25/2023
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<% String username = (String) request.getAttribute("username");--%>
<%--    String[] names = (String[]) request.getAttribute("names");%>--%>
<%--<h1><%= username %>--%>
<%--</h1>--%>
<%--<% for (String name : names) { %>--%>
<%--    <h2><%=name%></h2>--%>
<%--<% } %>--%>

<h1>${username}</h1>
<h1>Danh sach ten</h1>
<c:forEach var="name" items="${names}">
    <c:if test="${name != 'Linh'}">
        <h4>${name}</h4>
    </c:if>
</c:forEach>

<h1>Danh sach sinh vien</h1>
<c:forEach var="student" items="${students}">
    <h5>${student.id} - ${student.name}</h5>
</c:forEach>
</body>
</html>
