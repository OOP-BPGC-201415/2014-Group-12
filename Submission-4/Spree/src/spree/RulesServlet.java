package spree;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
@WebServlet("/RulesServlet")
public class RulesServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
	
		ResultSet rs = null;
    	Statement stmt = null;
		int ageLimit1 = Integer.parseInt(request.getParameter("ageLimit"));
		int minNoOfPlayers1 = Integer.parseInt(request.getParameter("minNoOfPlayers"));
		int maxNoOfPlayers1 = Integer.parseInt(request.getParameter("maxNoOfPlayers"));
		int minNoOfTeams1 = Integer.parseInt(request.getParameter("minNoOfTeams"));
		int maxNoOfTeams1 = Integer.parseInt(request.getParameter("maxNoOfTeams"));
		String rulesDescription1 = request.getParameter("rulesDescription");
		int id = Integer.parseInt(request.getParameter("sportID"));
		Rule rule = new Rule(ageLimit1,minNoOfPlayers1,maxNoOfPlayers1,minNoOfTeams1,maxNoOfTeams1,rulesDescription1);
		AddToDatabase.AddToRules(rule, id);
		response.sendRedirect("Admin-Events-Updated.jsp");
//		String query = "Insert * into Rule ageLimit="+Integer.toString(ageLimit1)+", minNoOfPlayers="+Integer.toString(minNoOfPlayers1)+", maxNoOfPlayers="+Integer.toString(maxNoOfPlayers1)+",minNoOfTeams="+Integer.toString(minNoOfTeams1)+",maxNoOfTeams="+Integer.toString(maxNoOfTeams1)+",rulesDescription="+rulesDescription1+" where id = "+Integer.toString(id)+";";
//		
//		try{
//			Connection conn =  ConnectionManager.getConnection(); 
//    		stmt=conn.createStatement(); 
//			Rule rule = null;
//			RuleDAO.fill(rule, id);
//			rs=stmt.executeQuery(query);
//			response.sendRedirect("Admin-home.jsp");
//		}
//		catch(Throwable theException) {
//            System.out.println(theException);
//            response.sendRedirect("Admin-Sport.jsp");
//        }
	}

	}
