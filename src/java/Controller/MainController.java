/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
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
    private static final String HOME_PAGE = "homeTL.jsp";
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
    private static final String BOOK = "Book";
    private static final String BOOK_CONTROLLER = "BookController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = HOME_PAGE;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = HOME_PAGE;
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
            } else if (action.equals(BOOK)) {
                url = BOOK_CONTROLLER;
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
