<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <h3>Your currently running ads</h3>
        <c:forEach var="ad" items="${ads}">
            <h3>${ad.title}</h3>
            <p>${ad.description}</p>
            <p><a href="/ads/adpage?id=${ad.id}">show ${ad.title}</a></p>
            <p><a href="/ads/editAds?id=${ad.id}">edit</a></p>
        </c:forEach>

    </div>

</body>
</html>
