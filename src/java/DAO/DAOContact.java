/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entity.contact;
import java.sql.PreparedStatement;
import Connect.DBConnect;

/**
 *
 * @author lenovo
 */
public class DAOContact extends DBConnect{
    //day la insert a category 
    public void insert(contact ct) {
        String sql = "INSERT INTO [dbo].[contact]\n"
                + "           ([name]\n"
                + "           ,[phone]\n"
                + "           ,[email]\n"
                + "           ,[message])\n"
                + "     VALUES(?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, ct.getName());
            st.setString(2, ct.getPhone());
            st.setString(3, ct.getEmail());
            st.setString(4, ct.getMessage());
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[contact]\n"
                + "      WHERE ContactId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
