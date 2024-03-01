<%@page import="java.util.*"%>
<%@page import="com.techBlog.dao.CoursesDao" %>
<%@page import="com.techBlog.entities.Courses"%>
<%@page import="com.techBlog.helper.ConnectionProvider"%>

<style>

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

<nav class="navbar navbar-expand-lg text-black  mb-3 ">
    <div class="container-fluid">
        <a class="navbar-brand text-black fs-4" href="index.jsp"> <span class="fa fa-drupal" ></span> Tech Blog</a>
        <button class="navbar-toggler bg-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon text-black"></span>
        </button>
        <div class="collapse navbar-collapse  " id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active text-black" aria-current="page" href="courses.jsp"> <span class="fa fa-book"></span>Session</a>
                </li>

                <li class="nav-item dropdown ">
                    <a class="nav-link  text-black" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="fa fa-caret-square-o-down" ></span> Courses
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
                        <li><a class="dropdown-item" href="masterClass.jsp">Master Class</a>
                            <ul class="submenu dropdown-menu text-uppercase">
                                <a class="dropdown-item" href="#">java master class</a>
                                <a class="dropdown-item" href="#">python master class</a>
                                <a class="dropdown-item" href="#">springboot master class</a>
                            </ul>
                        </li>
                        <li><a class="dropdown-item" href="#">Workshop</a>
                            <ul class="submenu dropdown-menu"></ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item ">
                    <a class="nav-link text-black " href="contact.jsp">  <span class="fa fa-phone-square "></span> Contact</a>
                </li>

                <li class="nav-item ">
                    <a class="nav-link text-black" href="login_page.jsp">  <span class="fa fa-user-circle-o "></span> Sign In</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link text-black" href="register_page.jsp">  <span class="fa fa-user-plus "></span> Sign Up</a>
                </li>
            </ul>
            <form class="d-flex  text-black" role="search">
                <a href="profile.jsp" class="nav-link text-secondary fs-5 pt-1 px-2 text-black"  href="#" ><span class="fa fa-user-circle" ></span> </a>
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light bg-dark-subtle text-black" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>