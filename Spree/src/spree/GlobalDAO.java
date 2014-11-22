package spree;
import java.sql.*;
import java.util.ArrayList;


public class GlobalDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null;
    static ArrayList<Team> teams= new ArrayList<Team>(0);
    static ArrayList<Fixture> fixtures = new ArrayList<Fixture>(0); 
    
    
    public static boolean initialize() {
    	Statement stmt = null; 
    	String searchQuery = "Select * from Team;";
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery);
    		while(rs.next()) {
    			Team team = new Team();
    			TeamDAO.fill(team, rs.getInt("id"));
    			teams.add(team);
    		}
    		
    		searchQuery = "Select * from Fixture;";
    		rs = stmt.executeQuery(searchQuery);
    		while(rs.next()) {
    			Fixture fixture = new Fixture();
    			FixtureDAO.fill(fixture, rs.getInt("id"));
    			fixtures.add(fixture);
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return true;
    }
    
}
