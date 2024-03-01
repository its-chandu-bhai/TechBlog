<%@page import="com.techBlog.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css" />

        <!--font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            * {
                box-sizing: border-box;
            }
            .bi {
/*                background: url("blog_pics/img5.jpg");
                background-size: cover;
                background-attachment: fixed;
                height: 100%;
                background-repeat: no-repeat;
                background-position: center;*/
            }

            .input-container {
                display: -ms-flexbox; /* IE10 */
                display: flex;
                width: 100%;
                margin-bottom: 15px;
            }

            .input-field {
                width: 100%;
                padding: 10px;
                outline: none;
            }


            .icon {
                padding: 10px;
                min-width: 10px;
                text-align: center;
            }


            .input-field:focus {
                border: 2px solid dodgerblue;
            }
            
            .containers{
                background: whitesmoke;
            }
            /*            .banner-style{
                                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 94%, 82% 85%, 54% 93%, 26% 86%, 0 94%, 0 0, 23% 0);
                            }*/
        </style>
    </head>
    <body class="bi bg-light-secondary">

        <%@include file="normal_navbar.jsp" %>

        <main class="containers pt-md-4 bi text-white mt-md-4">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">

                            <div class="card-header text-center fw-bold text-uppercase">
                                <span class="fa fa-users fa-3x"></span>
                                <br/>
                                <h2> Welcome! </h2>
                                <p> Use your credentials to access </p>
                            </div>

                            <!-- get the msg   -->
                            <% Message msg=(Message) session.getAttribute("msg"); if (msg !=null) { %>

                            <div class="alert <%= msg.getCssClass()%>" role="alert">
                                <%= msg.getContent()%>
                            </div>

                            <% session.removeAttribute("msg"); } %>




                            <div class="card-body">
                                <form action="LoginServlet" method="post" enctype="multipart/form-data">
                                    <div class="mb-3 input-container">
                                        <!--<label for="exampleInputEmail1" class="form-label ">Email address</label>-->
                                        <i class="fa fa-envelope icon " style="font-size: 25px;"></i>
                                        <input name="Email" required type="email" class="input-field form-control" id="exampleInputEmail1"
                                               aria-describedby="emailHelp" placeholder="Enter Your Email">
                                        <!--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>-->
                                    </div>


                                    <div class="mb-3 input-container">
                                        <i class="fa fa-lock icon mx-1" style="font-size: 25px;" ></i>
                                        <!--<label for="exampleInputPassword1" class="form-label">Password</label>-->
                                        <input name="Password" required type="password" class="form-control  input-field"
                                               id="exampleInputPassword1" placeholder="Enter Your Password">
                                    </div>


                                    <!--  <div class="mb-3 form-check">   // not be required
                                                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                                  </div> -->

                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-outline-secondary ">Submit</button>
                                    </div>

                                </form>
                            </div>

                            <div class="card-footer p-3 text-center ">
                                <p> Don't Have Any Account? <a href="register_page.jsp" > Register Here  </a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </body>
</html>