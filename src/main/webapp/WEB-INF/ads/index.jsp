<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container text-center content-container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-4 text-center">

            <div class="ad-container">
                <img src="http://via.placeholder.com/250x250" alt="">
                <a href="/ads/adpage?id=${ad.id}"><h2>${ad.title}<br><small> $${ad.price}</small></h2></a>
                <p>${fn:substring(ad.description, 0, 45)}..</p>

            </div>

        </div>
    </c:forEach>
</div>


<jsp:include page="../../WEB-INF/partials/Jsscripts.jsp"/>
</body>
</html>
