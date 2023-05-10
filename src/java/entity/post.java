/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author lenovo
 */
public class post {

    private int postId;
    private String posttitle, postcontent, picture_url;

    public post() {
    }

    public post(int postId, String posttitle, String postcontent, String picture_url) {
        this.postId = postId;
        this.posttitle = posttitle;
        this.postcontent = postcontent;
        this.picture_url = picture_url;
    }

    public post(String posttitle, String postcontent, String picture_url) {
        this.posttitle = posttitle;
        this.postcontent = postcontent;
        this.picture_url = picture_url;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPosttitle() {
        return posttitle;
    }

    public void setPosttitle(String posttitle) {
        this.posttitle = posttitle;
    }

    public String getPostcontent() {
        return postcontent;
    }

    public void setPostcontent(String postcontent) {
        this.postcontent = postcontent;
    }

    public String getPicture_url() {
        return picture_url;
    }

    public void setPicture_url(String picture_url) {
        this.picture_url = picture_url;
    }

    
}
