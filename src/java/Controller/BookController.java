/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.StudioDAO;
import DTO.ImgDTO;
import DTO.StudioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
public class BookController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ERROR = "studioBookingForm.jsp";
    private static final String SUCCESS = "studioBookingForm.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            String studioID = request.getParameter("studioID");
            StudioDTO studio = new StudioDTO();
            StudioDAO stuDao = new StudioDAO();
            studio = stuDao.getStuInfor(studioID);
            if (studio != null) {
                request.setAttribute("STUDIO", studio);

                ImgDTO imgAvatar = stuDao.getAvatarStu(studioID);
                request.setAttribute("IMG_AVATAR", imgAvatar);

                List<ImgDTO> serviceImageList = stuDao.getServiceImageList(studioID);
                request.setAttribute("IMG_SERVICE_LIST", serviceImageList);
                
                String userID = "TL001";
                String serviceID[] = request.getParameterValues("serviceID");
                String serviceDetailID[] = request.getParameterValues("serviceDetailID");
                String serviceSizeID[] = request.getParameterValues("serviceDetailSizeID");
                String amount[] = request.getParameterValues("amount");
                if (serviceID != null && serviceDetailID != null 
                        && serviceSizeID != null && amount != null 
                        && serviceID.length == serviceDetailID.length
                        && serviceID.length == serviceSizeID.length
                        && serviceID.length == amount.length) {
                    
                    
                } else {
                    request.setAttribute("MESSAGE_ERROR", "Bạn chưa nhập đử thông tin");
                }
            }

        } catch (Exception e) {
            log("Error at BookController: " + e.toString());
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
