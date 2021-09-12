<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/20/2021
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<footer class="">
    <div class="container mb-3 mt-3 one">
        <img src="./image/adidas.png" alt="adidasLogo">
        <img src="./image/aon.png" alt="adidasLogo">
        <img src="./image/chevrolet.png" alt="adidasLogo">
        <img src="./image/kohler.png" alt="adidasLogo">
    </div>
    <div class="container two d-flex justify-content-around align-content-center mb-5">
        <img src="./image/chivas.png" alt="">
        <img src="./image/apolo.png" alt="">
        <img src="./image/canon.jpg" alt="">
        <img src="./image/gulf.png" alt="">
        <img src="./image/hcl.png" alt="">
        <img src="./image/konami.png" alt="">
    </div>
    <div class="button mb-3">
        <div class="d-flex justify-content-around
			align-content-center">
            <c:choose>
                <c:when test="${check > 0}">
                    <a href="logOut">
                        <button class="btn btn-outline-info btn-success">LOG OUT</button>
                    </a>
                </c:when>
                <c:otherwise>
                    <a href="login">
                        <button class="btn btn-outline-info btn-success">LOGIN</button>
                    </a>
                    <a href="register">
                        <button class="btn btn-outline-info btn-success">SIGN UP</button>
                    </a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="link">
        <div class="d-flex justify-content-around align-content-center mb-1">
            <a href="http://www.youtube.com">
                <img src="./bootstrap/icon/youtube.svg" alt="iconYoutube" >
            </a>
            <a href="http://www.intagram.com/nts_sixblack">
                <img src="./bootstrap/icon/instagram.svg" alt="iconIntagram" >
            </a>
            <a href="http://www.facebook.com/SixBlack0000">
                <img src="./bootstrap/icon/facebook.svg" alt="iconFacebook" >
            </a>
            <a href="http://www.youtube.com">
                <img src="./bootstrap/icon/twitch.svg" alt="iconTwitch" >
            </a>
        </div>
        <hr class="">
        <p> &copy; 2021. Coppyright by <a href="http://www.facebook.com/SixBlack0000">SixBlack</a></p>
    </div>
</footer>