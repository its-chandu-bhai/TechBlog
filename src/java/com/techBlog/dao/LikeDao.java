/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techBlog.dao;

import java.sql.*;

public class LikeDao {

    Connection con;

    public LikeDao(Connection con) {
        this.con = con;
    }

    // this method is like method
    public boolean insertLike(int pId, int uId) {
        boolean f = false;
        try {
            String query = "insert into likes(pId,uId) values(?,?) ";

            PreparedStatement pstmt = con.prepareStatement(query);

            // set the value 
            pstmt.setInt(1, pId);
            pstmt.setInt(2, uId);
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    // this method is count method which show like on the post 
    public int countLikeOnPost(int pId) {
        int count = 0;
        String query = "select count(*) from likes where pId=?";
        try {
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setInt(1, pId);

            // we get no of counts of like so we would set in ResultSet 
            ResultSet rs = pstmt.executeQuery();

            // if next row are exist then count would be increased
            if (rs.next()) {
                count = rs.getInt("count(*)");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }

    public boolean isLikedByUser(int pId, int uId) {
        boolean f = false;

        try {
            String query = "select * from likes where pId = ? and uId = ? ";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setInt(1, pId);
            pstmt.setInt(2, uId);

            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean isDeleteByuser(int pId, int uId) {
        boolean f = false;
        try {
            String query = " delete from likes where pId=? and uId =?";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setInt(1, pId);
            pstmt.setInt(2, uId);
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
}
