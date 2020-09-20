package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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


@WebServlet(name = "Contact", urlPatterns = {"/Contact"})
public class Contact  extends HttpServlet {

   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String sub= request.getParameter("subject");
        String com = request.getParameter("comment");
     
        
        Connection con = null;
        PreparedStatement ps = null;
        DBCon obj = new DBCon();
        
        String query = "insert into contact (`name`,`email`,`subject`,`comment`) VALUES (?,?,?,?)";
        
        try {
            con = obj.getConnection();
            ps = con.prepareStatement(query);
            
            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,sub);
            ps.setString(4,com);
          
            
            ps.executeUpdate();
            response.sendRedirect("contact.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(signUp.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }

}
