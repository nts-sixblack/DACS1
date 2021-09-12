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
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/commentStyle.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/highLight.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <title>Highlight Match</title>
</head>
<body>
<%--header--%>
    <jsp:include page="include/header.jsp"/>

<%--//header--%>
<%--main--%>
    <div class="container" id="main">
        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row row-cols-md-3 row-cols-sm-2 row-cols-1 album" id="list">
                    <c:forEach var="match" items="${listMatch}">
                        <div class="col highlight">
                            <a href="match?id=<c:out value="${match.idMatch}"/>">
                                <div class="card shadow-sm">
                                    <div class="card-header">
                                        <img class="left" src="image/logoTeam/<c:out value="${match.imageOne}"/>.png" alt="" height="100%">
                                        <img class="right" src="image/logoTeam/<c:out value="${match.imageTwo}"/>.png" alt="" height="100%">

                                    </div>
                                    <div class="card-body">
                                        <p class="card-text title">Round: <c:out value="${match.idMatch}"/> </p>
                                        <p class="card-text"><c:out value="${match.teamOne}"/></p>
                                        <p class="card-text"><c:out value="${match.teamTwo}"/></p>
                                        <c:if test="${check > 1}">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-sm btn-outline-secondary"><a href="deleteMatch?id=<c:out value="${match.idMatch}"/>" style="text-decoration: none">DELETE</a></button>
                                                </div>
                                                <small class="text-muted">${match.time}</small>
                                            </div>
                                        </c:if>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                    <c:if test="${check > 1}">
                        <div class="col">
                            <a href="newMatch">
                                <div class="card shadow-sm" style="text-align: center">
                                    <div class="card-header">
                                        <img src="./image/logoTeam/t1.png" alt="" height="100%">
                                    </div>
                                    <div class="card-body">
                                        <h1>ADD NEW</h1>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:if>

                </div>
<%--                <div id="loadMore">--%>
<%--                    <button>Xem thêm</button>--%>
<%--                </div>--%>
            </div>
        </div>

        <c:if test="${check > 0}">
            <div class="container">
                <div id="comment-box">

                    <c:forEach var="comment" items="${listComment}">
                        <c:choose>
                            <c:when test="${comment.email == admin.email}">
                                <div class="my-comment">
                                    <div class="text">
                                        <p><c:out value="${comment.text}"/></p>
                                    </div>
                                </div>
                            </c:when>

                            <c:otherwise>
                                <div class="comment">
                                    <div class="user">
                                        <p><c:out value="${comment.name}"/></p>
                                    </div>
                                    <div class="text">
                                        <p><c:out value="${comment.text}"/></p>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </div>
                <div id="write-comment">
                    <form action="comment" method="post">
                        <div class="input-group mb-3">
                            <input name="text" type="text" class="form-control" placeholder="Write your things" aria-label="Recipient's username">
                            <span class="input-group-text">
                                <button type="submit">
                                    <img src="icon/send.svg" alt="" width="30px">
                                </button>
                            </span>
                            <input class="none" type="text" name="name" value="${admin.name}">
                            <input class="none" type="text" name="email" value="${admin.email}">
                        </div>
                    </form>
                </div>
            </div>
        </c:if>

    </div>
<%--//main--%>
<%--footer--%>
    <jsp:include page="include/footer.jsp"/>
<%--//footer--%>

<%--<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>--%>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>
