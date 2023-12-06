<%-- 
    Author     : Thinhnc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <jsp:include page="include.jsp" />
        <style>
            html,
            body {
                background-image: url("https://img.freepik.com/free-vector/gradient-white-monochrome-background_23-2149011361.jpg?w=1800&t=st=1699378911~exp=1699379511~hmac=62826065f6852443177f01067fdc5603b0ee1467b12a8156c5656c6ae3174fae");
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
            }

            .wrapper {
                position: fixed;
                top: 5%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
            .card {
/*                margin-top: auto;
                margin-bottom: auto;
                width: 400px;
                background-color: rgba(0, 0, 0, 0.5) !important;*/
                height: auto;
                width: 400px;
                background-color: whitesmoke;
                position: absolute;
                transform: translate(-50%,-50%);
                margin-top:  370px;
                left: 50%;
                border-radius: 50px;
                backdrop-filter: blur(10px);
                border: 2px solid rgba(255,255,255,0.1);
                box-shadow: 0 0 40px rgba(8,7,16,0.6);
                padding: 50px 35px;
            }
            .card-header h3 {
                color: black;
            }
            .input-group-prepend span {
                width: 50px;
                background-color: #2a9df4;
                color: black;
                border: 0 !important;
            }
          

            input:focus {
               
                outline: 0 0 0 0 !important;
                box-shadow: 0 0 0 0 !important;
            }

            .login_btn {
                margin-top: 5px;
                width: 100%;
                background-color: #2a9df4;
                color: #080710;
                padding: 5px 0;
                font-size: 20px;
                font-weight: 600;
                border-radius: 10px;
                cursor: pointer;
                text-align: center;
            }

            .login_btn:hover {
                color: black;
                background-color: white;
            }

            .links {
                color: black;
            }

            .links a {
                margin-left: 4px;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                       <h3> <img src="https://vetores.org/d/typescript.svg" alt="ThinhStore_Logo" style="height: 60px;">
                        ThinhStore.vn</h3>
                    </div>
                    <div class="card-body">
                        <form action="login" method="POST">


                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"
                                          ><i class="fas fa-user"></i
                                        ></span>
                                </div>
                                <input
                                    name="username"
                                    type="text"
                                    class="form-control"
                                    placeholder="username"
                                    />
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"
                                          ><i class="fas fa-key"></i
                                        ></span>
                                </div>
                                <input
                                    name="password"
                                    type="password"
                                    class="form-control"
                                    placeholder="password"
                                    />
                            </div>
                            <c:if test="${not empty requestScope.invalid}">
                                <p style="color: red">${requestScope.invalid}</p>
                            </c:if>
                            <div class="form-group">
                                <input
                                    type="submit"
                                    value="Login"
                                    class="btn float-right login_btn"
                                    />
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Don't have an account?<a href="register">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
