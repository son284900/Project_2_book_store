/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;
import java.sql.*;
import javax.swing.*;
/**
 *
 * @author son
 */
public class Category {
    public static PreparedStatement pst = null;
    public static ResultSet rs =null;
    public static Connection cnn = ConnectDb.getConnection();
    public static void InsertCategory(String name){
        String sql ="insert into Category (Name) VALUES (?)";
        try {
            pst = cnn.prepareStatement(sql);
            pst.setString(1, name);
            pst.executeUpdate();
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify Instert Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify Error",2);
        }
    }
    public static void UpdateCategory(String id , String name){
        try {
            String sql = "UPDATE Category SET Name='"+name+"' WHERE ID='"+id+"'";
            pst = cnn.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Edit "+id+"  "+ name,"Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Edit "+id+"  "+ name,"Erroe false",2);
        }
        
    }
    public static void DeleteCategory(String id){
        String sql = "DELETE FROM Category WHERE ID='"+id+"'";
        try {
            pst=cnn.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Delete "+ id,"Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Delete "+ id,"False",2);
        }
    }
}
