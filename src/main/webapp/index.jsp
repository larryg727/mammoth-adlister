<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container text-center headerHero">
        <h1>Welcome to the Adlister!</h1>
        <h3>Buy stuff. Sell stuff.</h3>
        <div>
            <button id="home-view-ads-btn" type="button" class="btn btn-default btn-lg"><a href="/ads">view ads</a></button>
            <button id="home-sign-in-btn" type="button" class="btn btn-defauult btn-lg"><a href="/login">Sign In</a></button>
        </div>
    </div>

<jsp:include page="WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>
