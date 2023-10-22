<%-- 
    Document   : BookingDetail
    Created on : Oct 22, 2023, 10:06:51 AM
    Author     : hieu09097248
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CHI TIẾT LỊCH HẸN</title>
        <link rel="stylesheet" href="./css/style2.css">
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
            <i class="fa-solid fa-magnifying-glass search-icon"></i>
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
        <div class="title">THÔNG TIN LỊCH HẸN CHI TIẾT</div>
        <div class="detail">

            <c:set var="uslist" value="${requestScope.DETAIL}"/>
            <c:if test="${uslist !=null}">

                <c:if test="${not empty requestScope.DETAIL}">

                    <c:forEach items="${uslist}" var="detail">

                        <div class="detail-p1">
                            <div class="detail-p1-name">
                                <label>Tên tiệm xăm:</label>
                                <p>${detail.getStudioName()}</p>
                            </div>

                            <div class="detail-p1-status">
                                <label>Tình trạng:</label>
                                <p>${detail.getStatus()}</p>
                            </div>
                        </div>
                        <div class="underline"></div>

                        <div class="detail-p2">

                            <div class="detail-p2-col1">
                                <div class="detail-p2-id">
                                    <label>Mã đơn:</label>
                                    <p>${detail.getId()}</p>
                                </div>

                                <div class="detail-p2-daybook">
                                    <label>Ngày đặt:</label>
                                    <p>${detail.getDateBook()}</p>
                                </div>
                            </div>

                            <div class="detail-p2-col2">
                                <div class="detail-p2-daycome">
                                    <label>Ngày đến:</label>
                                    <p>${detail.getDateCome()}</p>
                                </div>

                                <div class="detail-p2-time">
                                    <label>Thời gian:</label>
                                    <p>${detail.getTime()}</p>
                                </div>
                            </div>

                        </div>

                        <div class="detail-p3">
                            <div class="detail-p3-col1">
                                <div class="detail-content">
                                    <div class="detail-content-col1">
                                        <h1 class="count">1.</h1>
                                        <div class="content-service">
                                            <label>Dịch vụ:</label>
                                            <p>Xăm đen</p>
                                        </div>

                                        <div class="content-size">
                                            <label>Kích thước hình xăm:</label>
                                            <p>
                                                <=2cm </p>
                                        </div>

                                        <div class="content-servicedetail">
                                            <label>Chi tiết:</label>
                                            <p>Xăm che sẹo</p>
                                        </div>
                                    </div>


                                    <div class="detail-content-col2">
                                        <div class="content-price">
                                            <label>Giá:</label>
                                            <p>320.000</p>
                                        </div>

                                        <div class="content-amount">
                                            <label>Số lượng:</label>
                                            <p>1</p>
                                        </div>

                                        <div class="content-artist">
                                            <label>Thợ xăm:</label>
                                            <!-- Chỉ có tên của thợ xăm khi lịch hẹn ở trạng thái đã duyệt -->
                                            <p>Nguyễn Văn B</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="detail-content">
                                    <div class="detail-content-col1">
                                        <h1 class="count">2.</h1>
                                        <div class="content-service">
                                            <label>Dịch vụ:</label>
                                            <p>Xăm màu</p>
                                        </div>

                                        <div class="content-size">
                                            <label>Kích thước hình xăm:</label>
                                            <p>
                                                Nửa lưng </p>
                                        </div>

                                        <div class="content-servicedetail">
                                            <label>Chi tiết:</label>
                                            <p>Xăm thường</p>
                                        </div>
                                    </div>


                                    <div class="detail-content-col2">
                                        <div class="content-price">
                                            <label>Giá:</label>
                                            <p>9.550.000</p>
                                        </div>

                                        <div class="content-amount">
                                            <label>Số lượng:</label>
                                            <p>1</p>
                                        </div>
                                        <div class="content-artist">
                                            <label>Thợ xăm:</label>
                                            <!-- Chỉ có tên của thợ xăm khi lịch hẹn ở trạng thái đã duyệt -->
                                            <p>Nguyễn Văn A</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="total">
                                    <h1>TỔNG THANH TOÁN:</h1>
                                    <p>9.870.000</p>
                                </div>
                            </div>

                            <div class="detail-p3-col2">
                                <h1>Mô tả hình xăm:</h1>
                                <p class="text-descript">${detail.getDescription()}</p>
                                <!-- Chỉ có feedback khi lịch hẹn ở trạng thái hoàn thành -->
                                <div class="feedback">
                                    <div class="feedback-rate">
                                        <p>Đánh giá:</p>
                                        <div class="rate">
                                            <input type="radio" id="star5" name="rate" value="5" />
                                            <label for="star5" title="text">5 stars</label>
                                            <input type="radio" id="star4" name="rate" value="4" />
                                            <label for="star4" title="text">4 stars</label>
                                            <input type="radio" id="star3" name="rate" value="3" />
                                            <label for="star3" title="text">3 stars</label>
                                            <input type="radio" id="star2" name="rate" value="2" />
                                            <label for="star2" title="text">2 stars</label>
                                            <input type="radio" id="star1" name="rate" value="1" />
                                            <label for="star1" title="text">1 star</label>
                                        </div>
                                    </div>
                                    <textarea rows="8" cols="50"></textarea>
                                    <input class="btn-feedback" type="submit" value="ĐÁNH GIÁ">
                                    <button class="btn-back" type="button" onclick="history.back()">BỎ QUA</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

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
            /*drop cua avatar*/
            function drop() {
                var divs = document.getElementById("subnav-content-id");
                divs.classList.toggle("show");
            }
        </script>
    </body>

</html>
