<%-- 
    Document   : masterClass
    Created on : Feb 25, 2024, 11:20:20 AM
    Author     : Chandan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <!--font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <style>
            *{
                margin: 0px;
                padding: 0px;
                box-sizing: border-box;
            }

            body{
                display: block;
            }

            .navbar-expand-md{
                background: navy;
            }

            .containers{
                background-color:  whitesmoke;
                padding-top: 50px;
                padding-bottom: 50px;

            }

            .row{
                background: #fff;
                border: 2px solid #eae5e5;
                border-radius: 10px;
            }

            .blog-img{
                margin: 15px auto;
                width: 100%;
                border: 5px solid greenyellow;
                border-radius: 10px;
                object-fit: cover;
                transition: transform 0.2s ease-in;
            }
            .blog-img:hover{
                cursor: pointer;
                transform: rotate(5deg);
            }
            
            img{
                width: 100%;
                border-radius: 7px;

            }

            .card-title h3 span {
                border-radius: 5px;
                padding: 5px;
                color: white;
                background-color: #151815ad;
                text-transform: uppercase;
                line-height: 50px;
            }

            .bolg-content{
                padding: 15px 15px 0px;
            }

            .fees{
                border: 3px solid green;
                padding: 7px;
                border-radius: 7px;
                background: lightgreen;
            }
        </style>
    </head>
    <body>

        <%@include file="normal_navbar.jsp" %>

        <div class="containers mt-2">
            <div class="container ">
                <div class="row mt- mb-4">
                    <div class="col-md-4 col-12 ">
                        <div class="blog-img">
                            <img src="blog_pics/javaMaster.jpeg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 col-12">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span> java master class </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> The Full Stack Java Development Course will help you start your career as a Java Developer and become a skilledUp certified web developer. It involves developing both the front-end and back-end components of a web application using Java technologies. It requires proficiency in Java programming, as well as knowledge of frameworks and tools for building user interfaces, handling server-side logic, and managing databases. </span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 5,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4 col-12">
                        <div class="blog-img">
                            <img src="blog_pics/pyMaster.jpg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 col-12">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span> python master class </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> The Full Stack Web Development Course will help you to start your career as a PHP Developer and become a skilledUp certified Web Developer. PHP is a widely used server-side scripting language for web development. It stands for Hypertext Preprocessor and is known for its simplicity and flexibility. With PHP, developers can create dynamic and interactive web applications that can seamlessly interact with databases, handle form submissions, and generate dynamic content.</span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 5,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4 col-12">
                        <div class="blog-img">
                            <img src="blog_pics/springMaster.jpeg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 col-12">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  springboot master class </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> Learn basic to advanced functions, formulas, data visualization, and dashboard design techniques. This course will teach students how to use pivot tables, audit and evaluate worksheet data, apply data tools, collaborate with others, and create and manage macros. </span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 5,000</b></h5>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>        
    </body>
</html>
