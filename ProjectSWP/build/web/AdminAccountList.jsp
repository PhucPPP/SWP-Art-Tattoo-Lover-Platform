<%-- 
    Document   : AdminAccountList
    Created on : Oct 23, 2023, 10:45:22 AM
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
        <link rel="stylesheet" href="./Resource/css/adminAccount.css" />
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
        <div class="container" id="blur">
            <div class="header">
                <a class="btn-logo" href="#"><img src="./Resource/img/logo.jpg" /></a>
                <input class="input-search" type="text" placeholder="Tìm kiếm" />
                <i class="fa-solid fa-magnifying-glass search-icon"></i>
                <a class="btn-notification" href="#"
                   ><i class="fa-solid fa-bell"></i> Thông báo</a
                >
                <a class="btn-notification" href="MainController?action=ViewService">Quản lý dịch vụ</a>

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


                <c:set var="uslist" value="${requestScope.ACCOUNT_LIST}"/>
                <c:if test="${uslist !=null}">
                    <c:if test="${not empty requestScope.ACCOUNT_LIST}">
                        <h1 class="service-title">DANH SÁCH NHÂN VIÊN</h1>
                        <div class="search-bar">
                            <div class="search-bar-item">
                                <button class="search-bar-btn">Đăng ký nhân viên</button>
                                <input
                                    class="input-search"
                                    type="text"
                                    placeholder="Tìm kiếm nhân viên"
                                    />
                                <div class="search-bar-btn">
                                    <select>
                                        <option>Xếp theo: Tên đăng nhập</option>
                                        <option>Xếp theo: Họ và tên</option>
                                        <option>Xếp theo: ID</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <table class="table-service">
                            <thead>
                            <th>ID</th>
                            <th>Tên đăng nhập</th>
                            <th>Họ và tên</th>
                            <th>Ngày sinh</th>
                            <th>Giới tính</th>
                            <th>Vai trò</th>
                            <th>Số điện thoại</th>
                            <th>Quận</th>
                            <th>Thành phố</th>
                            <th>Xoá</th>
                            </thead>
                            <c:forEach items="${uslist}" var="account">
                                <tr>
                                    <td>
                                        <input class="input input-id" type="text" name="userID" value="${account.getId()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="userAccount" value="${account.getUserAccount()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="fullName" value="${account.getFullname()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="birthday" value="${account.getBirthday()}" readonly=""/>
                                    </td>


                                    <c:choose>
                                        <c:when test="${account.getGender() == 'Male'}">
                                            <td>
                                                <input class="input" type="text" name="gender" value="Nam" readonly=""/>
                                            </td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>
                                                <input class="input" type="text" name="gender" value="Nữ" readonly=""/>
                                            </td>
                                        </c:otherwise>
                                    </c:choose>

                                    <td>
                                        <input class="input" type="text" name="roleId" value="${account.getRoleId()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="phone" value="${account.getPhoneNumber()}" readonly=""/>
                                    </td>         

                                    <td>
                                        <input class="input" type="text" name="district" value="${account.getDistrict()}" readonly=""/>
                                    </td>

                                    <td>
                                        <input class="input" type="text" name="city" value="${account.getCity()}" readonly=""/>
                                    </td>

                                    <td>
                                        <form action="MainController" method="post">
                                        <input type="hidden" name="action" value="DeleteUser">
                                        <input type="hidden" name="userId" value="${account.getId()}">
                                        <input type="hidden" name="roleId" value="${account.getRoleId()}">
                                        <td>
                                            <button>
                                            <i class="fa-solid fa-trash"></i>
                                        </button>
                                        </td>
                                    </form>
                                    </td>

                                </tr>

                            </c:forEach>
                        </table>


                    </c:if>
                </c:if>
                ${requestScope.ERROR}
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
        <script>
            function drop() {
                var divs = document.getElementById("subnav-content-id");
                divs.classList.toggle("show");
            }
        </script>
    </body>
</html>
