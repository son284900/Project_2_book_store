/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.view;

import java.awt.Color;
import java.awt.event.KeyEvent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JButton;
import javax.swing.JOptionPane;

/**
 *
 * @author son
 */
public class FormLogin extends javax.swing.JFrame {

    private String val;
    int xMouse;
    int yMouse;

    /**
     * Creates new form FormLogin
     */
    public FormLogin() {
        initComponents();
        this.setLocationRelativeTo(null);

    }
//    public  void setColor(JButton b1){
//        b1.setForeground(new Color(255,102,102));
//    }
    public void resetColor(JButton bl1){
        bl1.setForeground(new Color(255,255,255));
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        Login = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        btnReset = new javax.swing.JButton();
        user_val = new javax.swing.JTextField();
        pass_val = new javax.swing.JPasswordField();
        btn_login = new javax.swing.JButton();
        txtError = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        btn_cancel1 = new javax.swing.JButton();
        txtRegister = new javax.swing.JLabel();
        lbImage = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                formMouseDragged(evt);
            }
        });

        Login.setBackground(new java.awt.Color(252, 245, 245));
        Login.setBorder(null);
        Login.setForeground(new java.awt.Color(14, 42, 42));
        Login.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        Login.setDoubleBuffered(false);
        Login.setFocusable(false);
        Login.setName("Login"); // NOI18N
        Login.setPreferredSize(new java.awt.Dimension(200, 100));
        Login.setRequestFocusEnabled(false);
        Login.setVerifyInputWhenFocusTarget(false);
        Login.setLayout(null);

        jLabel1.setForeground(new java.awt.Color(236, 23, 23));
        jLabel1.setText("User Name");
        Login.add(jLabel1);
        jLabel1.setBounds(20, 160, 120, 40);

        jLabel2.setForeground(new java.awt.Color(229, 14, 14));
        jLabel2.setText("Pass Word");
        Login.add(jLabel2);
        jLabel2.setBounds(20, 220, 120, 40);

        btnReset.setBackground(new java.awt.Color(244, 168, 10));
        btnReset.setText("Reset");
        btnReset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnResetActionPerformed(evt);
            }
        });
        Login.add(btnReset);
        btnReset.setBounds(320, 290, 81, 49);

        user_val.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                user_valActionPerformed(evt);
            }
        });
        Login.add(user_val);
        user_val.setBounds(150, 160, 430, 47);

        pass_val.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                pass_valActionPerformed(evt);
            }
        });
        pass_val.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                pass_valKeyPressed(evt);
            }
        });
        Login.add(pass_val);
        pass_val.setBounds(150, 220, 430, 47);

        btn_login.setBackground(new java.awt.Color(0, 204, 255));
        btn_login.setText("Login");
        btn_login.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_loginActionPerformed(evt);
            }
        });
        Login.add(btn_login);
        btn_login.setBounds(490, 290, 81, 49);

        txtError.setForeground(new java.awt.Color(234, 9, 9));
        Login.add(txtError);
        txtError.setBounds(120, 367, 430, 30);

        jLabel5.setFont(new java.awt.Font("DialogInput", 0, 36)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(233, 26, 26));
        jLabel5.setText(" Login");
        Login.add(jLabel5);
        jLabel5.setBounds(230, 60, 210, 100);

        btn_cancel1.setBackground(new java.awt.Color(255, 102, 102));
        btn_cancel1.setText("Cancel");
        btn_cancel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btn_cancel1MouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_cancel1MouseExited(evt);
            }
        });
        btn_cancel1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_cancel1ActionPerformed(evt);
            }
        });
        Login.add(btn_cancel1);
        btn_cancel1.setBounds(160, 290, 81, 49);

        txtRegister.setForeground(new java.awt.Color(17, 28, 254));
        txtRegister.setText("          Register");
        txtRegister.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                txtRegisterMouseClicked(evt);
            }
        });
        Login.add(txtRegister);
        txtRegister.setBounds(290, 340, 150, 30);

        lbImage.setIcon(new javax.swing.ImageIcon("/home/son/Desktop/Project_2_book_store/Project2/src/project2/image/benjamin-thomas-qDEvPXs9PwY-unsplash.jpg")); // NOI18N
        lbImage.setText("jLabel3");
        lbImage.addMouseMotionListener(new java.awt.event.MouseMotionAdapter() {
            public void mouseDragged(java.awt.event.MouseEvent evt) {
                lbImageMouseDragged(evt);
            }
            public void mouseMoved(java.awt.event.MouseEvent evt) {
                lbImageMouseMoved(evt);
            }
        });
        Login.add(lbImage);
        lbImage.setBounds(0, 0, 640, 400);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 640, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(Login, javax.swing.GroupLayout.PREFERRED_SIZE, 640, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(Login, javax.swing.GroupLayout.PREFERRED_SIZE, 400, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    public String getUser(){
        String val = user_val.getText();
        return val;
    }
    private void btnResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnResetActionPerformed
       this.user_val.setText("");
       this.pass_val.setText("");
    }//GEN-LAST:event_btnResetActionPerformed

    private void user_valActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_user_valActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_user_valActionPerformed

    private void pass_valActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_pass_valActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_pass_valActionPerformed
     public  void LoginSave(){
        String user = user_val.getText();
        char[] pass = pass_val.getPassword();
        String password = String.copyValueOf(pass);
        if(validate_login(user,password)){
            user_val.setText(user);
            pass_val.setText(password);
        }else{
            user_val.setText("aaaaa");
            pass_val.setText("acc");
         }
    }
    public static String userName;
    private void pass_valKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pass_valKeyPressed
        if(evt.getKeyCode() == KeyEvent.VK_ENTER){
                         if(user_val.getText().trim().length() == 0  || pass_val.getText().trim().length() == 0){
                            txtError.setText("Empty fields detected ! Please fill up all fields");
                            }else{
                                String user = user_val.getText();
                                char[] pass = pass_val.getPassword();
                                String password = String.copyValueOf(pass);
                                if(validate_login(user,password)){
                                        
                                        userName = this.user_val.getText();
                                        this.setVisible(false);
                                        HomePage adm = new HomePage();
                                        Category_F loginUserCt = new Category_F();
                                       
                                        adm.setVisible(true);
//                                        JOptionPane.showMessageDialog(null,"Wellcome to app  : " +this.getUser(),"Notify",1);
                                    }
                                else
                                   txtError.setText("Error login --- Check again user name and password");
                                   user_val.setText("");
                                   pass_val.setText("");
                                 }
                    }

    }//GEN-LAST:event_pass_valKeyPressed

    private void btn_loginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_loginActionPerformed
                if(user_val.getText().trim().length() == 0  || pass_val.getText().trim().length() == 0){
                        txtError.setText("Empty fields detected ! Please fill up all fields");
                    }else{
                        String user = user_val.getText();
                        char[] pass = pass_val.getPassword();
                        String password = String.copyValueOf(pass);
                        if(validate_login(user,password)){
                                userName = this.user_val.getText();
                                this.setVisible(false);
                                HomePage adm = new HomePage();
                                Category_F loginUserCt = new Category_F();

                                adm.setVisible(true);
                                JOptionPane.showMessageDialog(null,"Wellcome to app  : " +this.getUser(),"Notify",1);
                            }
                        else
                           txtError.setText("Error login --- Check again user name and password");
                           user_val.setText("");
                           pass_val.setText("");
                         }
    }//GEN-LAST:event_btn_loginActionPerformed

    private void btn_cancel1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_cancel1ActionPerformed
       System.exit(0);
    }//GEN-LAST:event_btn_cancel1ActionPerformed

    private void txtRegisterMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_txtRegisterMouseClicked

      this.setVisible(false);
      RegisterForm register = new RegisterForm();
      register.setVisible(true);
    }//GEN-LAST:event_txtRegisterMouseClicked

    private void btn_cancel1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_cancel1MouseEntered
        // TODO add your handling code here:
