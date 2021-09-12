<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 5/20/2021
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" type="image/png" href="image/logo.png"/>
    <title>Information</title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/informationStyle.css">
    <link rel="stylesheet" type="text/css" href="css/footerStyle.css">

</head>
<body>
<%--header--%>
    <jsp:include page="include/header.jsp"/>
<%--//header--%>
<%--main--%>
    <div id="main">
        <div class="container about mb-3">
            <h1>Thông tin sơ lược</h1>
            <p>Câu lạc bộ bóng đá Manchester United (Manchester United Football Club, hay ngắn gọn là MU hay Man Utd) là một câu lạc bộ bóng đá chuyên nghiệp có trụ sở tại Old Trafford, Đại Manchester, Anh. Câu lạc bộ đang chơi tại Giải bóng đá Ngoại hạng Anh, giải đấu hàng đầu trong hệ thống bóng đá Anh.</p>
            <div class="row row-cols-1  row-cols-md-2 ">
                <div class="col mt-2">
                    <img src="./img/slide-11.jpg" alt="">
                </div>
                <div class="col mt-2">
                    <img src="./img/slide-22.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row row-cols-1 row-cols-md-2 danhhieu mt-5">
                <div class="col mt-2">
                    <h2>Các danh hiệu đạt được</h2>
                    <br>
                    <p>Manchester United là một trong những câu lạc bộ thành công nhất tại Anh, giữ kỷ lục 20 lần vô địch bóng đá Anh, đoạt 12 Cúp FA, 5 Cúp Liên đoàn và giữ kỷ lục 21 lần đoạt Siêu cúp Anh. Câu lạc bộ đã giành được 3 chức vô địch châu Âu, 1 UEFA Cup Winners' Cup, 1 UEFA Europa league, 1 Siêu cúp châu Âu, 1 Cúp Liên lục địa và 1 FIFA Club World Cup. Trong mùa giải 1998–99, Manchester United trở thành đội bóng Anh đầu tiên và duy nhất đoạt cú ăn ba trong một mùa giải, gồm các chức vô địch Ngoại hạng Anh, cúp FA và UEFA Champions League.</p>
                </div>
                <div class="col mt-2 image">
                    <img src="./img/1.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row mt-5 mb-5" id="history">
                <h1>Sơ lược lịch sử</h1>
                <ul>
                    <li>Câu lạc bộ được hình thành với cái tên Newton Heath (L & Y.R. F.C) vào năm 1878.
                    </li>
                    <li>Được đổi tên thành Manchester United và chuyển đến <span title="Sân nhà của câu lạc bộ Manchester United">Old Traford Stadium</span> vào năm 1910.</li>
                    <li>Là câu lạc bộ thành công nhất tại nước Anh với 20 chức vô địch giải <span title="Giải đấu quốc nội hàng đầu tại Anh">Ngoại Hang Anh </span>và hàng chục các danh hiệu lớn nhỏ khác.</li>
                    <li>Năm 1958, xảy ra thảm họa rơi máy bay München làm 8 thành viên trụ cột ra đi mãi mãi.</li>
                    <li>Năm 1968, Manchester United là đội bóng đầu tiên tại nước Anh giành <span title="Giải đấu cao nhất cấp câu lạc bộ tại Châu Âu">cup C1 Châu Âu.</span></li>
                </ul>
            </div>
        </div>
    </div>
<%--//main--%>
<%--footer--%>
    <jsp:include page="include/footer.jsp"/>
<%--//footer--%>


<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
