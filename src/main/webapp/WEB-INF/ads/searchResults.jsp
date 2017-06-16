<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container text-center">
    <h1>Your search results!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-4">
            <div class="ad-container">
                <img src="http://via.placeholder.com/250x250" alt="img_place_holder">
                <a href="/ads/adpage?id=${ad.id}"><h2>${ad.title}</h2></a>
                <p>${ad.description}</p>
            </div>
        </div>
    </c:forEach>
</div>


<jsp:include page="../../WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>
