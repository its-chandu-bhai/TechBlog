<%-- 
    Document   : MyPosts
    Created on : Feb 7, 2024, 8:18:10 AM
    Author     : Chandan Kumar
--%>

<%@page import="com.techBlog.entities.User"%>
<%@page import="com.techBlog.dao.LikeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.techBlog.entities.Post"%>
<%@page import="com.techBlog.helper.ConnectionProvider"%>
<%@page import="com.techBlog.dao.PostDao"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <!--font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <!--sweetAlert css files-->
        <link rel="stylesheet" type="text/css" href="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.css">
        <style>
            .banner-style{
                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 88%, 81% 93%, 50% 100%, 20% 90%, 0 93%, 0% 35%, 0 0);
            }
            body{
                /*                background: url(Images/bg-img.jpg);
                                background-size: cover;
                                background-attachment: fixed;*/
 
               /*background: #686868;*/
            }

            .table{
                /*background-color: red;*/
            }

            img:hover{
                cursor: pointer;
            }
            
            .card{
                width: 400px;
            }
        </style>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("currentUser");
            PostDao dao = new PostDao(ConnectionProvider.getConnection());
            int uId = Integer.parseInt(request.getParameter("userId"));  // taking the userId from profile.jsp page line no=88
        
        %>
        <!--  profile image start -->     
        <div class="container text-center text-white">
            <div class="col-md-4 offset-md-4 mt-2">
                <img onclick="changePic()" class="rounded d-flex m-auto" src="Pics/<%= user.getProfile() %>" style="width:30%; cursor: pointer" alt="alt"/>
                <%= user.getName() %>
            </div>
        </div>
        <div class="bg-body-tertiary">    
            <div class="row m-2 justify-content-center ">

                <%
                    List<Post>posts = dao.getPostsByUserId(uId);
                    for(Post p : posts){
                %>
                <!--  List of my post  start -->
                <div class="card mt-2 mx-2">
                    <img src="blog_pics/<%= p.getpPic() %>" style="width:100%" alt="alt"/>
                    <div class="card-body">
                        <%= p.getpTitle() %>
                    </div>
                </div>
                <%
                    }
                %>

                <!--  List of my post end  -->

            </div>
        </div>

        <script>
            $(document).ready(function e){
                
            }
        </script>
    </body>
</html>
