/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;
import java.sql.*;
import javax.swing.*;
import project2.DbUtils;
/**
 *
 * @author son
 */
public class Category {
    public static PreparedStatement pst = null;
    public static ResultSet rs =null;
    public static Connection cnn = ConnectDb.getConnection();
    public static void InsertCategory(String name){
        String sql ="insert into Category (name_category) VALUES (?)";
        try {
            pst = cnn.prepareStatement(sql);
            pst.setString(1, name);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify Instert Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify exist",1);
        }
    }
    public static void UpdateCategory(String id , String name){
        try {
            String sql = "UPDATE Category SET name_category='"+name+"' WHERE id_category='"+id+"'";
            pst = cnn.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Edit "+id+"  "+ name,"Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Edit "+id+"  "+ name,"Erroe false",1);
        }
        
    }
    public static void DeleteCategory(String id){
        String sql = "DELETE FROM Category WHERE id_category='"+id+"'";
        try {
            pst=cnn.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Delete "+ id,"Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Delete "+ id,"False",1);
        }
    }
}
