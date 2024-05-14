package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author FPT University - PRJ30X
 */
public class DBContext {

    public Connection connection;
<<<<<<< HEAD
    
    public String DBName = "testregister";
=======
>>>>>>> 7d69e8d1e234c758937082b3fa85349451209c2d

    public DBContext() {
        //@Students: You are allowed to edit user, pass, url variables to fit 
        //your system configuration
        //You can also add more methods for Database Interaction tasks. 
        //But we recommend you to do it in another class
        // For example : StudentDBContext extends DBContext , 
        //where StudentDBContext is located in dal package, 
        try {
            String user = "root";
            String pass = "123456";
            String server = "127.0.0.1:3306";
            String dbName = "testregister";
            String url = "jdbc:mysql://" + server + "/" + dbName;

            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        try {
            if (new DBContext().connection != null) {
                System.out.println("Connected");
            }
            else System.out.println("Not connected");
        } catch (Exception e) {
        }
    }
}
