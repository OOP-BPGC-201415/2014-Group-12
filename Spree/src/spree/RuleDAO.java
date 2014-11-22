package spree;
import java.sql.*;

public class RuleDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null;
    
    public static boolean fill(Rule bean, int id) {
    	Statement stmt = null; 
    	String searchQuery = "Select * from Rule where id = "+id+";";
    	System.out.println(searchQuery);
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery);
    		if(rs.next()) {
    			bean.setAgeLimit(rs.getInt("ageLimit"));
    			bean.setMinNoOfPlayers(rs.getInt("minNoOfPlayers"));
    			bean.setMaxNoOfPlayers(rs.getInt("maxNoOfPlayers"));
    			bean.setMinNoOfTeams(rs.getInt("minNoOfTeams"));
    			bean.setMaxNoOfTeams(rs.getInt("maxNoOfTeams"));
    			bean.setRulesDescription(rs.getString("rulesDescription"));
    		}
    		else {
    			System.out.println("Invalid rule id - " + id);
    			return false;
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return true;
    }
    
}
