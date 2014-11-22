package spree;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/** * Servlet implementation class ResultServlet */ 
@WebServlet("/ResultsServlet")
public class ResultsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
    	ResultSet rs = null;
    	Statement stmt = null;
    	int id = 0;
    	id = Integer.parseInt(request.getParameter("matchID"));
    	String score1 = request.getParameter("score");
    	String result1 = request.getParameter("result");
    	boolean noError = AddToDatabase.updateResult(score1, result1, id);
    	if(noError == true){
    		response.sendRedirect("Admin-Results-Updated.jsp");
    	}
    	else
    		response.sendRedirect("Admin-Results.jsp");
    	}

	}