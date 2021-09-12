<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 6/12/2021
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <title>Đăng nhập</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="css/loginStyle.css">
<%--    <link rel="stylesheet" href="css/headerStyle.css">--%>
    <link rel="stylesheet" href="css/footerStyle.css">
</head>
<body>
<%--header--%>
<%@ include file="include/header.jsp"%>
<%--//header--%>
<%--main--%>
<div id="main">

    <div class="full">
        <div class="content" id="signIn"
             style=" <c:if test="${login > 0}"><c:out value="top: 0px;"/></c:if>
                     <c:if test="${login < 0}"><c:out value="top: -550px;"/></c:if>">
            <form action="checkLogin" method="post">
                <h2>Sign In</h2>
                <label>
                    <span>Email Address</span>
                    <input type="email" name="email">
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password">
                </label>
                <button class="submit" type="submit">Sign In</button>
            </form>
            <p class="forgot-pass">Forgot Password ?</p>

            <div class="social-media">
                <ul>
                    <li><img src="image/facebook.png"></li>
                    <li><img src="image/twitter.png"></li>
                    <li><img src="image/linkedin.png"></li>
                    <li><img src="image/instagram.png"></li>
                </ul>
            </div>
        </div>

        <div class="content" id="signUp" style="
        <c:if test="${login > 0}"><c:out value="top: 550px;"/></c:if>
        <c:if test="${login < 0}"><c:out value="top: 70px;"/></c:if> ">
            <form action="createAccount" method="post">
                <h2>Sign Up</h2>
                <label>
                    <span>Name</span>
                    <input type="text" name="name">
                </label>
                <label>
                    <span>Email Address</span>
                    <input type="email" name="email">
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password">
                </label>
                <label>
                    <span>Confirm Password</span>
                    <input type="password" name="password">
                </label>
                <button class="submit" type="submit">Sign Up</button>
            </form>
        </div>

        <div class="btn" id="btn-signUp">
            <button onclick="signIn()">Sign Up</button>
        </div>

        <div class="btn" id="btn-signIn">
            <button onclick="signUp()">Sign In</button>
        </div>
    </div>
</div>
<!--//main-->
<%--footer--%>
<%--<%@ include file="include/footer.jsp"%>--%>
<%--//footer--%>
<script src="js/loginScript.js"></script>
</body>
</html>
