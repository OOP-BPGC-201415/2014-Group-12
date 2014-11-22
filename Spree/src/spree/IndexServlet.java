package spree;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** * Servlet implementation class IndexServlet */ 

public class IndexServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        try {
        		HttpSession session = request.getSession(true);
        		GlobalDAO.initialize();
        		session.setAttribute("teams", GlobalDAO.teams);
                session.setAttribute("fixtures", GlobalDAO.fixtures);
                response.sendRedirect("home.jsp");
        }
        catch (Throwable theException) {
            System.out.println(theException);
            
        }
        
    }
    
}