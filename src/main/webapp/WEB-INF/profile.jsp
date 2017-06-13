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
        <h1>Welcome, ${sessionScope.user}!</h1>
       <h3>Here are your currently running ads.</h3>

        <c:forEach var="ad" items="${userAds}">
            <div>
                <h4>${ad.title}</h4>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>

</body>
</html>
