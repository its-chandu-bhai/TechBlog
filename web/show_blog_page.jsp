<%-- 
    Document   : show_blog_page
    Created on : Dec 7, 2023, 7:57:46 PM
    Author     : Chandan Kumar
--%>

<%@page import="com.techBlog.dao.LikeDao"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.techBlog.dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.techBlog.entities.Categories"%>
<%@page import="com.techBlog.entities.Post"%>
<%@page import="com.techBlog.dao.PostDao"%>
<%@page import="com.techBlog.helper.ConnectionProvider"%>
<%@page import="com.techBlog.entities.User"%>
<%@page errorPage="error_page.jsp" %>

<%
    // use the scriptlet tag to get the use login or not
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }


%>

<%    int post_Id = Integer.parseInt(request.getParameter("post_id")); //taking the postId from the load_posts line no=48

    PostDao dao = new PostDao(ConnectionProvider.getConnection());
    Post p = dao.getPostBtPostId(post_Id);


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" >
        <title> <%= p.getpTitle()%> </title>
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

            .post-title{
                font-weight: 200;
                font-size: 30px;
            }
            .post-content{
                font-weight: 500;
                font-style: initial;
                font-size: 20px;
            }

            .post-user-info{
                /*font-weight: 30;*/
                font-style: oblique;
                font-size: 18px;
            }

            .post-date{
                font-style: italic;
                font-weight: bold;
            }
            .row-user{
                padding-top: 9px;
                border: 1px solid black;
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

    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v18.0" nonce="vNr4qany"></script>

</head>
<body>

    <!-- Starting navbar -->      
    <nav class="navbar navbar-expand-lg  ">
        <div class="container-fluid">
            <a class="navbar-brand text-black" href="index.jsp"> <span class="fa fa-drupal p-1 "></span> Tech Blog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-black" aria-current="page" href="courses.jsp"> <span class="fa fa-book p-1" ></span> Session</a>
                    </li>

                    <li class="nav-item dropdown ">
                        <a class="nav-link dropdown-toggle text-black" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <span class="	fa fa-caret-square-o-down text-black"></span> Courses
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

                <ul class="navbar-nav mr-right" >
                    <li class="nav-item ">
                        <a class="nav-link text-black  " href="#!"  data-bs-toggle="modal" data-bs-target="#profile-modal"    ><span class="fa fa-user-circle p-1 "></span><%= user.getName()%></a>
                    </li>

                    <li class="nav-item ">
                        <a class="nav-link text-black" href="LogoutServlet">  <span class="fa fa-user-plus p-1"></span>Logout</a>
                    </li>

                </ul>

            </div>
        </div>
    </nav>

    <!-- End of the navbar -->


    <!--Main content of the body-->

    <div class="container bg-dark-subtle">
        <div class="row my-4">
            <div class="col-md-6 offset-md-3">
                <div class="card">


                    <div class="card-header primary-background ">
                        <h4 class="post-title" > <%= p.getpTitle()%> </h4>
                    </div>

                    <div class="card-body">

                        <img src="blog_pics/<%= p.getpPic()%>" class="card-img-top" alt="error">


                        <div class="row my-3 row-user" >
                            <div class="col-md-7">
                                <% UserDao udao = new UserDao(ConnectionProvider.getConnection()); %>

                                <p class="post-user-info" > <a href="#"> <%= udao.getUserByUserId(p.getUserId()).getName()%>  </a> has been posted: </p>
                            </div>

                            <div class="col-md-5">
                                <p class="post-date"> <%= p.getpDate().toLocaleString()%> </p>
                            </div>

                        </div>


                        <p class="post-content" > <%= p.getpContent()%> </p>

                    </div>
                    <br/>

                    <div class="post-code">
                        <pre> <%= p.getpCode()%> </pre>
                    </div>

                    <div class="card-footer">
                        <div class="card-footer primary-background" >

                            <%
                                LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
                            %>

                            <a href="#" onclick="doLike(<%= p.getPid()%>,<%= user.getId()%>)" class="btn btn-outline-light m-2"> <i class="fa fa-thumbs-o-up" ></i> <span class="like-counter"> <%= ld.countLikeOnPost(p.getPid())%> </span> </a>                                
                            <a href="#" class="btn btn-outline-light"> <i class="fa fa-commenting-o" ></i> <span>20</span>  </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--End main content of the body-->



    <!-- Start of the profile modal -->

    <!-- Modal -->
    <div class="modal fade " id="profile-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
    <script src="/JS/myjs.js"></script>

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
                        if (data.trim() == 'done') {
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

</body>
</html>
