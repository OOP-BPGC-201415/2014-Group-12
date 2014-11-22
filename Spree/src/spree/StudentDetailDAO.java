package spree;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class StudentDetailDAO {
	static Connection currentCon = null; 
    static ResultSet rs = null;
    
    public static boolean fill(StudentDetail bean, int id) {
    	Statement stmt = null;
    	String searchQuery = "Select * from StudentDetail where id = "+Integer.toString(id)+";";
    	try {
            //connect to DB 
    		currentCon = ConnectionManager.getConnection(); 
    		stmt=currentCon.createStatement(); 
    		rs = stmt.executeQuery(searchQuery); 
    		if(rs.next()) {
    			bean.setStudentID(rs.getString("studentID"));
            	bean.setStudentName(rs.getString("studentName"));
            	bean.setCollegeName(rs.getString("collegeName"));
            	bean.setEmail(rs.getString("email"));
    		}
    		else {
    			bean.setStudentName("Guest");
    			System.out.println("Invalid StudentDetail id");
    			return false;
    		}
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return true;
    }
    
}
