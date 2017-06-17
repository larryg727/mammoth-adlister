<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="col-sm-8 col-sm-offset-2 content-container">
    <h1 class="col-xs-11">Update your profile here</h1>
        <a href="/profile"><button type="button" class="btn btn-danger col-xs-1 cancel">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
        </button></a>

    <form action="/updateProfile" method="POST" class="col-xs-12">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.email}">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-primary col-xs-4 col-xs-offset-4" value="Log In">
    </form>
</div>
</div>

<jsp:include page="../WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>
