package com.techBlog.dao;

import com.techBlog.entities.Categories;
import com.techBlog.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostDao {

    Connection con;

    public PostDao() {
    }

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Categories> getCategories() {
        ArrayList<Categories> list = new ArrayList<>();

        try {

            String query = "select * from categories";
            Statement stmt = this.con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                int cid = rs.getInt("cId");
                String name = rs.getString("name");
                String description = rs.getString("description");

                Categories c = new Categories(cid, name, description);
                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean savePost(Post p) {
        boolean f = false;

        try {

            String query = "insert into posts(pTitle,pContent,pCode,pPic,cId,userId) values(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);

            // insert the data by post button
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2, p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4, p.getpPic());
            pstmt.setInt(5, p.getCatId());
            pstmt.setInt(6, p.getUserId());

            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
    
    public boolean changePic(){
        boolean f = false;
        try{
            String query = "insert into posts(pPic) valu";
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }

    public List<Post> getAllPosts() {

        List<Post> allPost = new ArrayList<>();
        // fetch all the post
        try {
            String query = "select * from posts order by pId desc";
            PreparedStatement pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                int pId = rs.getInt("pId");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                Timestamp pDate = rs.getTimestamp("pDate");
                int catId = rs.getInt("cId");
                int userId = rs.getInt("userId");
                String pPic = rs.getString("pPic");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId);

                allPost.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return allPost;
    }

    public List<Post> getPostByCatId(int catId) {

        List<Post> catPost = new ArrayList<>();
        // fetch all the post
        try {
            String query = "select * from posts where cId=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setInt(1, catId);

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                int pId = rs.getInt("pId");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                Timestamp pDate = rs.getTimestamp("pDate");
                int userId = rs.getInt("userId");
                String pPic = rs.getString("pPic");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId);

                catPost.add(post);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return catPost;
    }

    public Post getPostBtPostId(int postId) {
        String query = "select * from posts where pId =?";
        Post post = null;
        try {
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setInt(1, postId);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                int pId = rs.getInt("pId");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                Timestamp pDate = rs.getTimestamp("pDate");
                int userId = rs.getInt("userId");
                String pPic = rs.getString("pPic");
                int catId = rs.getInt("cId");

                post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return post;
    }

    public List<Post> getPostsByUserId(int userId) {
        List<Post> userPost = new ArrayList<>();
        // fetch all the post
        try {
            String query = "select * from posts where userId=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setInt(1, userId);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                int pId = rs.getInt("pId");
                String pTitle = rs.getString("pTitle");
                String pContent = rs.getString("pContent");
                String pCode = rs.getString("pCode");
                Timestamp pDate = rs.getTimestamp("pDate");
                String pPic = rs.getString("pPic");
                int catId = rs.getInt("cId");

                Post post = new Post(pId, pTitle, pContent, pCode, pPic, pDate, catId, userId);
                userPost.add(post);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return userPost;
    }

}
