<%-- 
    Document   : Contact
    Created on : Jan 12, 2024, 7:48:40 PM
    Author     : Chandan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="normal_navbar.jsp" %>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <!--CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
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
        </style>
    </head>
    <body>

        <main class="text-black bg-light-subtle">
            <div class="container-fluid p-1 " >
                <div class="col-md-4 offset-md-4 ">
                    <div class="card">
                        <div class="card-header text-center text-uppercase fw-bold">
                            <span class="fa fa-address-card-o" style="font-size:300%"> </span>
                            <br/>
                            Contact Us
                            <br/>
                        </div>

                        <div class="card-body" >

                            <form id="contact-form" action="contact" method="post" >

                                <div class="mb-2">
                                    <label for="exampleInputName" class="form-label">User Name</label>
                                    <input name="user_name" type="text" class="form-control " id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter name">
                                </div>

                                <div class="mb-2">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"placeholder="Enter email">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>


                                <div class="mb-2">
                                    <label for="exampleInputPhone" class="form-label">Phone-no</label>
                                    <input name="user_phone" type="number" class="form-control" id="exampleInputPhone" placeholder="Enter phone-no">
                                </div>

                                <div class="mb-2 form-group">
                                    <label for="Gender" > Gender</label>
                                    <br/>
                                    <label for="Gender1">Male</label>
                                    <input type="radio" id="Gender1" name="gender" value="Male">
                                    <label for="Gender2">Female</label>
                                    <input type="radio" id="Gender2" name="gender" value="Female" >
                                </div>

                                <div class=" mb-1 form-group">
                                    <textarea name="faq" class="form-control" cols="25" rows="5" placeholder="FAQ: " ></textarea>
                                </div>

                                <div class="mb-2 form-check ">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree terms and condition</label>
                                </div>

                                <div class="container text-center" id="loader" style="display: none;" >
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait... </h4>
                                </div>

                                <button id="submit-btn" type="submit" class="btn btn-outline-secondary">Submit</button>
                            </form>
                        </div>
                        <div class="card-footer ">

                        </div>
                    </div>
                </div>
            </div>
        </main>

        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" 
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script> 
        <script src="JS/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


        <script>
            $(document).ready(function () {
                console.log("loaded...");

                $("#contact-form").on('submit', function (event) {   // reg-form is a id of form 

                    event.preventDefault();    // preventDefault() method prevent the registration form
                    let form = new FormData(this);  // all the data of registration form be store in form variable

                    // before sending the data into database
                    $('#submit-btn').hide();
                    $('#loader').show();

                    // send the data to register servlet
                    $.ajax({
                        url: "contact",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);

                            $('#submit-btn').show();
                            $('#loader').hide();

                            if (data.trim() === 'Done') {
                                swal("Successfully sending the request.....")
                                        .then((value) => {
                                            window.location = "index.jsp";
                                        });
                            } else {
                                swal("Error!", "", "warning");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $('#submit-btn').show();
                            $('#loader').hide();
                            swal("Something went wrong!");
                        },
                        processData: false,
                        contentType: false
                    });

                });

            });

        </script>

    </body>
</html>
