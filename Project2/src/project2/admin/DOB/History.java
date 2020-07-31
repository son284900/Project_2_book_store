/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;


/**
 *
 * @author son
 */
public class History {
    public static PreparedStatement pst = null;
    public static ResultSet rs =null;
    public static Connection cnn = ConnectDb.getConnection();
    public static void Insert(String name,String date){
        String sql ="insert into History (name,date_times) VALUES (?,?)";
        try {
            pst = cnn.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, date);
            pst.executeUpdate();
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify Error",2);
        }
    }
    
}
