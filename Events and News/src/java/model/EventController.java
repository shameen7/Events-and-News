package model;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EventController", urlPatterns = {"/EventController"})
public class EventController extends HttpServlet {

    private static String INSERT_OR_EDIT = "/event.jsp";
    private static String LIST_EVENT = "/listEvent.jsp";
    private EventDAO eventDAO;

    public EventController() {

        eventDAO = new EventDAO();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        


        String action = request.getParameter("action");
        System.out.print(action);
        System.out.print("dsdsd");

            request.setAttribute("events", eventDAO.sellectAllEvents());
            request.getRequestDispatcher("home.jsp").forward(request, response);        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        RequestDispatcher view = request.getRequestDispatcher(LIST_EVENT);
//        request.setAttribute("events", eventDAO.sellectAllEvents());
//        request.setAttribute("puks", "UIIOOO");
//        view.forward(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
