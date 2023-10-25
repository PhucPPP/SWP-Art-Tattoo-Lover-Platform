/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String HOME = "homepage";
    private static final String HOME_PAGE = "home.jsp";
    private static final String LOGIN = "login";
    private static final String LOGIN_PAGE = "login.jsp";
    private static final String LOGIN_SERVLET = "loginservlet";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String LOGOUT_SERVLET = "logoutservlet";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String SIGNUP = "signup";
    private static final String SIGNUP_PAGE = "signup.jsp";
    private static final String SIGNUP_SERVLET = "signupservlet";
    private static final String SIGN_CONTROLLER = "SignUpController";
    private static final String STUDIO_SIGNUP = "studiosignup";
    private static final String STUDIO_SIGNUP_PAGE = "studiosignup.jsp";
    private static final String STUDIO_SIGNUP_SERVLET = "studiosignupservlet";
    private static final String STUDIO_SIGNUP_CONTROLLER = "StudioSignUpController";
    private static final String GETSTUINFOR = "getStuInfor";
    private static final String GETSTUINFOR_CONTROLLER = "GetStuInforController";
    private static final String SEARCHSTU = "SearchStudio";
    private static final String SEARCHSTU_CONTROLLER = "SearchStudioController";
    private static final String VIEWSTUDIO = "ViewStudio";
    private static final String VIEWSTUDIO_CONTROLLER = "ViewStudioInforController";
    private static final String SORTSERVICE_STUDIO = "SortServiceStudio";
    private static final String SORTSERVICE_STUDIO_CONTROLLER = "SortServiceStudioController";
    private static final String STUDIO_SERVICE = "ViewStudioService";
    private static final String STUDIO_SERVICE_CONTROLLER = "ViewStudioServiceController";
    private static final String BOOK_SERVICE = "BookService";
    private static final String BOOK_SERVICE_CONTROLLER = "BookServiceController";
    private static final String BOOK_FORM = "BookForm";
    private static final String BOOK_FORM_CONTROLLER = "BookFormController";
    private static final String BOOK_LIST = "BookList";
    private static final String BOOK_LIST_CONTROLLER = "BookListController";
    private static final String DETAIL_BOOKING = "DetailBooking";
    private static final String DETAIL_BOOKING_CONTROLLER = "BookingDetailController";

    private static final String VIEWACCOUNT = "ViewAccount";
    private static final String VIEWACCOUNT_CONTROLLER = "AccountViewController";
    private static final String DELELTE_USER = "DeleteUser";
    private static final String DELELTE_USER_CONTROLLER = "DeleteUserController";
    private static final String VIEWSERVICE = "ViewService";
    private static final String VIEWSERVICE_CONTROLLER = "ServiceListController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = HOME_PAGE;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = HOME_PAGE;
            } else if (action.equals(HOME)) {
                url = HOME_PAGE;
            } else if (action.equals(LOGIN)) {
                url = LOGIN_PAGE;
            } else if (action.equals(LOGIN_SERVLET)) {
                url = LOGIN_CONTROLLER;
            } else if (action.equals(LOGOUT_SERVLET)) {
                url = LOGOUT_CONTROLLER;
            } else if (action.equals(SIGNUP)) {
                url = SIGNUP_PAGE;
            } else if (action.equals(SIGNUP_SERVLET)) {
                url = SIGN_CONTROLLER;
            } else if (action.equals(STUDIO_SIGNUP)) {
                url = STUDIO_SIGNUP_PAGE;
            } else if (action.equals(STUDIO_SIGNUP_SERVLET)) {
                url = STUDIO_SIGNUP_CONTROLLER;
            } else if (action.equals(GETSTUINFOR)) {
                url = GETSTUINFOR_CONTROLLER;
            } else if (action.equals(SEARCHSTU)) {
                url = SEARCHSTU_CONTROLLER;
            } else if (action.equals(VIEWSTUDIO)) {
                url = VIEWSTUDIO_CONTROLLER;
            } else if (action.equals(SORTSERVICE_STUDIO)) {
                url = SORTSERVICE_STUDIO_CONTROLLER;
            } else if (action.equals(STUDIO_SERVICE)) {
                url = STUDIO_SERVICE_CONTROLLER;
            } else if (action.equals(BOOK_SERVICE)) {
                url = BOOK_SERVICE_CONTROLLER;
            } else if (action.equals(BOOK_FORM)) {
                url = BOOK_FORM_CONTROLLER;
            } else if (action.equals(BOOK_LIST)) {
                url = BOOK_LIST_CONTROLLER;
            } else if (action.equals(DETAIL_BOOKING)) {
                url = DETAIL_BOOKING_CONTROLLER;
            } else if (action.equals(VIEWACCOUNT)) {
                url = VIEWACCOUNT_CONTROLLER;
            } else if (action.equals(DELELTE_USER)) {
                url = DELELTE_USER_CONTROLLER;
            }  else if (action.equals(VIEWSERVICE)) {
                url = VIEWSERVICE_CONTROLLER;
            }
        } catch (Exception e) {
            log("Error ar MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
