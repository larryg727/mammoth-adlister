<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container ">
        <div class="col-sm-6 col-sm-offset-3 content-container">
        <h1>Please Log In</h1>
        <h3>New User? <a href="/register">Register here.</a></h3>
        <form action="/login" method="POST">
            <div class="form-group">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary col-xs-4 col-xs-offset-4" value="Log In">
        </form>
    </div>
    </div>

    <jsp:include page="../WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>
