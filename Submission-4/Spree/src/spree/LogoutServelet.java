package spree;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** * Servlet implementation class LoginServlet */ 

public class LogoutServelet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
    	{            HttpSession session = request.getSession(true);
            session.invalidate();
            response.sendRedirect("logout.jsp");
            return; // <--- Here.
        
    	}
}
}