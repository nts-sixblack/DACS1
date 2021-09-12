<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/24/2021
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/newMatch.css">
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <title>New Match</title>
</head>
<body>
    <!-- header -->
    <%@ include file="include/header.jsp"%>
    <!-- //header -->
    <!-- main -->
    <div id="main">
        <div class="container">
            <div class="card mt-3">
                <div class="card-header">
                    <img src="image/logo.png" alt="">
                </div>
                    <div class="card-body">
                        <form action="createMatch" method="post">
                            <h2>New Match</h2>
                            <div class="mb-3">
                                <select class="form-select" aria-label="Default select example" name="team">
                                    <option selected>Choose Team</option>
                                    <c:forEach var="team" items="${listTeam}">
                                        <option value="${team.id}">${team.name}</option>
                                    </c:forEach>
                                </select>
                                <label for="basic-url" class="form-label mt-3">Link Video Match</label>
                                <div class="input-group mb-3">
                                    <span class="input-group-text">https://youtube.com/</span>
                                    <input type="text" class="form-control" name="link">
                                </div>
                                <label for="basic-url" class="form-label">Choose Date</label>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon4">Time</span>
                                    <input type="date" class="form-control" name="time">
                                </div>
                                <button type="submit" class="btn btn-outline-info btn-success">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //main -->
    <!-- footer -->
    <%@ include file="include/footer.jsp"%>
    <!-- //footer -->
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
