<%-- 
    Document   : studioBookingForm
    Created on : Oct 20, 2023, 8:51:25 AM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ĐẶT HẸN</title>
        <link rel="stylesheet" href="Resource/css/studioBookingFormStyle.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>
    <body>
        <div class="container" id="blur">
            <div class="header">
                <a class="btn-logo" href="#"><img src="Resource/img/logo.jpg" ></a>
                <form action="MainController">
                    <input class="input-search" type="text" placeholder="Tìm kiếm" name="searchStudio" value="${param.searchStudio}" />
                    <button class="search-icon" type="submit" name="action" value="SearchStudio">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </form>
                <a class="btn-notification" href="#"><i class="fa-solid fa-bell"></i> Thông báo</a>
                <a class="btn-signupstudio" href="#">Đăng ký studio</a>

                <div class="avatar-item">
                    <img onclick="drop()" class="avatar-img"
                         src="https://th.bing.com/th/id/OIP.7Z0skq54kBfcHRPjlsvATgHaG_?pid=ImgDet&rs=1">
                    <div id="subnav-content-id" class="subnav-content">
                        <a href="#"><i class="fa-solid fa-gear"></i>Tài khoản của tôi</a>
                        <a href="#"><i class="fa-solid fa-calendar-days"></i>Lịch hẹn</a>
                        <a href="#"><i class="fa-solid fa-right-from-bracket"></i>Đăng xuất</a>
                    </div>
                </div>

            </div>

            <div class="title">THÔNG TIN TIỆM XĂM</div>
            <div class="studio-infor">
                <div class="studio-img">
                    <img class="img-main" src="${requestScope.IMG_AVATAR.imgLink}">
                    <div class="img-sub">
                        <c:forEach var="img" items="${requestScope.IMG_SERVICE_LIST}" varStatus="loop">
                            <c:if test="${loop.index < 1}">
                                <img src="${img.imgLink}">
                            </c:if>
                        </c:forEach>

                        <c:forEach var="img" items="${requestScope.IMG_SERVICE_LIST}" varStatus="loop">
                            <c:if test="${loop.index > 1 && loop.index < 3}">
                                <a href="#" onclick="popup_img()"><img src="${img.imgLink}"></a>
                            </c:if>
                        </c:forEach>
                    </div>

                </div>
                <div class="studio-detail">
                    <h1>${requestScope.STUDIO.name}</h1>
                    <div class="content-infor">
                        <div class="label">
                            <label>Địa chỉ:</label>
                            <label>Giờ làm việc:</label>
                            <label>Số điện thoại:</label>
                            <label>Đánh giá:</label>
                        </div>

                        <div class="infor">
                            <p>${requestScope.STUDIO.address},${requestScope.STUDIO.district},${requestScope.STUDIO.city}</p>
                            <p>${requestScope.STUDIO.timeStart}-${requestScope.STUDIO.timeEnd}</p>
                            <p>${requestScope.STUDIO.phoneNumber}</p>
                            <p>${requestScope.STUDIO.rating}<i class="fa-solid fa-star"></i></p>
                        </div>
                    </div>

                    <div class="description">
                        <p>${requestScope.STUDIO.description}</p>
                    </div>
                </div>
            </div>
            <div class="service">
                <h1>DỊCH VỤ</h1>
                <table>
                    <thead>
                        <tr>
                            <td class="th-service">Dịch vụ</td>
                            <td class="th-detail">Chi tiết</td>
                            <td class="th-size">Kích thước</td>
                            <td class="th-price">Đơn giá</td>
                            <td class="th-amount">Số lượng</td>
                            <td class="th-total">Thành tiền</td>
                        </tr>

                    </thead>
                    <tbody id="table_body">
                        <tr>
                            <td class="tb-service">
                                <p>Xăm đơn sắc</p>
                            </td>
                            <td class="tb-detail">
                                <p>Xăm thường</p>
                            </td>
                            <td class="tb-size">
                                <p>
                                    <=2cm</p>
                            </td>
                            <td class="tb-price">
                                <p>320.000</p>
                            </td>
                            <td class="tb-amount">
                                <p>1</p>
                            </td>
                            <td class="tb-total">
                                <p>320.000</p>
                            </td>
                        </tr>

                        <tr>
                            <td class="tb-service">
                                <p>Xăm màu</p>
                            </td>
                            <td class="tb-detail">
                                <p>Xăm thường</p>
                            </td>
                            <td class="tb-size">
                                <p>Nửa lưng</p>
                            </td>
                            <td class="tb-price">
                                <p>320.000</p>
                            </td>
                            <td class="tb-amount">
                                <p>1</p>
                            </td>
                            <td class="tb-total">
                                <p>9.550.000</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p class="total">TỔNG TIỀN: 9.870.000</p>
                <h1>THÔNG TIN ĐẶT LỊCH</h1>
                <div class="form-booking">
                    <div class="form-content">
                        <div class="input-name">
                            <label>Họ và tên</label>
                            <input type="text">
                        </div>

                        <div class="input-phone">
                            <label>Số điện thoại</label>
                            <input type="text">
                        </div>

                        <div class="input-describe">
                            <label>Mô tả hình xăm</label>
                            <textarea rows="4" cols="50"></textarea>
                        </div>

                        <div class="input-daycome">
                            <label>Ngày đến (mm/dd/yyyy)</label>
                            <input id="datecome" type="date">
                        </div>

                        <div class="input-time">
                            <label>Thời gian</label>
                            <select>
                                <option>10:00 - 13:00</option>
                                <option>13:00 - 16:00</option>
                                <option>16:00 - 19:00</option>
                                <option>19:00 - 21:00</option>
                            </select>
                        </div>
                    </div>
                </div>
                <button class="btn-book" type="submit"><i class="fa-regular fa-calendar-check"></i>ĐẶT LỊCH</button>
                <button class="btn-back" type="button" onclick="history.back()"><i
                        class="fa-solid fa-arrow-rotate-left"></i>QUAY VỀ</button>
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
        <div id="popup-img">
            <c:forEach var="img" items="${requestScope.IMG_SERVICE_LIST}" varStatus="loop">
                <img src="${img.imgLink}">
            </c:forEach>

            <a href="#" onclick="popup_img()">Close</a>
        </div>

        <script>
            /*drop cua avatar*/
            function drop() {
                var divs = document.getElementById("subnav-content-id");
                divs.classList.toggle("show");
            }

            /*pop up danh sach anh*/
            function popup_img() {
                var blur = document.getElementById('blur');
                blur.classList.toggle('active');
                var popup = document.getElementById('popup-img')
                popup.classList.toggle("active");
            }
            /*giới hạn ngày đến của khách (ngày không ở quá khứ)*/
            let today = new Date();
            day = today.getDate() + 1;
            if (today.getHours() > 22) {
                day += 1;
            }
            month = today.getMonth() + 1; //Bắt đầu từ tháng 1 = 0
            year = today.getFullYear();
            if (day < 10) {
                day = '0' + day;
            }

            if (month < 10) {
                month = '0' + month;
            }

            today = year + '-' + month + '-' + day;

            document.getElementById("datecome").setAttribute('min', today);
            document.getElementById("datecome").setAttribute('value', today);


        </script>
    </body>
</html>
