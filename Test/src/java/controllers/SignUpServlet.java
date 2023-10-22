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
import mylib.Utils;

/**
 *
 * @author ACER
 */
public class SignUpServlet extends HttpServlet {

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
            String userAccount = request.getParameter("username");
            String password = request.getParameter("password");
            String confirmedPassword = request.getParameter("confirmedpassword");
            String fullname = request.getParameter("fullName");
            String birthday = request.getParameter("birthDate");
            String gender = request.getParameter("gender");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String districtId = request.getParameter("district");
            String cityId = request.getParameter("city");
            String roleId = request.getParameter("roleid");
            String msg = "";

            User us = UserDAO.getUserByUserAccount(userAccount);
            boolean flag = false;

            if (us != null) {
                //check password
                if (password.equals(confirmedPassword)) {
                    //create account
                    String userId; //create id
                    do {
                        userId = Utils.getRandomUserId(roleId);
                    } while (UserDAO.getUserByUserId(userId) != null);
                    us = UserDAO.createUser(userId, userAccount, password, roleId, fullname, birthday, gender, phoneNumber, email, cityId, districtId, true, null);
                    HttpSession session = request.getSession();
                    session.setAttribute("user", us);
                    response.sendRedirect("MainController?action=homepage");
                } else {
                    //password is not confirmed
                    msg = "Password does not match";
                    flag = true;
                }
            } else {
                //duplicate username
                msg = "Username already existed";
                flag = true;
            }
            if (flag) {
                request.setAttribute("msg", msg);
                request.getRequestDispatcher("MainController?action=signup").forward(request, response);
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
