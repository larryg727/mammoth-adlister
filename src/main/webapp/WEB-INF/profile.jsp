<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container text-center content-container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <h3>Your currently running ads</h3>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-4">
            <div class="ad-container">
            <img src="http://via.placeholder.com/250x250" alt="img_place_holder">
            <a href="/ads/adpage?id=${ad.id}"><h2>${ad.title}<br><small> $${ad.price}</small></h2></a>

            <p>${fn:substring(ad.description, 0, 40)}..</p>
            <button type="button" class="btn btn-default" aria-lable="Left Align">
                <a href="/ads/editAds?id=${ad.id}"><span class="glyphicon glyphicon-pencil" area-hidden="true"></span>edit</a>
            </button>
            </div>
        </div>
    </c:forEach>

</div>
<jsp:include page="../WEB-INF/partials/Jsscripts.jsp"/>
</body>
</html>
