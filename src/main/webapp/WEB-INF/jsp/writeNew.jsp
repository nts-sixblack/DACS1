<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/20/2021
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">
    <link rel="stylesheet" href="css/writeNewStyle.css" type="text/css">

</head>
<body>
    <%--header--%>
    <jsp:include page="include/header.jsp"/>
    <%--//header--%>
    <%--main--%>
    <div id="main">
        <div class="contact" id="contact">
            <div class="container">

                <h3>CONTACT</h3>

                <div class="contact-form">

                    <form>
                        <input type="text" class="text" placeholder="Tiêu đề bài viết" required="">
                        <!-- <input type="text" class="text" placeholder="Email" required="">
                        <input type="text" class="text" placeholder="Phone" required=""> -->
                        <img src="" alt="">
                        <input type="file" class="file" placeholder="Chọn hình ảnh đăng tải" required="">
                        <textarea placeholder="Gõ nội dung tại đây" required=""></textarea>
                        <input type="submit" class="more_btn" value="Send Message">
                    </form>
                </div>

            </div>
        </div>
    </div>
    <%--//main--%>
    <%--footer--%>
    <jsp:include page="include/footer.jsp"/>
    <%--//footer--%>
</body>
</html>
