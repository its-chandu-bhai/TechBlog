<%-- 
    Document   : getCourse
    Created on : Feb 14, 2024, 10:42:15 PM
    Author     : Chandan Kumar
--%>
<%@page import="java.util.*"%>
<%@page import="com.techBlog.dao.CoursesDao" %>
<%@page import="com.techBlog.entities.Courses"%>
<%@page import="com.techBlog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <li class="nav-item dropdown ">
        <a class="nav-link  text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="fa fa-caret-square-o-down" ></span> Courses
        </a>
        <ul class="dropdown-menu text-white">
            <% 
                
                PostDao dao = new PostDao(ConnectionProvider.getConnection());

                int cid = Integer.parseInt(request.getParameter("cId"));
                
                CoursesDao cDao = new CoursesDao(ConnectionProvider.getConnection());
                
                ArrayList<Courses> list =  cDao.getCourses(cid);
                for(Courses c : list){
            %>

            <li><a  class="dropdown-item " href="#" > <%= c.getCourseName() %></a></li>

            <%
                }
            %>
        </ul>
    </li>
    
    
</body>
</html>
