/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Connect.DBConnect;
import entity.EmailSub;
import entity.post;
import java.sql.PreparedStatement;

/**
 *
 * @author lenovo
 */
public class DAOPost extends DBConnect {

    //day la insert a category 
    public void insert(post c) {
        String sql = "INSERT INTO [dbo].[post] "
                + "           ([posttitle]"
                + "           ,[postcontent]"
                + "           ,[picture_url])"
                + "     VALUES ( ?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getPosttitle());
            st.setString(2, c.getPostcontent());
            st.setString(3, c.getPicture_url());
           
            st.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[post]\n"
                + "      WHERE postId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void update(post c) {
        String sql = "UPDATE [dbo].[post]\n"
                + "   SET [posttitle] = ? \n"
                + "      ,[postcontent] = ?\n"
                + "      ,[picture_url]=?\n"
                + " WHERE postId=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getPosttitle());
            st.setString(2, c.getPostcontent());
            st.setString(3, c.getPicture_url());
            st.setInt(4,c.getPostId());
            st.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
