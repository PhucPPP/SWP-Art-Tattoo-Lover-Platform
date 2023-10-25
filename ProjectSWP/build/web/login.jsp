<%-- 
    Document   : login
    Created on : Oct 16, 2023, 1:24:43 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>

    <head>
        <meta charset="utf-8">
        <title>ĐĂNG NHẬP</title>
        <!-- Embed css here -->
        <link rel="stylesheet" href="Resource/css/loginStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Quicksand" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>

    <body>
        <div class="container">
            <div class="header">
                <a class="btn-logo" href="MainController?action=homepage"><img src="Resource/img/logo.jpg" ></a>
                <form action="MainController">
                    <input class="input-search" type="text" placeholder="Tìm kiếm" name="searchStudio" value="${param.searchStudio}" />
                    <button class="search-icon" type="submit" name="action" value="SearchStudio">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </form>
                <a class="btn-notification" href="MainController?action=login">Đăng nhập |</a>
                <a class="btn-signupstudio" href="MainController?action=signup">Đăng ký   | </a>
                <a class="btn-Signup" href="MainController?action=studiosignup">Đăng ký Studio</a>
            </div>
            <h2>ĐĂNG NHẬP</h2>
            <div class="container2">
                <form action="MainController" method="POST">
                    <div class="USERNAME">
                        <label for="username" >Tên đăng nhập</label>
                        <input type="text" id="username" name="username" required="">
                    </div>
                    <p class="msg-error">${requestScope.ERROR_USERNAME}</p>
                    <div class="PASSWORD">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" name="password" required="">
                    </div>
                    <p class="msg-error">${requestScope.ERROR_PASSWORD}</p>
                    <div class="LOGIN">
                        <button type="submit" name="action" value="loginservlet">ĐĂNG NHẬP</button>
                        <button type="button" onclick="history.back()">HỦY</button>
                    </div>
                    <div class="PLUS">
                        <div class="FORGOT">
                            <button type="button">Quên mật khẩu ?</button>
                        </div>
                        <div class="SIGNIN">
                            <button type="button">Đăng ký</button>
                        </div>
                    </div>
                </form>
            </div>


            <div class="footer">

                <div class="footer-service">
                    <h1>Dịch vụ đặt hình xăm</h1>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque neque lectus, aliquam a
                        lobortis id, maximus at odio.</p>
                </div>

                <div class="footer-contact">
                    <h1>Liên hệ</h1>
                    <i class="fa-brands fa-facebook"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-twitter"></i>
                    <i class="fa-brands fa-facebook-messenger"></i>
                </div>

                <div class="footer-address">
                    <h1>Địa chỉ</h1>
                    <p>Địa chỉ: Chung Cư Hado Centrosa 200 đường 3/2, Q10, Hồ Chí Minh</p>
                </div>


            </div>
        </div>



        <script>

            function drop() {
                var divs = document.getElementById("subnav-content-id");
                divs.classList.toggle("show");
            }

        </script>
        <script src="js/app.js"></script>

    </body>


</html>
