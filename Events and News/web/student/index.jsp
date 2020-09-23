<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.DBCon"%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>Student</title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" >
        <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <script src="lib/chart-master/Chart.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>      

            #b{

                display: none;
            }
            #c{

                display: none;
            }
            #d{

                display: none;
            }
            #e{

                display: none;
            }
           
        </style>
    </head>

    <body>
        <section id="container">

            <header class="header black-bg">
                <div class="sidebar-toggle-box">
                    <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                </div>


                <!-- notification dropdown end -->
                </ul>
                <!--  notification end -->
                </div>
                <div class="top-menu">
                    <ul class="nav pull-right top-menu">
                        <li><a class="logout" href="../home.jsp">Logout</a></li>
                    </ul>
                </div>
            </header>
            <!--header end-->
            <!-- **********************************************************************************************************************************************************
                MAIN SIDEBAR MENU
                *********************************************************************************************************************************************************** -->
            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
                    <ul class="sidebar-menu" id="nav-accordion">
                        <p class="centered"><a href="profile.html"><img src="img/logo.jpeg" class="img-circle" width="80"></a></p>
                        <h5 class="centered">Student</h5>

                        <li class="sub-menu">
                            <a href="#" onclick="aclose();bopen();cclose();dclose();">
                                <i class="fa fa-user"></i>
                                <span>New Question</span>
                            </a>

                        </li>
                        <li class="sub-menu">
                            <a href="#" onclick="aclose();copen();bclose();dclose();">
                                <i class="fa fa-info"></i>
                                <span>My Questions</span>
                            </a>

                        </li>
                          <li class="sub-menu">
                            <a href="#" onclick="aclose();dopen();bclose();cclose();">
                                <i class="fa fa-tasks"></i>
                                <span>Events</span>
                            </a>

                        </li>


                        <!-- sidebar menu end-->
                </div>
            </aside>

            <section id="main-content">
                <section class="wrapper">
                    <div class="row">

                        <div class="aa" id="a">
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                     
                                        <th scope="col">Title</th>
                                        <th scope="col">Body</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        DBCon obj3 = new DBCon();
                                        Connection con3 = obj3.getConnection();
                                        Statement st3 = con3.createStatement();
                                        ResultSet res3 = st3.executeQuery("SELECT * FROM  event WHERE type = 'public'");
                                        
                                        while (res3.next()) {
                                            String id = res3.getString("id");
                                            String title = res3.getString("title");
                                            String body = res3.getString("body");
                                    %>
                                    <tr>
                                       
                                        <td><% out.println(title); %></td>
                                        <td><% out.println(body); %></td>
                                    </tr>
                                    <%
                                        }
                                    %> 
                                </tbody>
                            </table>
                        </div>
                        <script>
                            function aopen() {
                                document.getElementById("a").style.display = "block";
                            }
                            function aclose() {
                                document.getElementById("a").style.display = "none";

                            }</Script>

                        <div class="dd" id="b">

                            <form action="../stdQuestion" method="POST">
                                <div class="container">
                                    <h1>New Question</h1>

                                    <hr><label for="name"><b>Question Title</b></label>: &nbsp&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" placeholder="Your Question Title" name="question" required>  </br> 
                                    </br></br>
                                    </br></br><label for="id"><b>Question Body</b></label> :&nbsp&nbsp&nbsp&nbsp
                                    <input type="text" placeholder="Your Question" name="qbody" required>  </br> 
                                    </br></br </br>
                                    <hr>
                                    <button type="submit" class="registerbtn">Post</button>
                                </div>

                                <div class="container signin">

                                </div>
                            </form>              
                            </h1>





                        </div>
                        <script>
                            function bopen() {
                                document.getElementById("b").style.display = "block";
                            }
                            function bclose() {
                                document.getElementById("b").style.display = "none";

                            }</Script>
                        
                        <div class="cc" id="c">
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                                     
                                        <th scope="col">Title</th>
                                        <th scope="col">Body</th>
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        DBCon obj = new DBCon();
                                        Connection con = obj.getConnection();
                                        Statement st = con.createStatement();
                                        ResultSet res = st.executeQuery("SELECT * FROM  studentquestion");
                                        while (res.next()) {
                                            String id = res.getString("id");
                                            String title = res.getString("title");
                                            String body = res.getString("body");
                                           
                                    %>
                                    <tr>
                                 
                                        <td><% out.println(title); %></td>
                                        <td><% out.println(body); %></td>
                                       
                                    </tr>
                                    <%
                                        }
                                    %> 
                                </tbody>
                            </table>
                        </div>
                        <script>
                            function copen() {
                                document.getElementById("c").style.display = "block";
                            }
                            function cclose() {
                                document.getElementById("c").style.display = "none";

                            }</Script>
                        <div class="dd" id="d">
                            <table class="table table-dark">
                                <thead>
                                    <tr>
                               
                                        <th scope="col">Title</th>
                                        <th scope="col">Body</th>
                                     
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        DBCon obj2 = new DBCon();
                                        Connection con2 = obj2.getConnection();
                                        Statement st2 = con2.createStatement();
                                        ResultSet res2 = st2.executeQuery("SELECT * FROM  event WHERE type = 'public'");
                                        while (res2.next()) {
                                            String id = res2.getString("id");
                                            String title = res2.getString("title");
                                            String body = res2.getString("body");
                                    %>
                                    <tr>
                                        
                                        <td><% out.println(title); %></td>
                                        <td><% out.println(body); %></td>
                                    </tr>
                                    <%
                                        }
                                    %> 
                                </tbody>
                            </table>
                        </div>
                        <script>
                            function dopen() {
                                document.getElementById("d").style.display = "block";
                            }
                            function dclose() {
                                document.getElementById("d").style.display = "none";

                            }</Script>

                </section>
                <!-- js placed at the end of the document so the pages load faster -->
                <script src="lib/jquery/jquery.min.js"></script>

                <script src="lib/bootstrap/js/bootstrap.min.js"></script>
                <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
                <script src="lib/jquery.scrollTo.min.js"></script>
                <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
                <script src="lib/jquery.sparkline.js"></script>
                <!--common script for all pages-->
                <script src="lib/common-scripts.js"></script>
                <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
                <script type="text/javascript" src="lib/gritter-conf.js"></script>
               
               
                
                </body>

                </html>
