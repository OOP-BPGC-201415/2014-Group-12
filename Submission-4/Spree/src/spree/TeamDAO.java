package spree;
import java.sql.*;
import java.util.ArrayList;

public class TeamDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null;
    
    public static boolean fill(Team bean, int id) {
    	Statement stmt = null; 
    	String searchQuery = "Select * from Team where id = "+Integer.toString(id)+";";
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery); 
    		if(rs.next()) {
    			
    			Sport sport = new Sport();
    			/*
    			SportDAO.fill(sport, rs.getInt("sport"));
    			bean.setSport(sport);
    			*/
    			bean.setCollegeName(rs.getString("collegeName"));
    			bean.setTeamName(rs.getString("teamName"));
    			/* Participants list and teamHead not implemented*/
    		}
    		else {
    			System.out.println("Invalid rule id");
    			return false;
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return true;
    }
    
}
