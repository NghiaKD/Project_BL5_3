/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Connect.DBConnect;
import entity.EmailSub;
import java.sql.PreparedStatement;

/**
 *
 * @author lenovo
 */
public class DAOEmailSub extends DBConnect{
    //day la insert a category 
    public void insert(EmailSub c) {
        String sql = "INSERT INTO [dbo].[email_sub]\n"
                + "           ([sub_name]\n"
                + "           ,[sub_email])\n"
                + "     VALUES(?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getSub_name());
            st.setString(2, c.getSub_email());

            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
