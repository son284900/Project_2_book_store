/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project2.view;

import java.awt.Color;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.JOptionPane;
import project2.admin.DOB.ConnectDb;
import project2.admin.DOB.Register;


/**
 *
 * @author son
 */
public class RegisterForm extends javax.swing.JFrame {
    public static PreparedStatement pst = null;
    public static ResultSet rs =null;
    public static Connection cnn = ConnectDb.getConnection();
    /**
     * Creates new form RegisterForm
     */
    public RegisterForm() {
        initComponents();
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtUserName = new javax.swing.JTextField();
        btnRegister = new javax.swing.JButton();
        btnReset = new javax.swing.JButton();
        btnBack = new javax.swing.JButton();
        txtPass = new javax.swing.JPasswordField();
        txtAgainPass = new javax.swing.JPasswordField();
        txtError = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("DialogInput", 0, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(231, 12, 12));
        jLabel1.setText(" Register");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(230, 0, 103, 40);

        jLabel2.setText("User Name");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(28, 57, 82, 35);

        jLabel3.setText("Enter Pass");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(28, 121, 82, 34);

        jLabel4.setText("Again Pass");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(28, 186, 82, 35);

        txtUserName.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtUserNameActionPerformed(evt);
            }
        });
        jPanel1.add(txtUserName);
        txtUserName.setBounds(150, 52, 300, 45);

        btnRegister.setBackground(new java.awt.Color(85, 249, 22));
        btnRegister.setText("Register");
        btnRegister.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRegisterActionPerformed(evt);
            }
        });
        jPanel1.add(btnRegister);
        btnRegister.setBounds(440, 310, 103, 48);

        btnReset.setBackground(new java.awt.Color(229, 158, 16));
        btnReset.setText("Reset");
        btnReset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnResetActionPerformed(evt);
            }
        });
        jPanel1.add(btnReset);
        btnReset.setBounds(240, 310, 99, 48);

        btnBack.setBackground(new java.awt.Color(21, 155, 229));
        btnBack.setText("Back");
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });
        jPanel1.add(btnBack);
        btnBack.setBounds(40, 310, 98, 46);
        jPanel1.add(txtPass);
        txtPass.setBounds(150, 115, 300, 46);
        jPanel1.add(txtAgainPass);
        txtAgainPass.setBounds(150, 179, 300, 48);
        jPanel1.add(txtError);
        txtError.setBounds(170, 260, 260, 40);

        jLabel5.setIcon(new javax.swing.ImageIcon("/home/son/Desktop/Project_2_book_store/Project2/src/project2/image/melchsee-5430792_640.jpg")); // NOI18N
        jLabel5.setText("jLabel5");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(0, 0, 570, 360);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 572, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 360, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtUserNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtUserNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtUserNameActionPerformed
  
    private void btnRegisterActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRegisterActionPerformed
         String user = txtUserName.getText().trim();
         char[] pass = txtPass.getPassword();
         char[] passAgain = txtAgainPass.getPassword();
         String password = String.copyValueOf(pass);
         String passwordAgain = String.copyValueOf(passAgain);
        if((user.length() == 0) || (password.length() == 0) || (passwordAgain.length() == 0)){
            txtError.setText("Enter dont empty ");
            this.Reset();
        }else{
             
                 String regex="^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$";
                 String sql = "Select username from Admin where username ='"+user+"'";
                 Pattern pattern = Pattern.compile(regex);
                 Matcher m = pattern.matcher(password);
                 boolean b = m.matches();
                 try {
                        pst =cnn.prepareStatement(sql);
                        rs = pst.executeQuery();
                        if(rs.next())
                        {
                            txtError.setText("User name duplicate");
                            txtError.setForeground(Color.red);
                            this.Reset();
                        }else
                        {
                              if(password.equals(passwordAgain) == false || b != true)
                              {
                                  txtError.setText("The password must be in the correct format");
                                  txtError.setForeground(Color.red);
                                  this.Reset();
                              }
                              else
                              {
                                  txtError.setText("Insert susses !!!");
                                  txtError.setForeground(Color.green);
                                  Register.Insert(user, password);
                              }

                        }
                } catch (Exception e) {
                    txtError.setText("Error");
                    this.Reset();
                }
             
                
            
        }
    }//GEN-LAST:event_btnRegisterActionPerformed
    public void Reset(){
        this.txtUserName.setText("");
        this.txtPass.setText("");
        this.txtAgainPass.setText("");
    }
    private void btnResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnResetActionPerformed
        this.Reset();
    }//GEN-LAST:event_btnResetActionPerformed

    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
       this.setVisible(false);
       FormLogin login = new FormLogin();
       login.setVisible(true);
    }//GEN-LAST:event_btnBackActionPerformed

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
            java.util.logging.Logger.getLogger(RegisterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(RegisterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(RegisterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(RegisterForm.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RegisterForm().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBack;
    private javax.swing.JButton btnRegister;
    private javax.swing.JButton btnReset;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField txtAgainPass;
    private javax.swing.JLabel txtError;
    private javax.swing.JPasswordField txtPass;
    private javax.swing.JTextField txtUserName;
    // End of variables declaration//GEN-END:variables
}