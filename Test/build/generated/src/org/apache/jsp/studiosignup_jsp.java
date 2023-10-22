package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class studiosignup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Studio Manager</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style3.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"//fonts.googleapis.com/css?family=Quicksand\" />\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <a class=\"btn-logo\" href=\"#\"><img src=\"IMG/logo.jpg\" ></a>\n");
      out.write("            <input class=\"input-search\" type=\"text\" placeholder=\"Tìm kiếm\" />\n");
      out.write("            <i class=\"fa-solid fa-magnifying-glass search-icon\"></i>\n");
      out.write("            <a class=\"btn-notification\" href=\"#\">Đăng nhập |</a>\n");
      out.write("            <a class=\"btn-signupstudio\" href=\"#\">Đăng ký   | </a>\n");
      out.write("            <a class=\"btn-Signup\" href=\"#\">Đăng ký Studio</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"container2\">\n");
      out.write("            <div class=\"signUp\">\n");
      out.write("                <h2>ĐĂNG KÝ TÀI KHOẢN</h2>\n");
      out.write("                <form action=\"#\" method=\"post\">\n");
      out.write("                    <div class=\"Username\">\n");
      out.write("                        <label for=\"username\">Tên đăng nhập</label>\n");
      out.write("                        <input type=\"text\" id=\"username\" name=\"username\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"Password\">\n");
      out.write("                        <label for=\"password\">Mật khẩu</label>\n");
      out.write("                        <input type=\"password\" id=\"password\" name=\"password\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"Confirm\">\n");
      out.write("                        <label for=\"password\">Xác nhận mật khẩu</label>\n");
      out.write("                        <input type=\"password\" id=\"password\" name=\"password\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"studioName\">\n");
      out.write("                        <label for=\"studioName\">Tên studio</label>\n");
      out.write("                        <input type=\"text\" id=\"studioName\" name=\"studioName\" required>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"phoneNumber\">\n");
      out.write("                        <label for=\"phone\">Số điện thoại</label>\n");
      out.write("                        <input type=\"tel\" id=\"phone\" name=\"phone\" required pattern=\"[0-9]{10}\">\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"Email\">\n");
      out.write("                        <label for=\"email\">Email<label>\n");
      out.write("                        <input type=\"email\" id=\"email\" name=\"email\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"City\">\n");
      out.write("                        <label for=\"city\">Thành phố</label>\n");
      out.write("                        <select id=\"city\" name=\"city\" required>\n");
      out.write("                            <option value=\"HCM\">Thành Phố Hồ Chí Minh</option>\n");
      out.write("                            <option value=\"HN\">Hà Nội</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"District\">\n");
      out.write("                        <label for=\"district\">Quận</label>\n");
      out.write("                        <select id=\"district\" name=\"district\" required>\n");
      out.write("                            <option value=\"1\">Quận 1</option>\n");
      out.write("                            <option value=\"3\">Quận 3</option>\n");
      out.write("                            <option value=\"PN\">Quận Phú Nhuận</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"LOGIN\">\n");
      out.write("                        <input type=\"submit\" value=\"ĐĂNG KÝ\">\n");
      out.write("                        <button type=\"button\" onclick=\"history.back()\">HỦY</button>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"footer\">\n");
      out.write("\n");
      out.write("            <div class=\"footer-service\">\n");
      out.write("                <h1>Dịch vụ đặt hình xăm</h1>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque neque lectus, aliquam a\n");
      out.write("                    lobortis id, maximus at odio.</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-contact\">\n");
      out.write("                <h1>Liên hệ</h1>\n");
      out.write("                <i class=\"fa-brands fa-facebook\"></i>\n");
      out.write("                <i class=\"fa-brands fa-instagram\"></i>\n");
      out.write("                <i class=\"fa-brands fa-twitter\"></i>\n");
      out.write("                <i class=\"fa-brands fa-facebook-messenger\"></i>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer-address\">\n");
      out.write("                <h1>Địa chỉ</h1>\n");
      out.write("                <p>Địa chỉ: Chung Cư Hado Centrosa 200 đường 3/2, Q10, Hồ Chí Minh</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
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
