/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techBlog.dao;

import com.techBlog.entities.Courses;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Chandan Kumar
 */
public class CoursesDao {

    private Connection con;

    public CoursesDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Courses> getAllCourses() {
        ArrayList<Courses> list = new ArrayList<>();
        try {
            String query = "select * from courses";
            Statement stmt = this.con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                int cId = rs.getInt("courseId");
                String name = rs.getString("name");
                
                Courses c = new Courses(cId,name);
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<Courses> getCourses(int idx) {
        ArrayList<Courses> list = new ArrayList<>();
        try {
            
      
            String query = "select * from webdevlop";
            Statement stmt = this.con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                int cId = rs.getInt("courseId");
                String name = rs.getString("name");
                
                Courses c = new Courses(cId,name);
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
