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
    <h1>Ad page!</h1>
    <div class="col-md-12">
        <img src="http://via.placeholder.com/250x250" alt="">
        <h2>Title: ${ad.title}</h2>
        <p>Posted by: ${user.username}</p>
        <p>Description: ${ad.description}</p>
    </div>
</div>
<jsp:include page="../../WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>