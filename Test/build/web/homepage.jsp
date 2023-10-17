<%-- 
    Document   : homepage
    Created on : Oct 16, 2023, 9:48:05 AM
    Author     : ACER
--%>

<%@page import="DTO.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>HOME</title>
        <link rel="stylesheet" href="./css/style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Quicksand" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    </head>

    <body>
        <div class="container">
            <div class="header">
                <a class="btn-logo" href="#"><img src="IMG/logo.jpg" ></a>
                <input class="input-search" type="text" placeholder="Tìm kiếm" />
                <%
                    User us = (User) session.getAttribute("User");
                    if (us != null) {
                %>
                <i class="fa-solid fa-magnifying-glass search-icon"></i>
                <a class="btn-notification" href="#"><i class="fa-solid fa-bell"></i> Thông báo</a>
                <a class="btn-signupstudio" href="#">Đăng ký studio</a>
                <div class="avatar-item">
                    <img onclick="drop()" class="avatar-img"
                         src="https://th.bing.com/th/id/OIP.7Z0skq54kBfcHRPjlsvATgHaG_?pid=ImgDet&rs=1">
                    <div id="subnav-content-id" class="subnav-content">
                        <a href="#"><i class="fa-solid fa-gear"></i>Tài khoản của tôi</a>
                        <a href="#"><i class="fa-solid fa-calendar-days"></i>Lịch hẹn</a>
                        <a href="MainController?action='logoutservlet'"><i class="fa-solid fa-right-from-bracket"></i>Đăng xuất</a>
                    </div>
                </div>
                <%
                } else {
                %>
                <a class="btn-login" href="MainController?action='login'">Log In</a>
                <a class="btn-signup" href="#">Sign Up</a>
                <%
                    }
                %>
            </div>

            <div class="slider">
                <div class="list">
                    <a href="#">
                        <div class="item">
                            <img src="IMG/FWER.png" alt="">
                        </div>
                    </a>
                    <div class="item">
                        <img src="IMG/Screenshot 2023-10-04 010930.png" alt="">
                    </div>

                    <div class="item">
                        <img src="IMG/Screenshot 2023-10-04 011009.png" alt="">
                    </div>

                    <div class="item">
                        <img src="IMG/Screenshot 2023-10-04 011021.png" alt="">
                    </div>

                </div>

                <div class="buttons">
                    <button id="prev"><</button>
                    <button id="next">></button>
                </div>

                <ul class="dots">
                    <li class="active"></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>

            <div class="service">
                <h1>DỊCH VỤ</h1>

                <div class="service-list">

                    <div class="service-item">
                        <img src="IMG/xam don sac.png">
                        <a href="#">XĂM ĐƠN SẮC</a>
                    </div>

                    <div class="service-item">
                        <img src="IMG/Xam màu.png">
                        <a href="#">XĂM MÀU</a>
                    </div>

                    <div class="service-item">
                        <img src="IMG/xam che seo.png">
                        <a href="#">XĂM CHE SẸO</a>
                    </div>

                    <div class="service-item">
                        <img src="IMG/cover hinh.png">
                        <a href="#">COVER HÌNH</a>
                    </div>
                    <div class="service-item">
                        <img src="IMG/dam hinh.png">
                        <a href="#">DẶM HÌNH</a>
                    </div>

                    <div class="service-item">
                        <img src="IMG/thiet ke.png">
                        <a href="#">THIẾT KẾ</a>
                    </div>

                </div>
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