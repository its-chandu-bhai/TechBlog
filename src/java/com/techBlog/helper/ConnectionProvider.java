package com.techBlog.helper;

import java.sql.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            
            // if connection is null then enter this condition otherwise not
            if (con == null) {
                // Driver load 
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Creating Connection
                String url = "jdbc:mysql://localhost:3306/techblog";
                String username = "root";
                String Password = "Chandan";
                con = DriverManager.getConnection(url, username, Password);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
