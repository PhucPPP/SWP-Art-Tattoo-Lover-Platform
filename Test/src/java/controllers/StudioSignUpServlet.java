/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import DAO.StudioDAO;
import DAO.UserDAO;
import DTO.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mylib.Utils;

/**
 *
 * @author ACER
 */
public class StudioSignUpServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmedPassword = request.getParameter("confirmedpassword");
            String roleId = request.getParameter("roleid");
            String studioName = request.getParameter("studioName");
            String phoneNumber = request.getParameter("phone");
            String email = request.getParameter("email");
            String cityId = request.getParameter("city");
            String districtId = request.getParameter("district");

            User us = UserDAO.getUserByUserAccount(username);
            String msg = "";
            boolean flag = false;

            if (us != null) {
                //Duplicate username
                flag = true;
                msg = "User Name already existed";
            } else {
                if (us != null) {
                    //check password
                    if (password.equals(confirmedPassword)) {
                        //create account
                        String userId; //create id
                        do {
                            userId = Utils.getRandomUserId(roleId);
                        } while (UserDAO.getUserByUserId(userId) != null);
                        us = UserDAO.createUser(userId, username, password, roleId, null, null, null, phoneNumber, email, cityId, districtId, true, null);
                        String studioId;
                        do{
                            studioId = Utils.getRandomUserId("ST");
                        } while (StudioDAO.getStudioByStuDioId(studioId)!=null);
                        StudioDAO.createStudio(studioName, userId, studioName, studioName, cityId, districtId, phoneNumber, email, flag, 0, msg, userId, districtId, 0);
                        HttpSession session = request.getSession();
                        session.setAttribute("user", us);
                        response.sendRedirect("MainController?action=homepage");
                    } else {
                        //password is not confirmed
                        msg = "Password does not match";
                        flag = true;
                    }
                }
            }
        } catch (Exception e) {
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
