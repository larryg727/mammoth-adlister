<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp" />
<div class="container">
    <h1>Welcome to the Adlister ad page!</h1>

    <c:forEach var="ad" items="${ads}">
        <h3>Title: ${ad.title}</h3>
        <p>Description: ${ad.description}</p>
    </c:forEach>
</div>
</body>
</html>