package spree;
import java.sql.*;

public class ParticipantDAO {
    static Connection currentCon = null; 
    static ResultSet rs = null;
    static ResultSet rs2 = null; 
    
    public static Participant login(Participant bean) {
        //preparing some objects for connection 
    	Statement stmt = null; 
    	String username = bean.getUsername(); 
    	String password = bean.getPassword(); 
    	String searchQuery = "Select * from Participant where username='" + username + "' AND password='" + password + "'"; 
    	System.out.println("Your user name is " + username); 
    	System.out.println("Your password is " + password); 
    	System.out.println("Query: "+searchQuery); 
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery); 
    		boolean more = rs.next(); // if user does not exist set the isValid variable to false 
    		if (!more) {
                System.out.println("Sorry, you are not a registered participant! Please sign up first"); 
                bean.setValid(false);
            }
            //if user exists set the isValid variable to true else 
    		if (more) {
                ParticipantDAO.fill(bean);
                System.out.println("Welcome"+bean.getName());
                bean.setValid(true);
            }
            
        }
        catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        }
        //some exception handling 
    	finally {
            if (rs != null) {
                try {
                    rs.close();
                }
                catch (Exception e) {
                    
                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                }
                catch (Exception e) {
                    
                }
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                }
                catch (Exception e) {
                    
                }
                currentCon = null;
            }
            
        }
        return bean;
    }
    
    public static boolean fill(Participant bean) {
    	boolean isCaptain;
    	int event, details, teamId;
    	Statement stmt = null; 
    	String username = bean.getUsername(); 
    	String password = bean.getPassword(); 
    	String searchQuery = "Select * from Participant where username='" + username + "' AND password='" + password + "'";
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery); 
    		if(rs.next()) {
    			details = rs.getInt("details");
    			teamId = rs.getInt("team");
    			isCaptain = rs.getBoolean("isCaptain");
    			event = rs.getInt("event");
    		}
    		else {
    			return false;
    		}
		    
    		bean.setIsCaptain(isCaptain);
    		
    		StudentDetail sd = new StudentDetail(null, null, null, null);
    		StudentDetailDAO.fill(sd, details);
    		bean.setDetails(sd);
            
            searchQuery = "Select * from Event where id = "+Integer.toString(event)+";";
            rs = stmt.executeQuery(searchQuery);
            if (rs.next()) {
            	/* fill event details
            	 */
            }
            else {
            	Sport sport = new Sport(null, 0, null, null, null, null);
            	SportDAO.fill(sport, event);
            	bean.setEvent(sport);
            }

            /* fill team details */
            Team team = new Team(null, null, null, null, null);
            TeamDAO.fill(team, teamId);
            bean.setTeam(team);
            bean.setFixtures(bean.getEvent().getFixture());
            /* Now fill fixtures with sports */
            for(int i=0; i<bean.getFixtures().size(); i++) {
            	bean.getFixtures().get(i).setSport((Sport) bean.getEvent());
            }
            
        } catch (Exception ex) {
            System.out.println("Participant filling failed: An Exception has occurred! " + ex);
        }
        //some exception handling 
    	finally {
            if (rs != null) {
                try {
                    rs.close();
                }
                catch (Exception e) {
                    
                }
                rs = null;
            }
            if (stmt != null) {
                try {
                    stmt.close();
                }
                catch (Exception e) {
                    
                }
                stmt = null;
            }
            if (currentCon != null) {
                try {
                    currentCon.close();
                }
                catch (Exception e) {
                    
                }
                currentCon = null;
            }
            
        }
        return true;
    }
    
}