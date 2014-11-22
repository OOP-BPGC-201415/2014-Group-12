package spree;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
@WebServlet("/FixtureServlet")
public class FixtureServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
//		ResultSet rs = null;
//    	Statement stmt = null;
    	boolean Noerror = true;
		String team1 = request.getParameter("teamA");
		String team2 = request.getParameter("teamB");
		String date = request.getParameter("date");
		String location = request.getParameter("venue");
		int sportID = Integer.parseInt(request.getParameter("sportID"));
		if(team1!=null|team2!=null|date!=null|location!=null)	
		{	
			Noerror = AddToDatabase.AddToFixtures(sportID,team1,team2,date,location);
			if(Noerror == true){
				response.sendRedirect("Admin-Sport-Updated.jsp");
			}
			else{
				response.sendRedirect("Admin-Sport.jsp");
			}
		}
		else
			response.sendRedirect("Admin-Sport.jsp");
	}

	}
