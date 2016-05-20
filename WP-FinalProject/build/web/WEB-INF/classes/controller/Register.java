package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ferick Andrew
 */
public class Register extends HttpServlet
{
    private String username;
    private String email;
    private String password;
    private String confirmPassword;
    private String emailFormat;
    
    /* DBConn.MD5(password); */
    
    protected void doRegister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        username = request.getParameter("rUsername");
        email = request.getParameter("rEmail");
        password = request.getParameter("rPassword");
        confirmPassword = request.getParameter("rConfirmPassword");
        emailFormat = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        
        try
        {
            HttpSession session = request.getSession(false);
            if (session!=null) session.setAttribute("rUsername", username);
            
            if (DBConn.newUser(username, email, password, 0))
            {
                if (!email.equals(emailFormat))
                    response.sendRedirect("index.jsp?emailFormat=1");
                if (!password.equals(confirmPassword))
                response.sendRedirect("index.jsp?pw=1");
            }
            else
                response.sendRedirect("index.jsp?registered=1");
        }
        catch (ClassNotFoundException ex)
        { Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex); }
        finally {out.close();}
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
            throws ServletException, IOException
    {
        doRegister(request, response);
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
            throws ServletException, IOException
    {
        doRegister(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>
}