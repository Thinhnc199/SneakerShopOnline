<%-- 
    Author     : Thinhnc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
                top: 10%;
                left: 50%;
                transform: translate(-50%, -50%);
            }
            .card {
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
                margin-top: 10px;
                width: 100%;
                background-color: #2a9df4;
                color: #080710;
                padding: 15px 0;
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
                        <h3>Register</h3>
                    </div>
                    <div class="card-body">
                        <form action = "registerSubmit" method="POST">
                           
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
                                    value="${param.username}"
                                    />
                            </div>
                            <c:if test="${not empty requestScope.errorMsg.errorUsername}">
                                <p style="color: red">${requestScope.errorMsg.errorUsername}</p>
                            </c:if>
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
                                    value="${param.password}"
                                    />
                            </div>
                             <c:if test="${not empty requestScope.errorMsg.errorPassword}">
                                <p style="color: red">${requestScope.errorMsg.errorPassword}</p>
                            </c:if>
                             <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"
                                          ><i class="fas fa-unlock-alt"></i
                                        ></span>
                                </div>
                                <input
                                    name="passwordConfirm"
                                    type="password"
                                    class="form-control"
                                    placeholder="confirm password"
                                    value="${param.passwordConfirm}"
                                    />
                            </div>
                             <c:if test="${not empty requestScope.errorMsg.errorConfirm}">
                                <p style="color: red">${requestScope.errorMsg.errorConfirm}</p>
                            </c:if>
                              <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"
                                          ><i class="fas fa-user-edit"></i
                                        ></span>
                                </div>
                                <input
                                    name="name"
                                    type="text"
                                    class="form-control"
                                    placeholder="your name"
                                    value="${param.name}"
                                    />
                            </div>
                             <c:if test="${not empty requestScope.errorMsg.errorName}">
                                <p style="color: red">${requestScope.errorMsg.errorName}</p>
                            </c:if>
                             <c:if test="${not empty requestScope.errorMsg.errorDuplicate}">
                                <p style="color: red">${requestScope.errorMsg.errorDuplicate}</p>
                            </c:if>
                            <div class="form-group">
                                <input
                                    type="submit"
                                    value="Register"
                                    class="btn float-right login_btn"
                                    />
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Already an user?<a href="login.jsp">Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
