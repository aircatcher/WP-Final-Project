package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ferick Andrew
 */
public class ChangePassword extends HttpServlet
{
    private String username;
    private String password;
    private String currentPassword;
    private String newPassword;
    private String confirmNewPassword;
    
    protected void doChangePassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        currentPassword = request.getParameter("currentPassword");
        newPassword = request.getParameter("newPassword");
        confirmNewPassword = request.getParameter("confirmNewPassword");
        
        HttpSession session = request.getSession(true);
        username = request.getParameter("username");
        password = request.getParameter("password");
        
        if(session != null)
        {
            session.setAttribute("newPassword", newPassword);
            session.setAttribute("username", username);
            session.setAttribute("password", password);
        }
        
        if(DBConn.changePassword(username, password, newPassword))
            response.sendRedirect("profile.jsp?success=1");
        else
        {
            if (!password.equals(currentPassword))
                response.sendRedirect("changePassword.jsp?wrongPassword=1");
            else if(!newPassword.equals(confirmNewPassword))
                response.sendRedirect("changePassword.jsp?notMatch=1");
        }
        
        out.close();
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
        doChangePassword(request, response);
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
        doChangePassword(request, response);
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