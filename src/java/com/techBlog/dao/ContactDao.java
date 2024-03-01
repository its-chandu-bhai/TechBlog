/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.techBlog.dao;

import com.techBlog.entities.Contact;
import java.sql.*;

public class ContactDao {
    private  Connection con;
    
    public ContactDao(Connection con){
        this.con = con;
    }
    
    public boolean insert(Contact contact){
        boolean f = false;
        try{
            // preparedstatement
            String query = "insert into contact(name,email,phone,gender,faq) values(?,?,?,?,?)";
            
            // set the value of all attribute
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, contact.getName());
            pstmt.setString(2, contact.getEmail());
            pstmt.setString(3, contact.getPhone());
            pstmt.setString(4,contact.getGender());
            pstmt.setString(5,contact.getFaq());
            
            // execute query
            pstmt.executeUpdate();
            f = true;
            System.out.println(f);
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
