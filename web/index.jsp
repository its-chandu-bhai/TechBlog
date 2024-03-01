<%-- 
    Document   : index
    Created on : Nov 15, 2023, 6:51:13 PM
    Author     : Chandan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.techBlog.helper.ConnectionProvider"%>
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
        <style>
            .bi{
                /*                background-color: white;
                                background-image: url("blog_pics/img3.png");
                                background-attachment: fixed;
                                background-repeat: no-repeat;
                                background-size: cover;*/
            }

            .cont{
                background: whitesmoke;
            }

            .row{
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                /*gap: 2px;*/
                padding-bottom: 12px;
            }

            .card{
                width: 100%;
                height: auto;
                overflow: hidden;
                transition: transform 0.2s ease-out;
            }

            .card:hover{
                box-shadow: 0px 0px 20px greenyellow;
                cursor: pointer;
                transform: translateY(-20px);
            }


        </style>
    </head>
    <body class="bi" onload="myFunction();shows()" >
        <!--  <%
            // We are checking whether the connection established or not
            Connection con = ConnectionProvider.getConnection();
        %>
        <h1> <%= con%> </h1>-->

        <!-- navbar -->

        <%@include file="normal_navbar.jsp" %>

        <div class="cont">
            <!-- Banner -->
            <div class=" container-fluid p-0 m-0 text-black">
                <div class="jumbotron text-center height">
                    <h2 class="display-3" >Welcome To Tech Blog</h2>
                    <div class="container lh-base justify text-black">
                        <p id="demo"></p>
                        <button class="text-black btn btn-outline-light postition-relative mb-3 " > <span class=" fa fa-user-plus btn-base " /> Starts! its_free </button>
                        <a href="login_page.jsp" class="text-black btn btn-outline-light btn-base postition-relative mb-3 " ><span class=" fa fa-user-circle  fa-spin"></span> Sign In </a>
                    </div>
                </div>
            </div>

            <!-- Cards -->


            <div id="CARD" class="container mt-4  justify">
                <!-- 1st row -->
                <div class="row">
                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/java1.png" width="100%" height="220px alt="error">
                                <h5 class="card-title ">Java Programing Language</h5>
                                <p id="r1" class="display btn btn-outline-secondary m-1 text-center">Read about it...</p>
                                <p id="p1" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body justify-content-center align-items-center">
                                <img src="blog_pics/python.png" width="100%" height="220px alt="error">
                                <h5 class="card-title">Pthon Programing Language</h5>
                                <p id="r2" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p2" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/mysql.png" width="100%" height="220px alt="error">
                                <h5 class="card-title">MySQL Data Base</h5>
                                <p id="r3" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p3" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>                
                </div>

                <!-- 2nd row -->
                <div class="row pb-3">
                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/flutter.jpg" width="100%" height="220px" alt="error">
                                <h5 class="card-title">Flutter Framework</h5>
                                <p id="r4" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p4" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>
                    <div  class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/aws.jpeg" width="100%" height="220px" alt="error">
                                <h5 class="card-title">Learn AWS</h5>
                                <p id="r5" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p5" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/ai.jpg" width="100%" height="220px" alt="error">
                                <h5 class="card-title">Learn AI</h5>
                                <p id="r6" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p6" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 3nd row -->
                <div class="row pb-3">
                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/spring2.png" width="100%" height="220px alt="error">
                                <h5 class="card-title">Spring Framework</h5>
                                <p id="r7" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p7" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>
                    <div  class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/docker.png" width="100%" height="220px alt="error">
                                <h5 class="card-title">Docker</h5>
                                <p id="r8" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p8" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 p-2" >
                        <div class="card">
                            <div class="card-body">
                                <img src="blog_pics/cpp.jpg" width="100%" height="220px" alt="error">
                                <h5 class="card-title">Learn C++</h5>
                                <p id="r9" class="display btn btn-outline-secondary m-1">Read about it...</p>
                                <p id="p9" class="card-text"> Some quick example text to build on the card title and make up the bulk of the card's content. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--  ---------  Footer--------  -->
        <div class="bg-black">
            <footer class=" footer py-3 mt-2 fs-5 text-white">
                <ul class="nav justify-content-center border-bottom pb-3 mb-2">
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Home</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Features</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-white">About</a></li>
                </ul>
                <p class="text-center ">© 2023 Company, Inc</p>
            </footer>
        </div>


        <!-- Java Scripts -->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script> 

        <script src="JS/myjs.js" type="text/javascript"></script>
        <script>

        var txt = "Welcome to technical blog, world of the technology.In this technological world, you cannot deny that computers are everywhere and have almost become a requirement for every business. It would be best if you had computers to help you reach out to customers, to help you streamline processes and to help you fulfill orders. You can surely do without it, but your task will become much more complex, and the results would become much less optimal. ";
        var i = 0;
        var speed = 20;
        function myFunction() {
            if (i < txt.length) {
                document.getElementById("demo").innerHTML += txt.charAt(i);
                i++;
                setTimeout(myFunction, speed);
            }
        }
        // --------------------------------------
        function shows() {
            $("#CARD").hide();
            setTimeout(fun);
        }
        function fun() {
            $("#CARD").fadeIn(3000);
        }

        //------------------ PARA 1 -----------------------
        document.getElementById("r1").onclick = function () {
            mouseClick1();
        };
        $("#p1").hide();
        let x1 = false;
        function mouseClick1() {
            if (Boolean(x1)) {
                console.log(x1);
                $("#p1").hide(2000);
                x1 = false;
            } else {
                console.log(x1);
                $("#p1").show(2000);
                x1 = true;
            }
        }


        //------------------ PARA 2 -----------------------
        document.getElementById("r2").onclick = function () {
            mouseClick2();
        };
        $("#p2").hide();
        let x2 = false;
        function mouseClick2() {
            if (Boolean(x2)) {
                $("#p2").hide(2000);
                x2 = false;
            } else {
                $("#p2").show(2000);
                x2 = true;
            }
        }

        //------------------ PARA 3 -----------------------
        document.getElementById("r3").onclick = function () {
            mouseClick3();
        };
        $("#p3").hide();
        let x3 = false;
        function mouseClick3() {
            if (Boolean(x3)) {
                $("#p3").hide(2000);
                x3 = false;
            } else {
                $("#p3").show(2000);
                x3 = true;
            }
        }

        //------------------ PARA 4 -----------------------
        document.getElementById("r4").onclick = function () {
            mouseClick4();
        };
        $("#p4").hide();
        let x4 = false;
        function mouseClick4() {
            if (Boolean(x4)) {
                $("#p4").hide(2000);
                x4 = false;
            } else {
                $("#p4").show(2000);
                x4 = true;
            }
        }

        //------------------ PARA 5 -----------------------
        document.getElementById("r5").onclick = function () {
            mouseClick5();
        };
        $("#p5").hide();
        let x5 = false;
        function mouseClick5() {
            if (Boolean(x5)) {
                $("#p5").hide(2000);
                x5 = false;
            } else {
                $("#p5").show(2000);
                x5 = true;
            }
        }

        //------------------ PARA 6 -----------------------
        document.getElementById("r6").onclick = function () {
            mouseClick6();
        };
        $("#p6").hide();
        let x6 = false;
        function mouseClick6() {
            if (Boolean(x6)) {
                $("#p6").hide(2000);
                x6 = false;
            } else {
                $("#p6").show(2000);
                x6 = true;
            }
        }

        //------------------ PARA 7 -----------------------
        document.getElementById("r7").onclick = function () {
            mouseClick7();
        };
        $("#p7").hide();
        let x7 = false;
        function mouseClick7() {
            if (Boolean(x7)) {
                $("#p7").hide(2000);
                x7 = false;
            } else {
                $("#p7").show(2000);
                x7 = true;
            }
        }
        //------------------ PARA 8 -----------------------
        document.getElementById("r8").onclick = function () {
            mouseClick8();
        };
        $("#p8").hide();
        let x8 = false;
        function mouseClick8() {
            if (Boolean(x8)) {
                $("#p8").hide(2000);
                x8 = false;
            } else {
                $("#p8").show(2000);
                x8 = true;
            }
        }
        //------------------ PARA 9 -----------------------
        document.getElementById("r9").onclick = function () {
            mouseClick9();
        };
        $("#p9").hide();
        let x9 = false;
        function mouseClick9() {
            if (Boolean(x6)) {
                $("#p9").hide(2000);
                x6 = false;
            } else {
                $("#p9").show(2000);
                x6 = true;
            }
        }
        </script>
    </body>
</html>
