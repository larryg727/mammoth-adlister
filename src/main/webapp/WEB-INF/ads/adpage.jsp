<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad page"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container text-center">
    <div class="col-md-8 col-md-offset-2 content-container">
    <h1>Ad page!</h1>
        <img src="http://via.placeholder.com/500x400" alt="">
        <h2>${ad.title} - $${ad.price}</h2>
        <p>Posted by: ${user.username} <br> ${ad.description}</p>
    </div>
</div>
<jsp:include page="../../WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>