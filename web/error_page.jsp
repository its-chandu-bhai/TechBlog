<%-- 
    Document   : error_page
    Created on : Nov 19, 2023, 7:16:00 PM
    Author     : Chandan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page!</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <!--font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <style>
            .banner-style{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 64%, 69% 94%, 27% 98%, 35% 69%, 0 0);clip-path: polygon(0% 0%, 0% 100%, 45% 87%, 25% 25%, 75% 25%, 100% 75%, 1% 100%, 86% 88%, 100% 100%, 100% 0%);clip-path: polygon(20% 0%, 80% 0%, 100% 0, 100% 94%, 72% 87%, 38% 95%, 0 89%, 0 0);
            }
        </style>
    </head>
    <body>
        <div class="container text-center">
            <img src="Images/img5.png" class="img-fluid" style="color:red" />
            <h3 class="display-3" >Sorry ! Something went wrong...</h3>
            <%--<%= //  exception.printStackTrace()    // for checking  %>--%> 
            <%= exception %>
            <br/>
            <a href="index.jsp" class="btn btn-outline-danger mt-3" >HOME</a>
        </div>        
    </body>
</html>
 