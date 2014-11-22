package spree;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** * Servlet implementation class LoginServlet */ 

public class LoginServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        try {
            Participant user = new Participant(request.getParameter("username"), request.getParameter("password"));
            user = ParticipantDAO.login(user);
            HttpSession session = request.getSession(true);
            if (user.isValid()) {
            	//ParticipantDAO.fill(user);
                session.setAttribute("currentSessionUser", user);
                String name = user.getDetails().getStudentName();
                System.out.println("Name - "+name);
                session.setAttribute("currentSessionUserName", name);
                response.sendRedirect("home.jsp");
                //logged-in page
            }
            else {
            	session.setAttribute("message", "Invalid Login!");
            	response.sendRedirect("login.jsp");
            }
            //error page
        }
        catch (Throwable theException) {
            System.out.println(theException);
            
        }
        
    }
    
}