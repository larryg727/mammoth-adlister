<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <div class="col-sm-8 col-sm-offset-2 content-container">
    <h1 class="col-xs-11">Edit Ad</h1>
        <a href="/profile"><button type="button" class="btn btn-danger col-xs-1 cancel">
            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
        </button></a>
    <form action="/ads/editAds" method="post" class="col-xs-12">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${ad.description}</textarea>
        </div>

    <div class="form-group">
        <label for="price">Price</label>

        <div class="input-group">
            <div class="input-group-addon">$</div>
            <input id="price" name="price" class="form-control" type="text" value="${ad.price}">
            <div class="input-group-addon">.00</div>
        </div>
    </div>
    <div class="form-group">
        <label for="category">Category</label>
        <select id="category" name="category" class="form-control">
            <option value="${ad.category}" selected>--Same Category--</option>
            <option value="1">Auto</option>
            <option value="2">Clothing</option>
            <option value="3">Electronics</option>
            <option value="4">Furniture</option>
            <option value="5">Games & Toys</option>
            <option value="6">Household</option>
            <option value="7">Other</option>
            <option value="8">Pets</option>
            <option value="9">Sports & Outdoors</option>
        </select>
    </div>
        <button name="btn" type="submit" class="btn btn-danger col-xs-3 col-xs-offset-1" value="delete">Delete</button>
        <button name="btn" type="submit" class="btn btn-primary col-xs-3 col-xs-offset-4" value="update">Update</button>
    </form>
</div>
</div>

<jsp:include page="../../WEB-INF/partials/Jsscripts.jsp" />
</body>
</html>