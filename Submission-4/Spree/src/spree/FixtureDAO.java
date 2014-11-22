package spree;
import java.sql.*;
import java.util.ArrayList;

public class FixtureDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null;
    
    public static boolean fill(Fixture bean, int id) {
    	Statement stmt = null; 
    	String searchQuery = "Select * from Fixture where id = "+Integer.toString(id)+";";
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery); 
    		if(rs.next()) {
    			bean.setLocation(rs.getString("location"));
        		bean.setDate(Date.valueOf(rs.getString("date")));
        		bean.setResult(rs.getString("result"));
        		bean.setScore(rs.getString("score"));
        		/* fill sport - do not implement*/
        		ArrayList<Team> teams = new ArrayList<Team>(0);
        		Team team1 = new Team();
        		TeamDAO.fill(team1, rs.getInt("team1"));
        		Team team2 = new Team();
        		TeamDAO.fill(team2, rs.getInt("team2"));
        		teams.add(team1);
        		teams.add(team2);
        		bean.setTeams(teams);
    		}
    		else {
    			System.out.println("Invalid fixture id");
    			return false;
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return true;
    }
    
}
