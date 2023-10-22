package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<title>Tattoo Studio</title>\n");
      out.write("\t<!-- Embed css here -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"//fonts.googleapis.com/css?family=Quicksand\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <a class=\"btn-logo\" href=\"#\"><img src=\"IMG/logo.jpg\" ></a>\n");
      out.write("            <input class=\"input-search\" type=\"text\" placeholder=\"Tìm kiếm\" />\n");
      out.write("            <i class=\"fa-solid fa-magnifying-glass\"></i>\n");
      out.write("            <a class=\"btn-notification\" href=\"#\">Đăng nhập |</a>\n");
      out.write("            <a class=\"btn-signupstudio\" href=\"#\">Đăng ký   | </a>\n");
      out.write("            <a class=\"btn-Signup\" href=\"#\">Đăng ký Studio</a>\n");
      out.write("        </div>\n");
      out.write("        <h2>ĐĂNG NHẬP</h2>\n");
      out.write("        <div class=\"container2\">\n");
      out.write("                <form method=\"post\">\n");
      out.write("                    <div class=\"USERNAME\">\n");
      out.write("                        <label for=\"username\" >Tên đăng nhập</label>\n");
      out.write("                        <input type=\"text\" id=\"username\" name=\"username\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"PASSWORD\">\n");
      out.write("                        <label for=\"password\">Mật khẩu</label>\n");
      out.write("                        <input type=\"password\" id=\"password\" name=\"password\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"LOGIN\">\n");
      out.write("                        <input type=\"submit\" value=\"ĐĂNG NHẬP\">\n");
      out.write("                        <button type=\"button\" onclick=\"history.back()\">HỦY</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"PLUS\">\n");
      out.write("                        <div class=\"FORGOT\">\n");
      out.write("                            <button type=\"button\">Quên mật khẩu ?</button>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"SIGNIN\">\n");
      out.write("                            <button type=\"button\">Đăng ký</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("        <div class=\"footer\">\n");
      out.write("    \n");
      out.write("            <div class=\"footer-service\">\n");
      out.write("                <h1>Dịch vụ đặt hình xăm</h1>\n");
      out.write("                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque neque lectus, aliquam a\n");
      out.write("                    lobortis id, maximus at odio.</p>\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("            <div class=\"footer-contact\">\n");
      out.write("                <h1>Liên hệ</h1>\n");
      out.write("                <i class=\"fa-brands fa-facebook\"></i>\n");
      out.write("                <i class=\"fa-brands fa-instagram\"></i>\n");
      out.write("                <i class=\"fa-brands fa-twitter\"></i>\n");
      out.write("                <i class=\"fa-brands fa-facebook-messenger\"></i>\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("            <div class=\"footer-address\">\n");
      out.write("                <h1>Địa chỉ</h1>\n");
      out.write("                <p>Địa chỉ: Chung Cư Hado Centrosa 200 đường 3/2, Q10, Hồ Chí Minh</p>\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<script>\n");
      out.write("\n");
      out.write("        function drop() {\n");
      out.write("            var divs = document.getElementById(\"subnav-content-id\");\n");
      out.write("            divs.classList.toggle(\"show\");\n");
      out.write("        }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("    <script src=\"js/app.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
