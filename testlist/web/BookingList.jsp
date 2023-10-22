<%-- 
    Document   : index
    Created on : Oct 22, 2023, 3:27:27 AM
    Author     : hieu09097248
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>LỊCH SỬ ĐẶT HẸN</title>
        <link rel="stylesheet" href="./css/style1.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>
    <body>
        <div class="header">
            <a class="btn-logo" href="#"><img src="IMG/logo.jpg" ></a>
            <input class="input-search" type="text" placeholder="Tìm kiếm" />
            <a href="#" class="search-icon"><i class="fa-solid fa-magnifying-glass"></i></a>
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
        <h1 class="title">LỊCH SỬ ĐẶT HẸN</h1>
        <div class="filter">
            <select>
                <option>Xếp theo: Ngày đặt gần</option>
                <option>Xếp theo: Ngày đặt xa</option>
                <option>Xếp theo: Ngày đến gần</option>
                <option>Xếp theo: Ngày đến xa</option>
                <option>Xếp theo: Tình trạng</option>
            </select>
        </div>

        <div class="table">
            <c:set var="uslist" value="${requestScope.BOOKING_LIST}"/>
            <c:if test="${uslist !=null}">

                <c:if test="${not empty requestScope.BOOKING_LIST}">
                    <table>
                        <thead>
                            <tr>
                                <td class="th-id">Mã đơn</td>
                                <td class="th-stu">Tiệm xăm</td>
                                <td class="th-time">Thời gian</td>
                                <td class="th-datebook">Ngày đặt</td>
                                <td class="th-datecome">Ngày đến</td>
                                <td class="th-status">Trình trạng</td>
                                <td class="th-detail">Chi tiết</td>
                                <td class="th-cancel">Hủy lịch</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${uslist}" var="booking">
                                <tr>
                                    <td class="tb-id" name="bookingID">${booking.getId()} </td>
                                    <td class="tb-stu">${booking.getStudio()}</td>
                                    <td class="tb-time">${booking.getTime()}</td>
                                    <td class="tb-datebook">${booking.getDateBook()}</td>
                                    <td class="tb-datecome">${booking.getDateCome()}</td>
                                    <td class="tb-status">${booking.getStatus()}</td>

                            <form action="MainController" method="post">
                                <input type="hidden" name="action" value="Detail">
                                <input type="hidden" name="bookingID" value="${booking.getId()}">
                                <td>
                                    <input class="btn-detail" type="submit" value="CHI TIẾT">
                                </td>
                            </form>
                              <c:choose>
                                        <c:when test="${booking.getStatus() == 'Đã duyệt' || booking.getStatus() == 'Đang xử lý'}">
                                            <form action="MainController" method="post">
                                                <input type="hidden" name="action" value="Delete">
                                                <input type="hidden" name="bookingID" value="${booking.getId()}">
                                                <td>
                                                    <input class="btn-cancel" type="submit" value="HỦY LỊCH">
                                                </td>
                                            </form>
                                        </c:when>
                                        <c:otherwise>
                                            <td> </td>
                                        </c:otherwise>
                                    </c:choose>

                                    </tr>
                                </c:forEach>
                                </tbody>
                                </table>
                            </c:if>
                        </c:if>
                        ${requestScope.ERROR}
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

                        <script>

                            function drop() {
                                var divs = document.getElementById("subnav-content-id");
                                divs.classList.toggle("show");
                            }

                        </script>
                        </body>
                        </html>
