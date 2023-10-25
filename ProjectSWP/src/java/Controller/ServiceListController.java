/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.ServiceDAO;
import DAO.UserDAO;
import DTO.ServiceDTO;
import DTO.ServiceDetailDTO;
import DTO.ServiceSizeDTO;
import DTO.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hieu09097248
 */
public class ServiceListController extends HttpServlet {

    private static final String ERROR = "AdminServicePage.jsp";
    private static final String SUCCESS = "AdminServicePage.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String url = ERROR;
        try {
            ServiceDAO dao = new ServiceDAO();
            List<ServiceDTO> serviceList = dao.getListService();
            List<ServiceDetailDTO> serviceDetialList = dao.getListServiceDetail();
            List<ServiceSizeDTO> serviceSizeList = dao.getListServiceSize();
            
            if (serviceList.size() > 0 || serviceDetialList.size() > 0 || serviceSizeList.size() > 0) {
                request.setAttribute("SERVICE_LIST", serviceList);
                request.setAttribute("SERVICE_LIST_DETAIL", serviceDetialList);
                request.setAttribute("SERVICE_SIZE", serviceSizeList);
                url = SUCCESS;
                
                
            }
        } catch (Exception e) {
            log("Error at BookingListServlet: " + e.toString());
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
