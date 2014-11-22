package spree;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null;
    
	public static boolean isAdmin(String username,String password){
		boolean Admin = false;
		Statement stmt = null;
		String searchQuery = "Select * from admin where username='" + username + "' AND password='" + password + "'"; 
		//connect to DB
		
		try {
			currentCon = ConnectionManager.getConnection(); 
			stmt=currentCon.createStatement();
    		rs = stmt.executeQuery(searchQuery);
    		if(rs.next()) {
    		Admin = true;
    		
    		}
		} catch (SQLException e) {
			System.out.println("SQL Exception");
		}
		return Admin;
	}
}
