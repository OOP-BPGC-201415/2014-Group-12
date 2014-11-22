package spree;

import java.sql.*;

public class ConnectionManager {
    static Connection con;
    static String url;
    public static Connection getConnection() {
        try {
            String url = "jdbc:mysql://" + "localhost/spree";
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con = DriverManager.getConnection(url,"root","mss12345");
            }
            catch (SQLException ex) {
                ex.printStackTrace();
                
            }
        }
        catch(ClassNotFoundException e) {
            System.out.println(e);
        }
        return con;
        
    }
    
}