<%--
  Created by IntelliJ IDEA.
  User: huangjy40
  Date: 2021/2/3
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工列表</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>id</td>
            <td>name</td>
            <td>email</td>
            <td>gender</td>
            <td>lastName</td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.gender}</td>
                <td>${user.lastName}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
