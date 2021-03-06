/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;
import project2.admin.infofmation_admin.ProductInformation;
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
   
    public static void UpdateProduct(String id , String name,String category,String images,String describes ,float price){
        try {
            String sql = "UPDATE Product SET name_product='"+name+"',category_name='"+category+"',images='"+images+"',describes='"+describes+"',price='"+price+"' WHERE id_product='"+id+"'";
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
    
    public ArrayList<ProductInformation> getData(){
        ArrayList<ProductInformation> list = new ArrayList<ProductInformation>();
        try {
            String sql = "select * from Product limit 3";
            pst = cnn.prepareStatement(sql);
            rs = pst.executeQuery();
            ProductInformation p;
            while(rs.next()){
                p = new ProductInformation(
                        rs.getString("id_product"),
                        rs.getString("name_product"),
                        rs.getString("category_name"),
                        rs.getBytes("images"),
                        rs.getString("describes"),
                        rs.getFloat("price"),
                        rs.getInt("quantity")
                        
                );
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
        
    }
    
        
    
    
    
}
