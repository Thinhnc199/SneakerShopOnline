<%-- 
    Author     : Thinhnc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Home Page</title>
        <jsp:include page="include.jsp" />
        <style>
            .container {
                margin-top: 50px;
                display: flex;
                flex-wrap: wrap;
            }
         
            .card {
                /* Change background color */
                background-color: white;

                /* Add border */
                border: 1px solid #bacdd8;

                /* Add space between the border and the content */
                padding: 8px;
                border-radius: 12px;
                width: 30%;
                margin-bottom: 50px;
            }
            .card img {
                display: block; /* Ensures the image is treated as a block element */
                margin: 0 auto; /* Centers the image by setting left and right margins to auto */
                max-width: 100%; /* Ensure the image doesn't exceed the width of its container */
            }

            .card:nth-child(3n-1){
                margin-left: 50px;
                margin-right: 50px;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        <img src="https://i.pinimg.com/564x/fb/26/c6/fb26c6857a13cde8de3c7bb2d5827699.jpg" alt="ThinhStore_Discounts" 
             style="width: auto; height: auto; display: block; margin: 0 auto; max-width: 100%; margin-top: 40px; ">
            
        <!-- Show List Product -->
        <div class="container">
            <c:forEach var="item" items="${requestScope.data}">
                <div class="card">
                    <img class="card-img-top" style="width: 300px; height: 250px" src="./images/${item.image}" />
                    <div class="card-body">
                        <h5 class="card-title">${item.name}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">
                            Product Price: ${item.price}$
                        </h6>
                        <p class="card-text">
                            ${item.description}
                        </p>
                        <a href="cart?id=${item.id}" class="btn btn-primary">Add to Cart</a>
                        <c:if test="${sessionScope.user.role}">
                            <a href="update?id=${item.id}" class="btn btn-success">Update</a>
                            <button onclick="deleteFunction('${item.id}')" class="btn btn-danger">Delete</button>   
                        </c:if>
                    </div>
                </div>
            </c:forEach>


        </div>
        <script>
            function deleteFunction(id) {
                let isConfirmed = confirm("Are you sure about that?");
                if (isConfirmed) {
                    window.location.href = "delete?id=" + id;
                } else {
                    alert("Cancel Delete");
                }
            }
        </script>
    </body>
</html>
