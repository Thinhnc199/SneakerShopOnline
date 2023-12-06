<%-- 
    Author     : Thinhnc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .navbar-nav {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 80%;
        text-align: center;
        
    }

    .navbar-nav .nav-item {
        margin: 0 8px;
    }
</style>
<!-- Header -->
<!--<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">ThinhStore.vn</a>-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">
        <img src="https://vetores.org/d/typescript.svg" alt="ThinhStore_Logo" style="height: 50px;">
        ThinhStore.vn
    </a>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="showResult"
                   >Home <span class="sr-only">(current)</span></a
                >
            </li>
            <li class="nav-item">
                <a class="nav-link" href="cartView.jsp">View Cart</a>
            </li>
            <c:if test="${sessionScope.user.role}">
                <li class="nav-item">
                    <a class="nav-link" href="createForm.jsp">Add New Product</a>
                </li>
            </c:if>
        </ul>
        <span class="navbar-text"> Welcome, ${sessionScope.user.name} <a style="font-size: 16px; color: red" href="logout">Logout</a> </span>
    </div>
</nav>
