/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techBlog.servlets;

import com.techBlog.dao.UserDao;
import com.techBlog.entities.Message;
import com.techBlog.entities.User;
import com.techBlog.helper.ConnectionProvider;
import com.techBlog.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

/**
 *
 * @author Chandan Kumar
 */
@MultipartConfig
public class EditServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditServlet</title>");
            out.println("</head>");
            out.println("<body>");

            // fetch all the data...
            String userEmail = request.getParameter("user_email");
            String password = request.getParameter("user_password");
            String about = request.getParameter("user_about");

            // get the image name...
            Part part = request.getPart("image");
            String imgName = part.getSubmittedFileName();
//            System.out.println(imgName);

            // get the user from the session...
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("currentUser");

            // set the all attribute...
            user.setEmail(userEmail);
            user.setPassword(password);
            user.setAbout(about);
            String oldFile = user.getProfile();  // get the profile for deleteing purpose
            user.setProfile(imgName);

            //update database...
            UserDao userDao = new UserDao(ConnectionProvider.getConnection());
            boolean ans = userDao.updateUser(user);

            if (ans) {
                // new profile pic
                String path = request.getServletContext().getRealPath("/") + "Pics" + File.separator + user.getProfile();

                // delete the oldFile pic
//                String oldFilePath = request.getRealPath("/") + "Pics" + File.separator + oldFile;
//                    Helper.deleteFile(oldFilePath);
//                if (!oldFile.equals("default.png")) {  // when file id default.png then it will doesn't delete  
//                }

                // save the file
                if (Helper.saveFile(part.getInputStream(), path)) {
                    // out.println("Profile updated...");

                    Message msg = new Message("Profile details Updated...", "success", "alert-success");
                    session.setAttribute("msg", msg);
                } else {
                    System.out.println("After the save file...");
                    Message msg = new Message("Something went wrong...", "error", "alert-warning");
                    session.setAttribute("msg", msg);
                }

            } else {
                out.println("not updated...");
                Message msg = new Message("Something went wrong...", "error", "alert-danger");
                session.setAttribute("msg", msg);
            }

            response.sendRedirect("profile.jsp");

            out.println("</body>");
            out.println("</html>");
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
