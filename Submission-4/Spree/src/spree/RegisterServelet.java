package spree;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** * Servlet implementation class RegisterServlet */ 
@WebServlet("/register")
public class RegisterServelet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        try {
    	String register = request.getParameter("register");
    	String informalEvent = request.getParameter("informalEvent");
    	int amountToBePaid = 0;
    	if(register.equals("1")){
    		amountToBePaid += 350;
    	}
    	if(!(informalEvent.equals("-1"))){
    		amountToBePaid += 150;
    	}
    	if(amountToBePaid == 0){
    		response.sendRedirect("RegistrationError.jsp");
    	}else{
	    HttpSession session = request.getSession();
	    synchronized(session) {
	      Finance bean = 
	        (Finance)session.getAttribute("amountToBePaid");
	      if (bean == null) {
	        bean = new Finance(amountToBePaid);
	        session.setAttribute("amountToBePaid",bean);
	        response.sendRedirect("bankGateway.jsp");
	      }
        }
    	}
        }
        catch (Throwable theException) {
            //response.sendRedirect("RegistrationError.jsp");
            
        }
        
    }
    
}
