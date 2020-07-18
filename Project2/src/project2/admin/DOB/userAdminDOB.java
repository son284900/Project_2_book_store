/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.admin.DOB;

import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import project2.admin.infofmation_admin.UserAdmin;
import java.sql.*;
/**
 *
 * @author son
 */
public class userAdminDOB {
    public List<UserAdmin> loginSusses(){
        List<UserAdmin> useradmin = new ArrayList<UserAdmin>();
        try {
            Connection conn = ConnectDb.getConnection();
            Statement statement  = conn.createStatement();
            String sql = "SELECT * FROM Admin";
            ResultSet rs = statement.executeQuery(sql);
            while(rs.next()){
                Integer idVal = rs.getInt(1);
                String userNameVal = rs.getString(2);
                String passVal = rs.getString(3);
                UserAdmin user_tmp = new UserAdmin();
                user_tmp.setId(idVal);
                user_tmp.setUserName(userNameVal);
                user_tmp.setPassword(passVal);
                useradmin.add(user_tmp);
            }
            statement.close();
        } catch (Exception e) {
        }
        return useradmin;
   
    }    
}
