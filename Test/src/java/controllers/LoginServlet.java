/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import DAO.UserDAO;
import DTO.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ACER
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String userAccount = request.getParameter("txtuseraccount");
            String password = request.getParameter("txtpassword");
            String msg;
            String path = "homepage.jsp";
            User us = new User();
            us = UserDAO.getUserByUserAccount(userAccount);
            if(us!=null){
                if(password.equals(us.getPassword())){
                    HttpSession session = request.getSession();
                    session.setAttribute("User", us);
                    switch (us.getRoleId()){
                        case "Admin":
                            //admin page
                            break;
                        case "SystemStaff":
                            //Systemstaff page
                            break;
                        case "StudioManager":
                            //StudioManager page
                            break;
                        case "StudioStaff":
                            //Studiostaff page
                            break;
                        case "Artist":
                            //Artist page
                            break;
                        case "TattooLover":
                            //TattooLover page
                            break;
                        default:
                            //TattooLover page
                            break;
                    }
                } else {
                    //Password incorrect
                }
            } else {
                //Username incorrect
            }
            request.getRequestDispatcher(path).forward(request, response);
        } catch (Exception e){
            e.printStackTrace();
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
