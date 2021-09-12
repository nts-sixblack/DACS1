<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/20/2021
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/mainstyle.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <title>Manchester United Official</title>
</head>
<body>
<%--header --%>
   <jsp:include page="include/header.jsp"/>
<%--//header--%>
<%--main--%>
    <div id="main">
        <!-- Slider-->
        <div class="slider agileits w3layouts">
            <ul class="rslides agileits w3layouts" id="slider">
                <li>
                    <img src="image/slide-11.jpg" alt="Explorer" >
                </li>
                <li>
                    <img src="image/slide-22.jpg" alt="Explorer">

                </li>
                <li>
                    <img src="image/slide-33.jpg" alt="Explorer">

                </li>
                <li>
                    <img src="image/slide-44.jpg" alt="Explorer">

                </li>
                <!-- <li>
                  <img src="img/slide-55.jpg" alt="Explorer">
                  <div class="layer agileits w3layouts">
                    <h3>Login for More</h3>

                  </div>
                </li> -->
            </ul>
        </div>
        <!-- //Slider-->

        <!-- Content -->

        <!-- //Content -->

    </div>
<%--//main--%>
<%--footer--%>
    <jsp:include page="include/footer.jsp"/>
<%--//footer--%>


    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<!-- Slider-JavaScript -->
    <script type="text/javascript" src="./js/responsiveslides.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#slider, #slider2").responsiveSlides({
                auto: true,
                nav: true,
                speed: 1500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
<!-- //Slider-JavaScript -->
</body>
</html>
