<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>my java web
    </title>
    <!-- Favicon -->
<!--    <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico" />-->
    <!-- Font Awesome -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css" />
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.css" type="text/css" media="screen" />
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
    <!-- Progress bar  -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-progressbar-3.3.4.css" />
    <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">
    <link href="upcomming.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Open Sans for body font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- Lato for Title -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>


</head>

<body>

    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- END PRELOADER -->

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
    <!-- END SCROLL TOP BUTTON -->


    <!-- Start login modal window -->
    <div aria-hidden="false" role="dialog" tabindex="-1" id="login-form" class="modal leread-modal fade in">
        <div class="modal-dialog">
            <!-- Start login section -->
            <div id="login-content" class="modal-content">
                <div class="modal-header">
                    <button aria-label="Close" data-dismiss="modal" class="close" type="button"><span
                            aria-hidden="true">×</span></button>
                    <h4 class="modal-title"><i class="fa fa-unlock-alt"></i>Login</h4>
                </div>
                <div class="modal-body">
                    <form action="signIn" method="POST">
                        <div class="form-group">
                            <input type="text" placeholder="User name" name="uname" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" name="pass" class="form-control">
                        </div>
                        <div class="loginbox">

                            <button class="btn signin-btn" type="submit">SIGN IN</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer footer-box">
                    <a href="#">Forgot password ?</a>
<!--                    <span>No account ? <a id="signup-btn" href="#">Sign Up.</a></span>-->
                </div>
            </div>
            
        </div>
    </div>
    <!-- End login modal window -->

    <!-- BEGIN MENU -->
    <section id="menu-area">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <img src="assets/images/logo.jpeg" alt=""/>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- LOGO -->
<!--                     TEXT BASED LOGO -->
                    <a class="navbar-brand" href="#">University Events and NEWS</a>
                    <!-- IMG BASED LOGO  -->
                    <!--<a class="navbar-brand" href="index.html"><img src="assets/images/logo.jpeg" alt="logo"></a>--> 
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>
                </div>
               
            </div>
        </nav>
    </section>
    <!-- END MENU -->

    <!-- Start slider -->
    <section id="slider">
        <div class="main-slider">
            <div class="single-slide">
                <img src="assets/images/slider-1.jpg" alt="img">
                <div class="slide-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="slide-article">
                                    <h1 class="wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">Events of the ERA
                                       
                                    </h1>

                                    <a class="read-more-btn wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s"
                                        href="#" data-target="#login-form" data-toggle="modal">Login</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="slider-img wow fadeInUp">
                                    <img src="assets/images/person1.png" alt="business man">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slide">
                <img src="assets/images/slider-3.jpg" alt="img">
                <div class="slide-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="slide-article">
                                    <h1 class="wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">We are Best
                                        Team & Support you to aware about Events and NEWS of the university.
                                    </h1>
                                    <p class="wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.75s">&nbsp;</p>
                                    <a class="read-more-btn wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s"
                                        href="#" data-target="#login-form" data-toggle="modal">Login</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="slider-img wow fadeInUp">
<!--                                    <img src="assets/images/person2.png" alt="business man">-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End slider -->


      
&nbsp &nbsp<br>
        <h3>News & Events</h3><br>
        &nbsp &nbsp


        &nbsp &nbsp
        &nbsp &nbsp<br>
        &nbsp &nbsp<br>
        &nbsp &nbsp

    </div>

    <!-- Start footer -->
    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="footer-left"></div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="footer-right">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End footer -->

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Bootstrap -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- Slick Slider -->
    <script type="text/javascript" src="assets/js/slick.js"></script>
    <!-- mixit slider -->
    <script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
    <!-- Add fancyBox -->
    <script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>
    <!-- counter -->
    <script src="assets/js/waypoints.js"></script>
    <script src="assets/js/jquery.counterup.js"></script>
    <!-- Wow animation -->
    <script type="text/javascript" src="assets/js/wow.js"></script>
    <!-- progress bar   -->
    <script type="text/javascript" src="assets/js/bootstrap-progressbar.js"></script>


    <!-- Custom js -->
    <script type="text/javascript" src="assets/js/custom.js"></script>






</body>

</html>