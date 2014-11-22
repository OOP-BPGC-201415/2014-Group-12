package spree;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/FinanceServlet")
public class FinanceServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
		
		ResultSet rs = null;
    	Statement stmt = null;
		String value1 = request.getParameter("update");
		String value2 = request.getParameter("balance");
		int amount = 0;
		if(value1 != null){
			if(value1.equals("1"))
				amount = Integer.parseInt(request.getParameter("amount"));
		if( amount != 0)	
			Finance.updateFinance(amount);
			response.sendRedirect("Admin-Finance-Updated.jsp");
		}
		if(value2 != null){
			if(value2.equals("2"))
				amount = Finance.getAccountBalance();
		    Finance bean = new Finance(amount);
		    	    request.setAttribute("bean", bean);
		    	    RequestDispatcher dispatcher =
		    	      request.getRequestDispatcher("Admin-Finance.jsp");
		    	    dispatcher.forward(request, response);
		}
	}
	}