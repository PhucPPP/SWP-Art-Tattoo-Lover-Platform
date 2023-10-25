<%-- 
    Document   : signup
    Created on : Oct 19, 2023, 11:27:25 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ĐĂNG KÍ</title>
    <link rel="stylesheet" href="Resource/css/signupStyle.css">
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
                <a class="btn-login" href="MainController?action=login">Đăng nhập |</a>
                <a class="btn-Signup" href="MainController?action=signup">Đăng ký   | </a>
                <a class="btn-signupstudio" href="MainController?action=studiosignup">Đăng ký Studio</a>
            </div>

        <div class="container2">
            <div class="signUp">
                <h2>ĐĂNG KÝ TÀI KHOẢN</h2>
                <form action="MainController" method="post">
                    <input type="hidden" name="roleid" value="TL">
                    <input type="hidden" name="action" value="signupservlet">
                    <div class="Username">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="username" name="username" required=""/>
                    </div>
                    <p class="msg-error">${requestScope.ERROR_USERNAME}</p>
                    <div class="Password">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" name="password" required=""/>
                    </div>
                    <div class="Confirm">
                        <label for="password">Xác nhận mật khẩu</label>
                        <input type="password" id="password" name="confirmedpassword" required=""/>
                    </div>
                    <p class="msg-error">${requestScope.ERROR_PASSWORD}</p>
                    <div class="fullName">
                        <label for="fullName">Họ và tên</label>
                        <input type="text" id="fullName" name="fullName" required=""/>
                    </div>
                    <div class="birthDate">
                        <label for="birthDate">Ngày sinh</label>
                        <input type="date" id="birthDate" name="birthDate" required=""/>
                    </div>
                    <div class="Gender">
                        <label for="gender">Giới tính</label>
                            <select id="gender" name="gender" required>
                                <option value="Male">Nam</option>
                                <option value="Female">Nữ</option>
                                <option value="Other">Khác</option>
                            </select>
                    </div>
                    
                    <div class="phoneNumber">
                        <label for="phone">Số điện thoại</label>
                        <input type="tel" id="phone" name="phoneNumber" required="" pattern="[0]{1}[0-9]{9}"/>
                    </div>
                    <p class="msg-error">${requestScope.ERROR_PHONE}</p>
                    <div class="Email">
                        <label for="email">Email<label>
                        <input type="email" id="email" name="email"/>
                    </div>
                    <p class="msg-error">${requestScope.ERROR_EMAIL}</p>

                    <div class="City">
                        <label for="city">Thành phố</label>
                        <select id="city" name="city" required>
                            <option value="CT001">Thành Phố Hồ Chí Minh</option>
                            <option value="CT002">Hà Nội</option>
                        </select>
                    </div>
                    

                    <div class="District">
                        <label for="district">Quận</label>
                        <select id="district" name="district" required>
                            <option value="DT002">Quận 1</option>
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

</html>