//        setColor(btnReset);
        
    }//GEN-LAST:event_btn_cancel1MouseEntered

    private void btn_cancel1MouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_cancel1MouseExited
        // TODO add your handling code here:
//        resetColor(btnReset);
    }//GEN-LAST:event_btn_cancel1MouseExited

    private void lbImageMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbImageMouseDragged
        // TODO add your handling code here:
        int x = evt.getXOnScreen();
        int y = evt.getYOnScreen();
        this.setLocation(x=xMouse, y=yMouse);
    }//GEN-LAST:event_lbImageMouseDragged

    private void lbImageMouseMoved(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbImageMouseMoved
        // TODO add your handling code here:
       
    }//GEN-LAST:event_lbImageMouseMoved

    private void formMouseDragged(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_formMouseDragged
        // TODO add your handling code here:
    }//GEN-LAST:event_formMouseDragged
     
    private boolean validate_login(String username, String password) {
       try{           
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project2?" + "user=newuser&password=123456789aA@");     
            PreparedStatement pst = conn.prepareStatement("Select * from Admin where username=? and password=?");
            pst.setString(1, username); 
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();                        
            if(rs.next())            
                return true;    
            else
                return false;            
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }       
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(FormLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(FormLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(FormLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(FormLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FormLogin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Login;
    private javax.swing.JButton btnReset;
    private javax.swing.JButton btn_cancel1;
    private javax.swing.JButton btn_login;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel lbImage;
    private javax.swing.JPasswordField pass_val;
    private javax.swing.JLabel txtError;
    private javax.swing.JLabel txtRegister;
    public javax.swing.JTextField user_val;
    // End of variables declaration//GEN-END:variables
}
