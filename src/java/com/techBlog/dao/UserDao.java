/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techBlog.dao;

import com.techBlog.entities.User;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    // method to insert user to data base:
    public boolean insert(User user) {
        boolean f = false;
        try {
            // user --> database
            String query = "insert into registration(name,email,password,gender,about) values(?,?,?,?,?)";

            // preparestatement
            PreparedStatement pstmt = this.con.prepareStatement(query);

            // set the value of all attributes
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());

            // execute query
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    // Get user by UserEmail and Password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from registration where Email=? and Password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set = pstmt.executeQuery();   // data goes into result set

            if (set.next()) {
                user = new User();

                // Data from db
                String name = set.getString("name");
                user.setName(name);   // set the name of the user object

                user.setId(set.getInt("Id"));
                user.setEmail(set.getString("Email"));
                user.setPassword(set.getString("Password"));
                user.setGender(set.getString("Gender"));
                user.setAbout(set.getString("About"));
                user.setDateTime(set.getTimestamp("RegDate"));
                user.setProfile(set.getString("profile"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    public boolean updateUser(User user) {
        boolean f = false;
        try {

            String query = "update registration set Email=?, Password=? , About=?,profile=? where Id=?";
            PreparedStatement pstmt = con.prepareStatement(query);

            // set the data...
            pstmt.setString(1, user.getEmail());
            pstmt.setString(2, user.getPassword());
            pstmt.setString(3, user.getAbout());
            pstmt.setString(4, user.getProfile());
            pstmt.setInt(5, user.getId());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByUserId(int postId) {
        User user = null;
        try {
            String query = "select * from registration where Id=?";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setInt(1, postId);
            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

                // Data from db
                String name = set.getString("name");
                user.setName(name);   // set the name of the user object

                user.setId(set.getInt("Id"));
                user.setEmail(set.getString("Email"));
                user.setPassword(set.getString("Password"));
                user.setGender(set.getString("Gender"));
                user.setAbout(set.getString("About"));
                user.setDateTime(set.getTimestamp("RegDate"));
                user.setProfile(set.getString("profile"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
