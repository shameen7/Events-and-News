/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shameen karunanayake
 */
@WebServlet(name = "signIn", urlPatterns = {"/signIn"})
public class signIn extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String _username = request.getParameter("uname");
            String _password = request.getParameter("pass");
            
                    DBCon obj = new DBCon();
                    Connection conn = obj.getConnection();
                    String Query = "Select * from users where username =? and password =?";
                    PreparedStatement psm = conn.prepareStatement(Query);
                    psm.setString(1,_username);
                    psm.setString(2,_password);
                    ResultSet rs = psm.executeQuery();
                    
                    while(rs.next())
                    {
                        String type = rs.getString("type");
                        String accStatus = rs.getString("accountstatus");
                        
                        if(type.equals("university"))
                        {
                          response.sendRedirect("university/index.jsp");                        
                        } 
                        else if(type.equals("admin"))
                        {
                          response.sendRedirect("admin/index.jsp");                        
                        }
                        else if(type.equals("student"))
                        {
                          response.sendRedirect("student/index.jsp");                        
                        }
                        
                    }
                    
            
            
        } catch (SQLException ex) {
            Logger.getLogger(signIn.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signIn.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
