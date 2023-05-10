/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author lenovo
 */
public class EmailSub {
    private  int sub_id;
    private String sub_name;
    private String sub_email;

    public EmailSub() {
    }

    public EmailSub(String sub_name, String sub_email) {
        this.sub_name = sub_name;
        this.sub_email = sub_email;
    }

    public EmailSub(int sub_id, String sub_name, String sub_email) {
        this.sub_id = sub_id;
        this.sub_name = sub_name;
        this.sub_email = sub_email;
    }

    public int getSub_id() {
        return sub_id;
    }

    public void setSub_id(int sub_id) {
        this.sub_id = sub_id;
    }

    public String getSub_name() {
        return sub_name;
    }

    public void setSub_name(String sub_name) {
        this.sub_name = sub_name;
    }

    public String getSub_email() {
        return sub_email;
    }

    public void setSub_email(String sub_email) {
        this.sub_email = sub_email;
    }
    
    
}
