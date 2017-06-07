<%--
  Created by IntelliJ IDEA.
  User: larryg
  Date: 6/7/17
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%@include file="partials/head.jsp" %>
<body>
<%@ include file="/partials/navbar.jsp" %>

<form action="/login.jsp" method="post">
    <p>
        <label for="username">Username: </label>
        <input type="text" id="username" name="username">
    </p>
    <p>
        <label for="password">Password: </label>
        <input type="password" id="password" name="password">
    </p>
    <p>
        <button type="submit">Login</button>
    </p>
    <c:if test="${param.username == 'admin'}">
        <c:if test="${param.password == 'password'}">
            <c:redirect url="profile.jsp"/>
        </c:if>
    </c:if>


</form>


</body>
</html>
