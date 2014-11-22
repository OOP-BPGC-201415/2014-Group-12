package spree;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
@WebServlet("/SettingsServlet")
public class SettingsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
		ResultSet rs = null;
    	Statement stmt = null;
    	Connection currentCon;

    	//String admin1 = currentAdmin.getDetails().getAdminName();
    	String password1 = request.getParameter("password");
  //  	String user_ban = request.getParameter("player");
    	String query1 = "Update Admin set password='"+password1+"' where username= 'admin1';";
   // 	String query2 = "Drop Particpant where username="+user_ban+";";
    	
    	try{
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement();
    		stmt.execute(query1);
    		//rs= stmt.executeQuery(query2);
    		response.sendRedirect("Admin-Settings-Updated.jsp");
    	}
    	catch(Throwable theException) {
            System.out.println(theException);
            response.sendRedirect("Admin-Settings.jsp");
        }
	}

	}