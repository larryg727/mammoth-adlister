<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar transparent navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/">B.M.S</a>
        </div>

        <form class=" navbar-left navbar-form action="/searchResults" method="get">
            <div class="form-group">
                <input id="search" name="search" type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
        </form>
        <div  class="nav navbar-nav navbar-left">
            <li role="presentation" class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    Browse By Category<span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="/category?id=1">Auto</a></li>
                    <li><a href="/category?id=2">Clothing</a></li>
                    <li><a href="/category?id=3">Electronics</a></li>
                    <li><a href="/category?id=4">Furniture</a></li>
                    <li><a href="/category?id=5">Games & Toys</a></li>
                    <li><a href="/category?id=6">Household</a></li>
                    <li><a href="/category?id=7">Other</a></li>
                    <li><a href="/category?id=8">Pets</a></li>
                    <li><a href="/category?id=9">Sports & Outdoors</a></li>
                </ul>
            </li>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/ads">View ads</a></li>
           <c:if test="${sessionScope.user == null}">
            <li><a href="/register">Register</a></li>
            <li><a href="/login">Login</a></li>
           </c:if>
            <c:if test="${sessionScope.user != null}">
                <li role="presentation" class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                        Profile<span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/profile">View Profile</a></li>
                        <li><a href="/updateProfile">Update Profile</a></li>
                        <li><a href="/ads/create">Create Ad</a></li>
                    </ul>
                </li>

            <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
