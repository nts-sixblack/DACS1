<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 6/7/2021
  Time: 9:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/adminStyle.css">
    <title>ADMIN</title>
</head>
<body>
<%--header--%>
    <%@ include file="include/header.jsp"%>
<%--//header--%>
<%--main--%>
    <div id="main">
        <div class="container">
            <table class="table table-bordered border-dark table-hover ">
                <thead class="table-light">
                <tr>
                    <th class="four">Name</th>
                    <th class="four">Email</th>
                    <th class="two">Type</th>
                    <th class="one">Update</th>
                    <th class="one">Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="account" items="${listAccount}">
                    <tr>
                        <td class="four-col"><c:out value="${account.name}"/></td>
                        <td class="four-col"><c:out value="${account.email}"/></td>
                        <td class="two-col">
                            <c:choose>
                                <c:when test="${account.type == 1}">
                                    <c:out value="Member"/>
                                </c:when>
                                <c:when test="${account.type == 2}">
                                    <c:out value="Sensor"/>
                                </c:when>
                                <c:when test="${account.type == 3}">
                                    <c:out value="Admin"/>
                                </c:when>
                                <c:otherwise>

                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td class="one-col">
                            <!-- Nếu là admin (check > 1) thì để trống ô này  -->
                            <c:if test="${account.type == 1}">
                                <a href="upgrade?email=<c:out value="${account.email}"/>">
                                    <img src="icon/up.svg" alt="" width="20px">
                                </a>
                            </c:if>
                            <c:if test="${account.type == 2}">
                                <a href="downgrade?email=<c:out value="${account.email}"/>">
                                    <img src="icon/down.svg" alt="" width="20px">
                                </a>
                            </c:if>
                        </td>
                        <td class="one-col">
                            <c:if test="${account.type < 3}">
                                <a href="deleteAccount?email=<c:out value="${account.email}"/>">
                                    <img src="icon/deleteAccount.svg" alt="" width="20px">
                                </a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>


                </tbody>
            </table>
        </div>
        <hr>
    </div>
<%--//main--%>
<%--footer--%>
    <%@ include file="include/footer.jsp"%>
<%--//footer--%>
    
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
