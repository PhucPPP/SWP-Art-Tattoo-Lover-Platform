<%-- 
    Document   : studiosignup
    Created on : Oct 21, 2023, 6:39:42 PM
    Author     : ACER
--%>

<%@page import="DAO.DistrictDAO"%>
<%@page import="DTO.District"%>
<%@page import="DAO.CityDAO"%>
<%@page import="DTO.City"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Studio Manager</title>
        <link rel="stylesheet" href="css/style3.css">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Quicksand" />

    </head>

    <body>
        <%
            ArrayList<City> cityList = CityDAO.getAllCity();
        %>

        <div class="container">
            <div class="header">
                <a class="btn-logo" href="#"><img src="IMG/logo.jpg" ></a>
                <input class="input-search" type="text" placeholder="Tìm kiếm" />
                <i class="fa-solid fa-magnifying-glass search-icon"></i>
                <a class="btn-notification" href="#">Đăng nhập |</a>
                <a class="btn-signupstudio" href="#">Đăng ký   | </a>
                <a class="btn-Signup" href="#">Đăng ký Studio</a>
            </div>

            <div class="container2">
                <div class="signUp">
                    <h2>ĐĂNG KÝ TÀI KHOẢN</h2>
                    <form action="MainController" method="post">
                        <input type="hidden" name="action" value="sudiosignupservlet">
                        <input type="hidden" name="roleid" value="SM">
                        <div class="Username">
                            <label for="username">Tên đăng nhập</label>
                            <input type="text" id="username" name="username" required>
                        </div>
                        <div class="Password">
                            <label for="password">Mật khẩu</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="Confirm">
                            <label for="password">Xác nhận mật khẩu</label>
                            <input type="password" id="password" name="confirmedpassword" required>
                        </div>
                        <div class="studioName">
                            <label for="studioName">Tên studio</label>
                            <input type="text" id="studioName" name="studioName" required>
                        </div>

                        <div class="phoneNumber">
                            <label for="phone">Số điện thoại</label>
                            <input type="tel" id="phone" name="phone" required pattern="[0-9]{10}">
                        </div>

                        <div class="Email">
                            <label for="email">Email<label>
                                    <input type="email" id="email" name="email">
                                    </div>

                                    <div class="City">
                                        <label for="city">Thành phố</label>
                                        <select id="city" name="city" required>
                                            <%
                                                for (City city : cityList) {
                                            %>
                                            <option value="<%= city.getCityId()%>"><%= city.getCityName()%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </div>

                                    <div class="District">
                                        <label for="district">Quận</label>
                                        <select id="district" name="district" required>
                                            <option value="1">Quận 1</option>
                                            <option value="3">Quận 3</option>
                                            <option value="PN">Quận Phú Nhuận</option>
                                        </select>
                                    </div>

                                    <div class="LOGIN">
                                        <input type="submit" value="ĐĂNG KÝ">
                                        <button type="button" onclick="history.back()">HỦY</button>
                                    </div>

                                    </form>
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
                                    </body>
                                    <script>
//                                        function updateSelectDistrictOption(){
//                                            var selectCity = document.getElementById("city");
//                                            var selectDistrict = document.getElementById("district");
//                                            
//                                            var selectedCityId = selectCity.value;
//                                        }
                                    </script>
                                    </html>

