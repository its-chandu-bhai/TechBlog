<!doctype html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learn Code Page</title>
        <!--CSS-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="CSS/mystyle.css"/>
        <!--font awesome link-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <style>
            body{
                /*                background-image: url("Images/img1.jpg");
                                background-attachment: fixed;
                                background-position: center;
                                background-repeat: no-repeat;
                                background-size: cover;*/
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
                border-radius: 20px;
            }

            .card:hover{
                box-shadow: 0px 0px 20px rgba(12,12,125,235);
                /*cursor: pointer;*/
                transform: translateY(-20px);
            }

            .card img{
                width: 100%;
                height: 200px;
                /*height: auto;*/
                object-fit: cover;
                transition: transform 0.2s ease-in;
            }

            .img1:hover{
                cursor: pointer;
                transform: scaleX(1.2);
                /*height: 225px;*/
            }

            .syllabus:hover{
                cursor: pointer;
                background-color: #86b7fe;
                border-bottom-left-radius: 20px;
            }


        </style>
    </head>
    <body>

        <%@include file="normal_navbar.jsp" %>


        <main>
            <div id="carouselExampleFade" class="carousel  carousel-fade" >
                <div class="carousel-inner ">

                    <div class="carousel-item active" data-bs-interval="3000" >
                        <img src="blog_pics/js.jpg" height="400px" class="d-block w-100" alt="...">
                    </div>

                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="blog_pics/spring1.jpg" height="400px" class="d-block w-100" alt="...">
                    </div>

                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="blog_pics/ds4.png" height="400px" class="d-block w-100" alt="...">
                    </div>

                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="blog_pics/nodejs.png" height="400px" class="d-block w-100" alt="...">
                    </div>

                    <div class="carousel-item">
                        <img src="blog_pics/mongoDB.png" height="400px" class="d-block w-100" alt="...">
                    </div>

                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </main>

        <section class="section mt-1" style="background: graytext; margin-bottom:0px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-heading text-center" style="margin-bottom:0px">
                            <h3 style="color:white; font-size: clamp(15px, 2vw, 60px" )"="">No One Succeeds without Efforts!</h3>
                            <hr style="background-color: yellow;display: inline-block;width: 200px;height: 3px;color: yellow;">
                        </div>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col">
                        <img src="https://skilledup.s3.ap-south-1.amazonaws.com/images/website_images/book_image.png" style="width:30%;"><br>
                        <h3 style="color:white; font-size: clamp(15px, 2vw, 60px)">20+</h3>
                        <h5 style="color:white;font-weight:bold; font-size: clamp(10px, 1vw, 40px)">Different Courses</h5>
                    </div>
                    <div class="col">
                        <img src="https://skilledup.s3.ap-south-1.amazonaws.com/images/website_images/student_image.png" style="width:25%">
                        <h3 style="color:white; font-size: clamp(15px, 2vw, 60px)">7000+</h3>
                        <h5 style="color:white;font-weight:bold; font-size: clamp(10px, 1vw, 40px" );="">Students Enrolled</h5>
                    </div>
                    <div class="col">
                        <img src="https://skilledup.s3.ap-south-1.amazonaws.com/images/website_images/successful_transition.png" style="width:30%;">
                        <h3 style="color:white; font-size: clamp(15px, 2vw, 60px)">5000+</h3>
                        <h5 style="color:white;font-weight:bold; font-size: clamp(10px, 1vw, 40px)">Successful Transition</h5>
                    </div>

                </div>
            </div>
        </section> 

        <section class="section blog-part m-1 bg-body-secondary" >
                <h1 class="text-center" style="margin-bottom:20px; font-size: clamp(20px, 3vw, 80px)">Our Courses</h1> 
           

            <!-- Live program start-->
            <div id="liveProgram" class="row px-5 mx-0 ">
                <div class="tab-content" >
                    <div class="section-heading  mt-4" >
                        <p class="fs-3 ">Live Program</p>
                    </div>                
                </div>

                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/mysqlPowerBi.png" width="100%" height="auto" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase">MySQl with powerbi</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/fullStack.jpg"  class="card-img-top" width="100%" height="auto" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase">Full Stack Java Development</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/msExcel.jpg" class="card-img-top" width="100%" height="auto" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase px-3">MS Excel Expert</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Live program End-->

            <!-- Affordable Programs start-->
            <div id="affordableProgram" class="row px-5 mx-0">
                <div class="tab-content" >
                    <div class="section-heading  mt-4" >
                        <p class="fs-3">Affordable Programs </p>
                    </div>                
                </div>

                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/pythonBootcamp.png" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize">Python Bootcamp</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/mysqlBootcamp.jpg"  class="card-img-top" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize">MySQL Bootcamp</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/msBootcamp.webp" class="card-img-top" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize px-3">Microsoft Excel Bootcamp </h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>
                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Affordable Programs End-->

            <!-- Community program start-->
            <div id="communityProgram" class="row px-5 mx-0">
                <div class="tab-content" >
                    <div class="section-heading  mt-4" >
                        <p class="fs-3">Community program</p>
                    </div>                
                </div>

                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/php.jpg" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize">PHP Programming</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/java.png"  class="card-img-top" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize">java Programming</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/pythonProgramming.png" class="card-img-top" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-capitalize px-3">python Programming </h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class=" syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Community program End-->

            <!-- Coming program start-->
            <div id="comingProgram" class="row px-5 mx-0">
                <div class="tab-content" >
                    <div class="section-heading  mt-4" >
                        <p class="fs-3">Coming Program</p>
                    </div>                
                </div>

                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/machine.avif" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase">Machine Learning Bootcamp</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class=" syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div  class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/dataAnalytic.jpg"  class="card-img-top" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase ">Data Analytics Bootcamp</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus  m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 p-2" >
                    <div class="card">
                        <img class="img1" src="blog_pics/dataScience.webp" class="card-img-top" alt="error">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase px-3">Data Science Bootcamp</h5>
                            <div class="row" >
                                <div class="col-6 text-center">
                                    <h6  style="font-size: 16px"><b>Rs. 4,999</b></h6>
                                </div>
                                <div class="col-6 text-center">
                                    <a class="btn btn-outline header-btn" style="width: 85px; background-color:#233c7b;color:#fff; background-color:#233c7b;color:#fff;padding: 0px 0px;font-size:15px;" href="" tabindex="0">Live Soon</a>
                                </div>
                            </div>
                            <div class="row text-center redirect" style="font-size:20px;">
                                <!--href="register.php"-->
                                <a class="syllabus m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red;" tabindex="0"><span><i class="bi bi-download"></i>Syllabus</span></a>

                                <!--<a class="m-0 p-2" style="border:0px;width:50%;border-top:1px solid grey;color:red"><i class="bi bi-download"></i>Syllabus</a>-->
                                <a href="#" class="m-0 p-2" style="border:0px;width:50%;background:red;border-bottom-right-radius:20px;color:white;" tabindex="0">View</a>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Coming program End-->
        </section>
        
        
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" 
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="JS/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
    </body>
</html>