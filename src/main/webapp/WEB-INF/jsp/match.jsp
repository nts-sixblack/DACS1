<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/20/2021
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <title>Match</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/matchStyle.css" type="text/css">
</head>
<body>
    <%--header--%>
    <jsp:include page="include/header.jsp"/>
    <%--//header--%>
    <%--main--%>
    <div id="main">
        <div class="video">

            <iframe src="<c:out value="${match.link}"/>"/>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <div id="infor">
            <div class="name">
                <div class="left">
                    <img src="image/logoTeam/<c:out value="${match.imageOne}"/>.png" alt="">
                </div>
                <div class="right">
                    <img src="image/logoTeam/<c:out value="${match.imageTwo}"/>.png" alt="">
                </div>
            </div>
            <p>Round: <c:out value="${match.idMatch}"/> </p>
        </div>
    </div>
    <%--//main--%>
    <%--footer--%>
    <jsp:include page="include/footer.jsp"/>
    <%--//footer--%>


<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
