package spree;
import java.sql.*;
import java.util.ArrayList;

public class SportDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null, rs2 = null;
    
    public static boolean fill(Sport bean, int id) {
    	Statement stmt = null; 
    	String searchQuery = "Select * from Sport where id = "+Integer.toString(id)+";";
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery); 
    		if(rs.next()) {
    			bean.setRegistrationFee(rs.getInt("registrationFee"));
    			//bean.setEventHead(eventHead); // to be implemented
    			bean.setRounds(rs.getInt("rounds"));
    			Rule rule = new Rule(0, 0, 0, 0, 0, null);
    			RuleDAO.fill(rule, rs.getInt("rules"));
    			bean.setRules(rule);
    			bean.setSportName(rs.getString("sportName"));
    			
    			ArrayList<Fixture> fixtures = new ArrayList<Fixture>(0);

                
            	searchQuery = "Select * from Sport_Fixture where sportId = "+id+";";
                rs2 = stmt.executeQuery(searchQuery);
            	while(rs2.next()) {
            		   	Fixture fixture = new Fixture(null, null, null, null, null, null);
                    	FixtureDAO.fill(fixture, rs2.getInt("fixtureId"));
                    	fixtures.add(fixture);
            	}
            	bean.setFixture(fixtures);
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
