<%-- 
    Document   : AdminServicePage
    Created on : Oct 25, 2023, 9:57:12 AM
    Author     : hieu09097248
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>DANH SÁCH DỊCH VỤ</title>
        <link rel="stylesheet" href="./Resource/css/serviceList.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            rel="stylesheet"
            type="text/css"
            href="//fonts.googleapis.com/css?family=Quicksand"
            />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            />
    </head>
    <body>
        <div class="container">
            <div class="header">
                <a class="btn-logo" href="#"><img src="./Resource/img/logo.jpg" /></a>
                <input class="input-search" type="text" placeholder="Tìm kiếm" />
                <i class="fa-solid fa-magnifying-glass search-icon"></i>
                <a class="btn-notification" href="#"
                   ><i class="fa-solid fa-bell"></i> Thông báo</a
                >
                <a class="btn-notification" href="MainController?action=ViewAccount">Quản Lý Nhân Viên</a>

                <div class="avatar-item">
                    <img
                        onclick="drop()"
                        class="avatar-img"
                        src="https://th.bing.com/th/id/OIP.7Z0skq54kBfcHRPjlsvATgHaG_?pid=ImgDet&rs=1"
                        />
                    <div id="subnav-content-id" class="subnav-content">
                        <a href="#"><i class="fa-solid fa-gear"></i>Tài khoản của tôi</a>
                        <a href="#"><i class="fa-solid fa-calendar-days"></i>Lịch hẹn</a>
                        <a href="#"
                           ><i class="fa-solid fa-right-from-bracket"></i>Đăng xuất</a
                        >
                    </div>
                </div>
            </div>


            <div class="service-item">

                <c:set var="uslist" value="${requestScope.SERVICE_LIST}"/>
                <c:if test="${uslist !=null}">
                    <c:if test="${not empty requestScope.SERVICE_LIST}">
                        <h1 class="service-title">DANH SÁCH DỊCH VỤ</h1>
                        <div class="search-bar">
                            <div class="search-bar-item">
                                <button class="search-bar-btn">Tạo dịch vụ</button>
                                <input
                                    class="input-search"
                                    type="text"
                                    placeholder="Tìm kiếm dịch vụ"
                                    />
                                <div class="search-bar-btn">
                                    <select>
                                        <option>Xếp theo: Tên dịch vụ</option>
                                        <option>Xếp theo: Tên người tạo</option>
                                        <option>Xếp theo: ID</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <table class="table-service">
                            <thead>
                            <td>ID</td>
                            <td>Tên dịch vụ</td>
                            <td>Người tạo</td>
                            <td>Trạng thái</td>
                            <td>Xoá</td>
                            </thead>
                            <c:forEach items="${uslist}" var="service">
                                <tr>
                                    <td>
                                        <input class="input input-id" type="text" name="serviceId" value="${service.getServiceID()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="staffName" value="${service.getStaffID()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="serviceName" value="${service.getName()}" readonly=""/>
                                    </td>

                                    <c:choose>
                                        <c:when test="${service.isStatus() == 'true'}">
                                            <td>Đang Hoạt Động</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>Đã Dừng</td>
                                        </c:otherwise>
                                    </c:choose>

                                    <td>
                                        <button onclick="confirm('Xác nhận xoá dịch vụ')" class="del-btn">
                                            <i class="fa-solid fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>


                    </c:if>
                </c:if>
                <div class="update">
                    <button class="search-bar-btn">Xác nhận chỉnh sửa</button>
                </div>
            </div>

            <c:set var="uslist" value="${requestScope.SERVICE_LIST_DETAIL}"/>
            <c:if test="${uslist !=null}">
                <c:if test="${not empty requestScope.SERVICE_LIST_DETAIL}">
                    <div class="service-item">
                        <h1 class="service-title">DANH SÁCH CHI TIẾT DỊCH VỤ</h1>
                        <div class="search-bar">
                            <div class="search-bar-item">
                                <button class="search-bar-btn">Tạo chi tiết</button>
                                <input
                                    class="input-search"
                                    type="text"
                                    placeholder="Tìm kiếm chi tiết dịch vụ"
                                    />
                                <div class="search-bar-btn">
                                    <select>
                                        <option>Xếp theo: Tên chi tiết</option>
                                        <option>Xếp theo: Tên người tạo</option>
                                        <option>Xếp theo: ID</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <table class="table-service">
                            <thead>
                            <td>ID</td>
                            <td>Tên chi tiết</td>
                            <td>Người tạo</td>
                            <td>Trạng thái</td>
                            <td>Xoá</td>
                            </thead>
                            <c:forEach items="${uslist}" var="serviceDetail">
                                <tr>

                                    <td>
                                        <input class="input input-id" type="text" name="serviceDetailId" value="${serviceDetail.getServiceDetailID()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="staffName" value="${serviceDetail.getStaffID()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="serviceDetailName" value="${serviceDetail.getName()}" readonly=""/>
                                    </td>

                                    <c:choose>
                                        <c:when test="${serviceDetail.isStatus() == 'true'}">
                                            <td>Đang Hoạt Động</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>Đã Dừng</td>
                                        </c:otherwise>
                                    </c:choose>


                                    <td>
                                        <button onclick="confirm('Xác nhận xoá chi tiết')" class="del-btn">
                                            <i class="fa-solid fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>


                    </c:if>
                </c:if>
                </table>
                <div class="update">
                    <button class="search-bar-btn">Xác nhận chỉnh sửa</button>
                </div>
            </div>

            <c:set var="uslist" value="${requestScope.SERVICE_SIZE}"/>
            <c:if test="${uslist !=null}">
                <c:if test="${not empty requestScope.SERVICE_SIZE}">
                    <div class="service-item">
                        <h1 class="service-title">DANH SÁCH KÍCH THƯỚC</h1>
                        <div class="search-bar">
                            <div class="search-bar-item">
                                <button class="search-bar-btn">Tạo kích thuớc</button>
                                <input
                                    class="input-search"
                                    type="text"
                                    placeholder="Tìm kiếm kích thước"
                                    />
                                <div class="search-bar-btn">
                                    <select>
                                        <option>Xếp theo: Tên người tạo</option>
                                        <option>Xếp theo: ID</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <table class="table-service">
                            <thead>
                            <td>ID</td>
                            <td>Kích thước</td>
                            <td>Người tạo</td>
                            <td>Trạng thái</td>
                            <td>Xoá</td>
                            </thead>
                            <c:forEach items="${uslist}" var="serviceSize">
                                <tr>

                                    <td>
                                        <input class="input input-id" type="text" name="serviceDetailId" value="${serviceSize.getServiceSizeID()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="staffName" value="${serviceSize.getStaffID()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="serviceDetailName" value="${serviceSize.getName()}" readonly=""/>
                                    </td>

                                    <c:choose>
                                        <c:when test="${serviceSize.isStatus() == 'true'}">
                                            <td>Đang Hoạt Động</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>Đã Dừng</td>
                                        </c:otherwise>
                                    </c:choose>


                                    <td>

                                    <td>
                                        <button onclick="confirm('Xác nhận xoá kích thước')" class="del-btn">
                                            <i class="fa-solid fa-trash"></i>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>


                    </c:if>
                </c:if>
                <div class="update">
                    <button class="search-bar-btn">Xác nhận chỉnh sửa</button>
                </div>
            </div>
            <div class="footer">
                <div class="footer-service">
                    <h1>Dịch vụ đặt hình xăm</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Pellentesque neque lectus, aliquam a lobortis id, maximus at odio.
                    </p>
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
        <script src="./Resource/js/script.js"></script>
    </body>
</html>

