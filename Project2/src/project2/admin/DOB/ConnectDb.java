/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author son
 */
public class ConnectDb {
   private static Connection connection = null;
   public static Connection getConnection(){
        if(connection != null ){
            return connection;
        }else{
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project2" , "newuser" , "123456789aA@");
            } catch (Exception ex) {
                Logger.getLogger(ConnectDb.class.getName()).log(Level.SEVERE, null, ex);
            }
            return connection;
        }
    }
    
}
