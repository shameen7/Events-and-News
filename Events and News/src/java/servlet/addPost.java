/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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

@WebServlet(name = "addPost", urlPatterns = {"/addPost"})
public class addPost extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("pTitle");
        String body =  request.getParameter("pBody");
        String type =  request.getParameter("type"); 
        
        Connection con = null;
        PreparedStatement ps = null;
        DBCon obj = new DBCon();
        
        String query = "insert into event (`title`,`body`,`type`) VALUES (?,?,?)";
        
        try {
            con = obj.getConnection();
            ps = con.prepareStatement(query);
            
            ps.setString(1,title);
            ps.setString(2,body);
            ps.setString(3,type);

            
            ps.executeUpdate();
            response.sendRedirect("university/index.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(signUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
