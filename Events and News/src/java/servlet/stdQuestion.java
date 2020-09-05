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

@WebServlet(name = "stdQuestion", urlPatterns = {"/stdQuestion"})
public class stdQuestion extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String question = request.getParameter("question");
        String qbody =  request.getParameter("qbody");
        
        Connection con = null;
        PreparedStatement ps = null;
        DBCon obj = new DBCon();
        
        String query = "INSERT INTO studentQuestion (`title`, `body`) VALUES (?,?)";
        
        try {
            con = obj.getConnection();
            ps = con.prepareStatement(query);
            
            ps.setString(1,question);
            ps.setString(2,qbody);
            
            ps.executeUpdate();
            response.sendRedirect("student/index.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signUp.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(signUp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


}
