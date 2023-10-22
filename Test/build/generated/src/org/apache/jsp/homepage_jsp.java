package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DTO.User;

public final class homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>HOME</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/style.css\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"//fonts.googleapis.com/css?family=Quicksand\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <a class=\"btn-logo\" href=\"#\"><img src=\"IMG/logo.jpg\" ></a>\n");
      out.write("                <input class=\"input-search\" type=\"text\" placeholder=\"Tìm kiếm\" />\n");
      out.write("                ");

                    User us = (User) session.getAttribute("User");
                    if (us != null) {
                
      out.write("\n");
      out.write("                <i class=\"fa-solid fa-magnifying-glass search-icon\"></i>\n");
      out.write("                <a class=\"btn-notification\" href=\"#\"><i class=\"fa-solid fa-bell\"></i> Thông báo</a>\n");
      out.write("                <a class=\"btn-signupstudio\" href=\"#\">Đăng ký studio</a>\n");
      out.write("                <div class=\"avatar-item\">\n");
      out.write("                    <img onclick=\"drop()\" class=\"avatar-img\"\n");
      out.write("                         src=\"https://th.bing.com/th/id/OIP.7Z0skq54kBfcHRPjlsvATgHaG_?pid=ImgDet&rs=1\">\n");
      out.write("                    <div id=\"subnav-content-id\" class=\"subnav-content\">\n");
      out.write("                        <a href=\"#\"><i class=\"fa-solid fa-gear\"></i>Tài khoản của tôi</a>\n");
      out.write("                        <a href=\"#\"><i class=\"fa-solid fa-calendar-days\"></i>Lịch hẹn</a>\n");
      out.write("                        <a href=\"MainController?action='logoutservlet'\"><i class=\"fa-solid fa-right-from-bracket\"></i>Đăng xuất</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                ");

                } else {
                
      out.write("\n");
      out.write("                <a class=\"btn-login\" href=\"MainController?action='login'\">Log In</a>\n");
      out.write("                <a class=\"btn-signup\" href=\"#\">Sign Up</a>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"slider\">\n");
      out.write("                <div class=\"list\">\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <div class=\"item\">\n");
      out.write("                            <img src=\"IMG/FWER.png\" alt=\"\">\n");
      out.write("                        </div>\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"IMG/Screenshot 2023-10-04 010930.png\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"IMG/Screenshot 2023-10-04 011009.png\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"item\">\n");
      out.write("                        <img src=\"IMG/Screenshot 2023-10-04 011021.png\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"buttons\">\n");
      out.write("                    <button id=\"prev\"><</button>\n");
      out.write("                    <button id=\"next\">></button>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <ul class=\"dots\">\n");
      out.write("                    <li class=\"active\"></li>\n");
      out.write("                    <li></li>\n");
      out.write("                    <li></li>\n");
      out.write("                    <li></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"service\">\n");
      out.write("                <h1>DỊCH VỤ</h1>\n");
      out.write("\n");
      out.write("                <div class=\"service-list\">\n");
      out.write("\n");
      out.write("                    <div class=\"service-item\">\n");
      out.write("                        <img src=\"IMG/xam don sac.png\">\n");
      out.write("                        <a href=\"#\">XĂM ĐƠN SẮC</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"service-item\">\n");
      out.write("                        <img src=\"IMG/Xam màu.png\">\n");
      out.write("                        <a href=\"#\">XĂM MÀU</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"service-item\">\n");
      out.write("                        <img src=\"IMG/xam che seo.png\">\n");
      out.write("                        <a href=\"#\">XĂM CHE SẸO</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"service-item\">\n");
      out.write("                        <img src=\"IMG/cover hinh.png\">\n");
      out.write("                        <a href=\"#\">COVER HÌNH</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"service-item\">\n");
      out.write("                        <img src=\"IMG/dam hinh.png\">\n");
      out.write("                        <a href=\"#\">DẶM HÌNH</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"service-item\">\n");
      out.write("                        <img src=\"IMG/thiet ke.png\">\n");
      out.write("                        <a href=\"#\">THIẾT KẾ</a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer\">\n");
      out.write("\n");
      out.write("                <div class=\"footer-service\">\n");
      out.write("                    <h1>Dịch vụ đặt hình xăm</h1>\n");
      out.write("                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque neque lectus, aliquam a\n");
      out.write("                        lobortis id, maximus at odio.</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"footer-contact\">\n");
      out.write("                    <h1>Liên hệ</h1>\n");
      out.write("                    <i class=\"fa-brands fa-facebook\"></i>\n");
      out.write("                    <i class=\"fa-brands fa-instagram\"></i>\n");
      out.write("                    <i class=\"fa-brands fa-twitter\"></i>\n");
      out.write("                    <i class=\"fa-brands fa-facebook-messenger\"></i>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"footer-address\">\n");
      out.write("                    <h1>Địa chỉ</h1>\n");
      out.write("                    <p>Địa chỉ: Chung Cư Hado Centrosa 200 đường 3/2, Q10, Hồ Chí Minh</p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("            function drop() {\n");
      out.write("                var divs = document.getElementById(\"subnav-content-id\");\n");
      out.write("                divs.classList.toggle(\"show\");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <script src=\"js/app.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
