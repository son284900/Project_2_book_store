/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;
import java.sql.*;
import java.util.zip.InflaterInputStream;
import javax.swing.*;
import project2.DbUtils;
/**
 *
 * @author son
 */
public class Product {
    public static PreparedStatement pst = null;
    public static ResultSet rs =null;
    public static Connection cnn = ConnectDb.getConnection();
    public static void InsertProduct(String name,String images,String describes ,float price){
        String sql ="insert into Product (name_product,images,describes,price) VALUES (?,?,?,?)";
        try {
            pst = cnn.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, images);
            pst.setString(3, describes);
            pst.setFloat(4, price);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify Instert Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Add "+name,"Notify exist",1);
        }
    }
    public static void UpdateProduct(String id , String name,String images,String describes ,float price){
        try {
            String sql = "UPDATE Product SET name_product='"+name+"',images='"+images+"',describes='"+describes+"',price='"+price+"' WHERE id_product='"+id+"'";
            pst = cnn.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Edit "+id+"  "+ name,"Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Edit "+id+"  "+ name,"Erroe false",1);
        }
        
    }
    public static void DeleteProduct(String id){
        String sql = "DELETE FROM Product WHERE id_product='"+id+"'";
        try {
            pst=cnn.prepareStatement(sql);
            pst.execute();
            JOptionPane.showMessageDialog(null,"Delete "+ id,"Susses",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"Delete "+ id,"False",1);
        }
    }
    
}
