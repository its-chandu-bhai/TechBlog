<%-- 
    Document   : coursePage
    Created on : Feb 16, 2024, 9:30:02 PM
    Author     : Chandan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <!--font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    </head>
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
    <body>

        <%@include file="normal_navbar.jsp"%>


        <div class="containers mt-2">
            <div class="container">
                <div class="row mt-3 mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/dataSci.jpg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  full stack data science </span> </h3>
                            </div>

                            <div>
                                <p class="blog-desc">
                                    <span>This is Full Stack Data Science Certification with the Live Mentorship Program and One Year Internship provided by skilledUp Intelligence Private Limited, where you will learn real-time Projects along with requirements in data science, data analytics, big data, and machine learning operations.</span>
                                </p>
                            </div>

                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 30,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/dataAna.jpg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span> full stack data analytics </span> </h3>
                            </div>

                            <div>
                                <p class="blog-desc">
                                    <span>A comprehensive expertise in data analytics involves the skill set needed to analyze and extract meaningful insights from data, driving strategic decision-making within an organization. It covers proficiency in acquiring data, managing it, visualizing data, conducting statistical analysis, and utilizing business intelligence tools. A proficient data analyst can gather and clean data, construct robust analytical models, develop user-friendly dashboards and reports, and communicate findings effectively to stakeholders.</span>
                                </p>
                            </div>

                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 15,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/pyExpert.jpg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  python expert </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> Python is the most popular programming language these days, often used to build websites and software, automate tasks, and conduct data analysis. Python is a general-purpose language, meaning it can be used to create a variety of different programs and isn’t specialized for any specific problems. </span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 5,000</b></h5>
                        </div>
                    </div>
                </div>


                <div class="row mt- mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/mysqlExpert.jpeg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  mysql expert </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> MySQL Expert training provides in-depth instruction and hands-on experience in advanced MySQL concepts and practices. Participants learn about database optimization, performance tuning, security implementation, and advanced querying techniques. The training covers topics such as indexing, transactions, stored procedures, replication, and high availability. </span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 5,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/powerBiEx.jpeg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  power bi expert </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> We provide Power BI training, that lets you explore Microsoft Power BI concepts like Power BI Desktop layouts,&nbsp;</span><span style="color: #333333;">BI reports, dashboards, DAX commands, and functions. Our Power BI course follows a hands-on applied learning approach&nbsp;</span><span style="color: #333333;">to help you gain expertise in it. </span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 5,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/machineLearn.webp" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  machine learning expert </span> </h3>
                            </div>
                            <div>
                                <p class="blog-desc">
                                    <span> <span style="font-weight: 400;">The Machine Learning basics program is designed to offer a solid foundation &amp; work-ready skills for machine learning </span><span style="font-weight: 400;">engineers, data scientists, and artificial intelligence professionals. Gain hands-on experience in data preprocessing, </span><span style="font-weight: 400;">time series, text mining, and supervised and unsupervised learning. The program is ideal for anyone looking to learn </span><span style="font-weight: 400;">machine learning &amp; kick start their career.</span> </span>
                                </p>
                            </div>
                            <h5 style="line-height: 38px; margin-top: 30px;"><b class="fees">Rs. 10,000</b></h5>
                        </div>
                    </div>
                </div>

                <div class="row mt- mb-4">
                    <div class="col-md-4">
                        <div class="blog-img">
                            <img src="blog_pics/excelExpert.jpeg" alt="alt"/>
                        </div>
                    </div>
                    <div class="col-md-8 ">
                        <div class="bolg-content">
                            <div class="card-title">
                                <h3>  <span>  msexcel expert </span> </h3>
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

        <%@include  file="footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>