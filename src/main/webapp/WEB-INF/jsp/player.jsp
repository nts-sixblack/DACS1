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
    <title>Player</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/playerStyle.css" type="text/css">
</head>
<body>
    <%--header--%>
    <jsp:include page="include/header.jsp"/>
    <%--//header--%>
    <%--main--%>
    <div id="main">
        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" id="list">

                    <c:forEach var="player" items="${listPlayer}">
                        <div class="col match">
                            <div class="card shadow-sm">
                                <div class="card-header">
                                    <div class="infor">
                                        <br>
                                        <p class="name"><c:out value="${player.ten}"/></p>
                                        <p class="number"><c:out value="${player.soAo}"/></p>
                                        <p class="position"><c:out value="${player.viTri}"/></p>

                                    </div>
                                    <img src="image/player/<c:out value="${player.anh}"/>" alt="ImagePlayer" height="150em" width=auto>
                                </div>
                                <div class="card-body">
                                    <div class="nationality">
                                        <p>National</p>
                                        <p><c:out value="${player.quocTich}"/></p>
                                    </div>
                                    <div class="weight">
                                        <p>Height</p>
                                        <p><c:out value="${player.chieuCao}"/>cm</p>
                                    </div>
                                    <div class="height">
                                        <p>Weigh</p>
                                        <p><c:out value="${player.canNang}"/>kg</p>
                                    </div>
                                    <c:if test="${check > 1}">
                                        <div class="d-flex justify-content-between align-items-center mt-3">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-outline-secondary"><a href="updatePlayer?id=<c:out value="${player.soAo}"/>" style="text-decoration: none">UPGRATE</a></button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary"><a href="deletePlayer?id=<c:out value="${player.soAo}"/>" style="text-decoration: none">DELETE</a></button>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <div id="loadMore">
                    <p id="check" hidden><c:out value="${check}"/></p>
                    <button onclick="load()">Xem thêm</button>
                </div>
            </div>
        </div>
    </div>
    <%--//main--%>
    <%--footer--%>
        <jsp:include page="include/footer.jsp"/>
    <%--//footer--%>


    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        function load(){
            var number = document.getElementsByClassName("match").length;
            var check = document.getElementById("check").innerHTML;
            // alert(check+"....")
            $.ajax({
                url: "/DoAnCoSo/player",
                type: "post",
                data:{
                    number: number,
                    check : check
                },
                success: function(data){
                    // alert(data);
                    var list = document.getElementById("list");
                    list.innerHTML += data;
                },
                error: function(xhr){
                    alert("faul"+xhr);
                }
            });
        }
    </script>
</body>
</html>
