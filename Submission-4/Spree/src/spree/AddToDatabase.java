package spree;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.xml.ws.Response;

public class AddToDatabase {
	static Connection currentCon = null; 
    static ResultSet rs = null;

	public static void AddToParticipantsDB(Participant p){
		Statement stmt = null;
    	try {
    		int id = 0;
    		String query = "SELECT id FROM studentdetail order by id desc;";
    		//connect to DB
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement();
    		rs = stmt.executeQuery(query);
    		if(rs.next()) {
    		id = rs.getInt("id");
    		id++;
    		System.out.println(id);
    		}
    		String addToStudentDetails = "INSERT INTO studentdetail (id,studentID,studentName,collegeName,email) VALUES"
    				+ "("+id+",?,?,?,?)";
    		PreparedStatement preparedStatement = currentCon.prepareStatement(addToStudentDetails);
    		preparedStatement.setString(1, p.getDetails().getStudentID());
    		preparedStatement.setString(2, p.getDetails().getStudentName());
    		preparedStatement.setString(3, p.getDetails().getCollegeName());
    		preparedStatement.setString(4, p.getDetails().getEmail());
    		preparedStatement.executeUpdate();
    		/**
    		 * event,team,fixture id need to be filled
    		 */
    		String query1 = "SELECT id FROM participant order by id desc;";
    		rs = stmt.executeQuery(query1);
    		if(rs.next()) {
    		id = rs.getInt("id");
    		id++;
    		System.out.println(id);
    		}
    		String addToParticipant = "INSERT INTO participant (id,username,password,details)"
    				+ "VALUES("+id+",?,?,?)";
    		preparedStatement = currentCon.prepareStatement(addToParticipant);
    		preparedStatement.setString(1, p.getUsername());
    		preparedStatement.setString(2, p.getPassword());
    		preparedStatement.setInt(3, id);
    		preparedStatement.executeUpdate();
    		

        }
        catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        }
	}
    public static void AddToRules(Rule bean, int id) {
    	Statement stmt = null; 
    	try{
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement();
    		String addToStudentDetails = "INSERT INTO rule (id,ageLimit,minNoOfPlayers,maxNoOfPlayers,minNoOfTeams,maxNoOfTeams,rulesDescription) VALUES"
    				+ "("+id+",?,?,?,?,?,?)";
    		PreparedStatement preparedStatement = currentCon.prepareStatement(addToStudentDetails);
    		preparedStatement.setInt(1, bean.getAgeLimit());
    		preparedStatement.setInt(2, bean.getMinNoOfPlayers());
    		preparedStatement.setInt(3, bean.getMaxNoOfPlayers());
    		preparedStatement.setInt(4, bean.getMinNoOfTeams());
    		preparedStatement.setInt(5, bean.getMaxNoOfTeams());
    		preparedStatement.setString(6, bean.getRulesDescription());
       		preparedStatement.executeUpdate();
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }

	public static boolean AddToFixtures(int sportID, String team1, String team2,
			String date, String location) {
		Statement stmt = null;
    	try {
    		int id = 0;
    		int team1Key = 0;
    		int team2Key = 0;
    		String query = "SELECT id FROM fixture order by id desc;";
    		//connect to DB
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement();
    		rs = stmt.executeQuery(query);
    		if(rs.next()) {
    		id = rs.getInt("id");
    		id++;
    		}
    		String Squery = "SELECT id FROM team WHERE teamName='"+team1+"';";
    		//connect to DB
    		rs = stmt.executeQuery(Squery);
    		if(rs.next()) {
    		team1Key = rs.getInt("id");
    		}
    		String Squery1 = "SELECT id FROM team WHERE teamName='"+team2+"';";
    		//connect to DB
    		rs = stmt.executeQuery(Squery1);
    		if(rs.next()) {
    		team2Key = rs.getInt("id");
    		}
    		if(team1Key == 0 | team2Key == 0){
    			return false;
    		}
    		String addToStudentDetails = "INSERT INTO fixture (id,location,date,sport,team1,team2,result,score) VALUES"
    				+ "("+id+",?,?,?,?,?,?,?)";
    		PreparedStatement preparedStatement = currentCon.prepareStatement(addToStudentDetails);
    		preparedStatement.setString(1, location);
    		preparedStatement.setString(2, date);
    		preparedStatement.setInt(3, sportID);
    		preparedStatement.setInt(4, team1Key);
    		preparedStatement.setInt(5, team2Key);
    		preparedStatement.setString(6, " ");
    		preparedStatement.setString(7, " ");
    		
    		preparedStatement.executeUpdate();
    		return true;
        }
        catch (Exception ex) {
        	
        	System.out.println("Log In failed: An Exception has occurred! " + ex);
        	return false;
        }
		
	}
	public static boolean updateResult(String score,String result,int fixtureID){
		Statement stmt = null;
    	try {
    		String query = "update fixture set score = ?,result = ? where id = 1";
    		//connect to DB
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement();
    		PreparedStatement preparedStatement = currentCon.prepareStatement(query);
    		preparedStatement.setString(1, score);
    		preparedStatement.setString(2, result);	
    		preparedStatement.executeUpdate();
    		return true;
        }
        catch (Exception ex) {
        	
        	System.out.println("Log In failed: An Exception has occurred! " + ex);
        	return false;
        }
		
	}
public static void main(String ... args){
//StudentDetail s = new StudentDetail("749", "Mandar", "BITS", "f2012749@gmail.com");
//Participant p = new Participant("mandar", "mandar", s, null, null, null, false);
//AddToParticipantsDB(p);
//Rule r = new Rule(25, 25, 25, 25, 25, "MVG");
//AddToDatabase.AddToRules(r, 8);
//AddToFixtures(2, "Team1", "Team2", "date", "location");
//updateResult("123/0", " ", 2);
}
}