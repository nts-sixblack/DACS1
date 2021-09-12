<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/31/2021
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <title>Player</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/updatePlayer.css">
</head>
<body>
    <!-- header -->
        <jsp:include page="include/header.jsp"/>
    <!-- //header -->
    <!-- main -->

    <div id="main">
        <div class="container">
            <div class="card mt-3">
                <div class="content">
                    <div class="image">
                        <img src="image/player/<c:out value="${player.anh}"/>" alt="" width="100%">
                    </div>
                    <div class="text">
                        <form action="updatePlayerController" method="post">
                            <div>
                                <p>Tên</p>
                                <input type="text" name="name" value="<c:out value="${player.ten}"/>">
                            </div>
                            <div>
                                <p>Số áo</p>
                                <input type="number" name="number" value="<c:out value="${player.soAo}"/>">
                            </div>
                            <div>
                                <p>Vị trí</p>
                                <input type="text" name="position" value="<c:out value="${player.viTri}"/>">
                            </div>
                            <div>
                                <p>Quốc tịch</p>
                                <input type="text" name="national" value="<c:out value="${player.quocTich}"/>">
                            </div>
                            <div>
                                <p>Chiều cao</p>
                                <input type="number" name="height" value="<c:out value="${player.chieuCao}"/>">
                            </div>
                            <div>
                                <p>Cân nặng</p>
                                <input type="number" name="weigh" value="<c:out value="${player.canNang}"/>">
                            </div>
                            <div>
                                <button class="btn btn-outline-info btn-success" type="submit">UPDATE</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- //main -->
    <!-- footer -->
    <!-- //footer -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
