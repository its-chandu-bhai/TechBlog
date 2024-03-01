<%-- 
    Document   : profile
    Created on : Nov 19, 2023, 9:04:09 PM
    Author     : Chandan Kumar
--%>

<%@page import="com.techBlog.entities.Categories"%>
<%@page import="java.util.*"%>
<%@page import="com.techBlog.helper.ConnectionProvider"%>
<%@page import="com.techBlog.dao.PostDao"%>
<%@page import="com.techBlog.entities.Message"%>
<%@page import="com.techBlog.entities.User"%>
<%@page import="com.techBlog.dao.CoursesDao" %>
<%@page import="com.techBlog.entities.Courses"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    // use the scriptlet tag to get the use login or not
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
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
            }

            .dropdown-menu{
                position: relative;
            }
            .dropdown-menu li:hover .submenu {
                position: absolute;
                display: block;
                left: 163px;
                /*top: 0px;*/
            }

        </style>
    </head>
    <body> 
        <!-- Starting navbar -->      
        <nav class="navbar navbar-expand-lg text-black  ">
            <div class="container-fluid">
                <a class="navbar-brand text-black" href="index.jsp"> <span class="fa fa-drupal p-1 "></span> Tech Blog</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon text-black"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-black" aria-current="page" href="courses.jsp"> <span class="fa fa-book p-1" ></span> Session</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link  text-black" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <span class="fa fa-caret-square-o-down text-black"></span> Courses
                            </a>
                            <ul class="dropdown-menu text-black ">
                                <li><a class="dropdown-item" href="dataScience.jsp">Data Science</a>
                                    <ul class="submenu dropdown-menu text-uppercase">
                                        <a class="dropdown-item" href="#">Data Analytics</a>
                                        <a class="dropdown-item" href="#">full stack data science</a>
                                        <a class="dropdown-item" href="#">python expert</a>
                                        <a class="dropdown-item" href="#">mysql expert</a>
                                        <a class="dropdown-item" href="#">power bi expert</a>
                                        <a class="dropdown-item" href="#">machine learning expert</a>
                                        <a class="dropdown-item" href="#">ms excel expert</a>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="webDevelopment.jsp">Web Development</a>
                                    <ul class="submenu dropdown-menu text-uppercase">
                                        <a class="dropdown-item" href="#">full stack java development</a>
                                        <a class="dropdown-item" href="#">full stack php development</a>
                                        <a class="dropdown-item" href="#">python development</a>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="#">Master Class</a>
                                    <ul class="submenu dropdown-menu"></ul>
                                </li>
                                <li><a class="dropdown-item" href="#">Workshop</a>
                                    <ul class="submenu dropdown-menu"></ul>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link text-black " href="contact.jsp">  <span class="fa fa-phone-square p-1"></span>Contact</a>
                        </li>

                        <li class="nav-item ">
                            <label for="post"  />
                            <a class="nav-link text-black " id="post" href="#" data-bs-toggle="modal" data-bs-target="#do-post-modal">  <span class="fa fa-camera p-1"></span>Post</a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link text-black " href="MyPosts.jsp?userId=<%= user.getId() %>">  <span class="fa fa-image p-1"></span>Myposts</a>
                        </li>

                    </ul>

                    <ul class="navbar-nav md-right" >
                        <li class="nav-item ">
                            <a class="nav-link text-black  " href="#!"  data-bs-toggle="modal" data-bs-target="#profile-modal"><span class="fa fa-user-circle p-1 "></span><%= user.getName()%></a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link text-black" href="LogoutServlet">  <span class="fa fa-user-plus p-1"></span>Logout</a>
                        </li>

                    </ul>

                </div>
            </div>
        </nav>

        <!-- End of the navbar -->

        <!-- get the msg   -->
        <%
            Message msg = (Message) session.getAttribute("msg");
            if (msg != null) {
        %>

        <div class="alert <%= msg.getCssClass()%>" role="alert">
            <%= msg.getContent()%>
        </div>

        <%
                session.removeAttribute("msg");
            }
        %>

        <!-- main body of the page -->
        <main class="bg-dark-subtle">
            <div class="container" >
                <div class="row mt-4">

                    <!--first column-->
                    <div class="col-md-4 bg-body-tertiary">
                        <div class="list-group">
                            <a href="#" onclick="getPosts(0, this)" class=" c-link list-group-item list-group-item-action active" aria-current="true">
                                All Posts
                            </a>

                            <!-- get all the Categories-->
                            <%
                                PostDao dao = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Categories> al = dao.getCategories();

                                for (Categories cc : al) {

                            %>          

                            <a href="#" onclick="getPosts(<%= cc.getCid()%>, this)" class="c-link list-group-item list-group-item-action"> <%= cc.getName()%></a>

                            <%
                                }
                            %>
                        </div>
                    </div>

                    <!--Second column-->
                    <div class="col-md-8 bg-body-secondary">
                        <!--all posts-->
                        <div class="container text-center" id="loader">
                            <i class="fa fa-refresh fa-4x fa-spin" > </i>
                            <h3 class="mt-2">Loading...</h3>
                        </div>

                        <div class="container-fluid text-black" id="post-container">

                        </div>
                    </div>

                </div>
            </div>
        </main>

        <!-- End main body of the page -->


        <!-- Start of the profile modal -->

        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary-background text-black text-uppercase">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Tech Blog</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center" >
                            <img src="Pics/<%= user.getProfile()%>"  style="width:100px" />
                            <h3 class="modal-title fs-5 mt-1 " id="exampleModalLabel"><%= user.getName()%> </h3>

                            <!-- Details -->
                            <div id="profileDetails">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th scope="row"> ID: </th>
                                            <td> <%= user.getId()%> </td>
                                        </tr>

                                        <tr>
                                            <th scope="row"> Email: </th>
                                            <td> <%= user.getEmail()%> </td>
                                        </tr>

                                        <tr>
                                            <th scope="row"> Gender: </th>
                                            <td> <%= user.getGender()%> </td>
                                        </tr>

                                        <tr>
                                            <th scope="row"> Status: </th>
                                            <td> <%= user.getAbout()%> </td>
                                        </tr>

                                        <tr>
                                            <th scope="row"> Registered on: </th>
                                            <td> <%= user.getDateTime().toString()%> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <!-- Editing the Profile -->
                            <div id="profileEdit" style="display: none;" >
                                <h3 class="mt-2" > Please edit carefully </h3>
                                <form action="EditServlet" method="post" enctype="multipart/form-data" >
                                    <table class="table" >
                                        <tr>
                                            <td> ID: </td>
                                            <td> <%= user.getId()%> </td>
                                        </tr>

                                        <tr>
                                            <td> Email: </td>
                                            <td> <input class="form-control" name="user_email" type="email" value="<%= user.getEmail()%>" /></td>
                                        </tr>

                                        <tr>
                                            <td> Password: </td>
                                            <td> <input class="form-control" name="user_password" type="password" value="<%= user.getPassword()%>" /></td>
                                        </tr>

                                        <tr>
                                            <td> About: </td>
                                            <td> 
                                                <textarea class="form-control" name="user_about" rows="3" ><%= user.getAbout()%>
                                                </textarea>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td> New Profile: </td>
                                            <td> <input name="image" class="form-control" type="file"/></td>
                                        </tr>
                                    </table>

                                    <div class="container text-center text-uppercase" >
                                        <button type="submit" class="btn btn-outline-primary" >save</button>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button id="edit-profile-btn" type="button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- End of the profile modal -->

        <!-- Starting of the post modal -->

        <div class="modal fade" id="do-post-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Provide post details...</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form  id="add-post-form" action="addPostServlet" method="post">

                            <div class="form-group" >
                                <select class="form-control" name="cid" >
                                    <option selected disabled>---Select Catagories---</option>

                                    <%
                                        PostDao postDao = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Categories> list = postDao.getCategories();
                                        for (Categories c : list) {
                                    %>

                                    <option value="<%= c.getCid()%>" > <%= c.getName()%> </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <br/>
                            <div class="form-group">
                                <input name="pTitle" class="form-control" type="text" placeholder="Enter Post Title:" />
                            </div>
                            <br/>
                            <div class="form-group">
                                <textarea name="pContent" class="form-control" placeholder="Enter your Content:" ></textarea>
                            </div>
                            <br/>
                            <div class="form-group">
                                <textarea name="pCode" class="form-control" placeholder="Enter your Code ( If Any ):" ></textarea>
                            </div>
                            <br/>
                            <div class="form-group" >
                                <!--<label>Select your img...</label> <br/>-->
                                <input type="file" name="pic" />
                            </div>

                            <div class="container text-center pt-1"  >
                                <button type="submit" class="btn btn-outline-primary" >Post</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Ending of the post modal -->


        <!--Script start -->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script> 
        <script src="https://common.olemiss.edu/_js/sweet-alert/sweet-alert.min.js"></script>   <!--  sweetalert msg   -->
        <script src="JS/myjs.js" type="text/javascript"></script>
        <!--Script end -->
        <script>
                                $(document).ready(function () {
                                    $('#edit-profile-btn').click(function () {
//                    alert("btn clicked")
                                        let editStatus = false;

                                        if (editStatus === false) {
                                            $('#profileDetails').hide();
                                            $('#profileEdit').show();
                                            $(this).text("Back");
                                            editStatus = true;
                                        } else {
                                            $('#profileDetails').show();
                                            $('#profileEdit').hide();
                                            $(this).text("Edit");
                                            editStatus = false;
                                        }
                                    });
                                });
        </script>

        <!--now add post js-->
        <script>
            $(document).ready(function (e) {
//                alert("document loadedd...");
                $("#add-post-form").on('submit', function (event) {
//                    // this code gets called when form is submitted...
                    event.preventDefault();
//                    console.log("you have clicked on submit...");
//                    
                    let form = new FormData(this);
//
//                    // now requesting to the server by ajax
                    $.ajax({
                        url: "addPostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            // success...
                            console.log(data);
                            if (data.trim() === 'done') {
                                swal("Good job!", "Post Successfully...", "success");

                            } else {
                                swal("Error!", "Something went wrong...!", "error");
                            }
//                            $("#add-post-form").hide();
                        },

                        error: function (jqXHR, textStatus, errorThrown) {
                            // error
                            console.log(jqXHR);
                            swal("Error!", "Error exception!", "error");
                        },

                        processData: false,
                        contentType: false
                    })
                })
            })
        </script>

        <!-- loading post using ajax -->
        <script>
            function getPosts(catId, temp) {

                // this 2 lines execute before executing the getPosts() method 
                $("#loader").show();
                $("#post-container").hide();
                $(".c-link").removeClass('active');
//                console.log("done...");

                $.ajax({
                    url: "load_posts.jsp",
                    data: {cId: catId},
                    success: function (data, textStatus, jqXHR) {
//                        console.log("Hello world how are you?")
                        console.log(data);
                        $("#loader").hide();
                        $("#post-container").show();
                        $('#post-container').html(data);
                        $(temp).addClass('active');
                    }
                })
            }

            $(document).ready(function (e) {
                let alpostRef = $('.c-link')[0]
                getPosts(0, alpostRef)
            })

        </script>
    </body>
</html>
