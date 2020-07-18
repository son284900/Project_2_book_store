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
public class UpdateTable {
    public static PreparedStatement pst = null;
    public static ResultSet rs =null;
    public static Connection cnn = ConnectDb.getConnection();
    public static void LoadData(String sql , JTable tb){
        try {
            pst = cnn.prepareStatement(sql);
            rs = pst.executeQuery();
            tb.setModel((DbUtils.resultSetToTableModel(rs)));
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e,"Notify Error",1);
        }
    }
    public static ResultSet ShowTextField(String sql)
    {
        try 
        {
            pst = cnn.prepareStatement(sql);
            rs = pst.executeQuery();
            
        } catch (Exception e)
        {
            JOptionPane.showMessageDialog(null, e,"Notify Error",1);
        }
        return null;
    }
}
