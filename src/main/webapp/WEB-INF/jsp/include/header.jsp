<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/20/2021
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<div id="header" class="fixed-top">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Eighth navbar example">
        <div class="container">

            <a href="main">
                <img src="image/logo.png" alt="logo" height="50px" width=auto>
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExample07">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="highLight">HIGHLIGHT MATCH</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="player">PLAYER</a>
                    </li>
                    <c:if test="${check == 3}">
                        <li class="nav-item">
                            <a class="nav-link" href="admin">ADMIN</a>
                        </li>
                    </c:if>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown07" data-bs-toggle="dropdown" aria-expanded="false">MORE</a>
                        <ul class="dropdown-menu" aria-labelledby="dropdown07">
                            <li><a class="dropdown-item" href="https://mutv.manutd.com/home">MUTV</a></li>
                            <li><a class="dropdown-item" href="information">Club Information</a></li>
                        </ul>
                    </li>
                </ul>
<%--                <form>--%>
<%--                    <input class="form-control" type="text" placeholder="Search" aria-label="Search">--%>
<%--                </form>--%>
            </div>
        </div>
    </nav>
</div>