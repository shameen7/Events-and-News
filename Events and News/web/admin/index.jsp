<%-- 
    Document   : index
    Created on : Aug 17, 2020, 11:04:52 PM
    Author     : shameen karunanayake
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.DBCon"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <a href="index.jsp"></a>
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>Admin</title>

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Bootstrap core CSS -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--external css-->
    <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
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
        #f{

            display: none;
        }
        #g{

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
        
         <%
        
        if(request.getParameter("deleteEvent") != null){
            
           String id=request.getParameter("deleteEvent");
          
             DBCon obj = new DBCon();
             Connection conn = obj.getConnection();
             String query = "delete from event where id = ?";
             PreparedStatement preparedStmt = conn.prepareStatement(query);
             preparedStmt.setInt(1, Integer.parseInt(id));
             preparedStmt.execute();
            conn.close();
                                     
           
        }
        
         if(request.getParameter("deleteStudent") != null){
            
           String id=request.getParameter("deleteStudent");
          
             DBCon obj = new DBCon();
             Connection conn = obj.getConnection();
             String query = "delete from users where id = ?";
             PreparedStatement preparedStmt = conn.prepareStatement(query);
             preparedStmt.setInt(1, Integer.parseInt(id));
             preparedStmt.execute();
            conn.close();
                                 
           
        }

 if(request.getParameter("deleteStaff") != null){
            
           String id=request.getParameter("deleteStaff");
          
             DBCon obj = new DBCon();
             Connection conn = obj.getConnection();
             String query = "delete from users where id = ?";
             PreparedStatement preparedStmt = conn.prepareStatement(query);
             preparedStmt.setInt(1, Integer.parseInt(id));
             preparedStmt.execute();
            conn.close();
                                 
           
        }
        %>
        <!--header end-->
        <!-- **********************************************************************************************************************************************************
            MAIN SIDEBAR MENU
            *********************************************************************************************************************************************************** -->
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu" id="nav-accordion">
                    <p class="centered"><a href="profile.html"><img src="img/adminlogo.jpg" class="img-circle" width="80"></a></p>
                    <h5 class="centered">Admin</h5>

                    <li class="sub-menu">
                        <a href="#" onclick="bopen();aclose();cclose();dclose();eclose();fclose();gclose();">
                            <i class="fa fa-user"></i>
                            <span> Admin details</span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="#" onclick="copen();aclose();bclose();dclose();eclose();fclose();gclose();">
                            <i class="fa fa-info"></i>
                            <span>Academic staff details</span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="#" onclick="dopen();aclose();bclose();cclose();eclose();fclose();gclose();">
                            <i class="fa fa-book"></i>
                            <span>student details</span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="#" onclick="eopen();aclose();bclose();cclose();dclose();fclose();gclose();">
                            <i class="fa fa-tasks"></i>
                            <span>Staff Registration</span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="#" onclick="fopen();aclose();bclose();cclose();dclose();eclose();gclose();">
                            <i class="fa fa-th"></i>
                            <span>Events/NEWS </span>
                        </a>

                    </li>
                    <li class="sub-menu">
                        <a href="#" onclick="gopen();aclose();bclose();cclose();dclose();eclose();fclose();">
                            <i class="fa fa-th"></i>
                            <span>Events/NEWS details</span>
                        </a>

                    </li>

                    <!-- sidebar menu end-->
            </div>
        </aside>

        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="dd" id="a"><table class="table table-dark">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">email</th>
                                    <th scope="col">subject</th>
                                    <th scope="col">comment</th>
                                </tr>
                            </thead>
                            <%
                                DBCon obj = new DBCon();
                                Connection con = obj.getConnection();
                                Statement st = con.createStatement();
                                ResultSet res = st.executeQuery("SELECT * FROM  contact");
                                while (res.next()) {
                                    String id = res.getString("id");
                                    String name = res.getString("name");
                                    String email = res.getString("email");
                                    String subject = res.getString("subject");
                                    String comment = res.getString("comment");
                            %>
                            <tbody>
                                <tr>
                                    <th scope="row"><% out.println(id); %></th>
                                    <td><% out.println(name); %></td>
                                    <td><% out.println(email); %></td>
                                    <td><% out.println(subject); %></td>
                                    <td><% out.println(comment); %></td>
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

                    <div class="dd" id="b"> <table class="table table-dark">
                            <thead>
                                <tr>
                                   
                                    <th scope="col">Name</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">password</th>
                                    <th scope="col">Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DBCon obj1 = new DBCon();
                                    Connection con1 = obj1.getConnection();
                                    Statement st1 = con1.createStatement();
                                    ResultSet res1 = st1.executeQuery("SELECT * FROM  users where type='admin'");
                                    while (res1.next()) {
                                        String id = res1.getString("id");
                                        String name = res1.getString("name");
                                        String username = res1.getString("username");
                                        String password = res1.getString("password");
                                        String email = res1.getString("email");

                                %>
                                <tr>
                                    <td><% out.println(name); %></td>
                                    <td><% out.println(username); %></td>
                                    <td><% out.println(password); %></td>
                                    <td><% out.println(email); %></td>

                                </tr>
                                <%
                                    }
                                %> 
                            </tbody>
                        </table>





                    </div>
                    <script>
                        function bopen() {
                            document.getElementById("b").style.display = "block";
                        }
                        function bclose() {
                            document.getElementById("b").style.display = "none";

                        }</Script>
                    <div class="dd" id="c"> <table class="table table-dark">
                            <thead>
                                <tr>

                                    <th scope="col">Name</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">password</th>
                                    <th scope="col">Email</th>
                                     <th scope="col"></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DBCon obj2 = new DBCon();
                                    Connection con2 = obj2.getConnection();
                                    Statement st2 = con2.createStatement();
                                    ResultSet res2 = st2.executeQuery("SELECT * FROM  users where type='university'");
                                    while (res2.next()) {   
                                        String id = res2.getString("id");
                                        String name = res2.getString("name");
                                        String username = res2.getString("username");
                                        String password = res2.getString("password");
                                        String email = res2.getString("email");

                                %>
                                <tr>

                                    <td><% out.println(name); %></td>
                                    <td><% out.println(username); %></td>
                                    <td><% out.println(password); %></td>
                                    <td><% out.println(email); %></td>
                                     <td> <a href="?deleteStaff=<%=id%>">Delete</a></td>

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
                    <div class="dd" id="d"> <table class="table table-dark">
                            <thead>
                                <tr>
                                    <th scope="col">studentID </th>

                                    <th scope="col">name</th>

                                    <th scope="col">Username</th>
                                    <th scope="col">password</th>
                                    <th scope="col">Email</th>
                                      <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DBCon obj3 = new DBCon();
                                    Connection con3 = obj3.getConnection();
                                    Statement st3 = con3.createStatement();
                                    ResultSet res3 = st3.executeQuery("SELECT * FROM  users where type='student'");
                                    while (res3.next()) {
                                           String id = res3.getString("id");
                                        String studentID = res3.getString("studentID");
                                        String name = res3.getString("name");
                                        String username = res3.getString("username");
                                        String password = res3.getString("password");
                                        String email = res3.getString("email");

                                %>
                                <tr>
                                    <td><% out.println(studentID); %></td>
                                    <td><% out.println(name); %></td>
                                    <td><% out.println(username); %></td>
                                    <td><% out.println(password); %></td>
                                    <td><% out.println(email); %></td>
                                    <td> <a href="?deleteStudent=<%=id%>">Delete</a></td>

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

                    <div class="dd" id="e">


                        <div class="container">
                            </br> </br>
                            <h1>Register</h1>
                            </br>
                            <p>Please fill in this form to create an account.</p>
                            </br>      
                            <form action="../signUp" method="POST">
                                <div class="form-group">
                                    <input placeholder="Name" name="name" class="form-control">
                                </div>
                                </br>
                                <div class="form-group">
                                    <input placeholder="Email" type="email" name="email" class="form-control">
                                </div>
                                </br>
                                <div class="form-group">
                                    <input placeholder="Username" name="uname" class="form-control">
                                </div>
                                </br>
                                <div class="form-group">
                                    <input type="password" placeholder="Password" name="password" class="form-control">
                                </div>

                                <div class="loginbox">
                                    <button class="btn signin-btn" type="submit">SIGN UP</button>
                                </div>
                            </form>



                        </div>                      


                    </div>
                    <script>
                        function eopen() {
                            document.getElementById("e").style.display = "block";
                        }
                        function eclose() {
                            document.getElementById("e").style.display = "none";

                        }</Script>

                    <div class="dd" id="f">    <div class="container"><h2>Add New Event or NEWS</h2>
                            <form action="../addPost" method="POST">
                                <div class="form-group">
                                    <label for="email">Post Title</label>
                                    <input type="text" class="form-control" id="email" placeholder="Enter title" name="pTitle">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Post Body</label>
                                    <input type="textarea"   rows="6" cols="50" class="form-control" id="pwd" placeholder="Body" name="pBody">
                                </div>
                                <div class="checkbox">
                                    <input type="radio" name="type" value="public">Public<br>
                                    <input type="radio" name="type" value="private">Private<br>
                                </div>
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form></div>
                    </div>
                    <script>
                        function fopen() {
                            document.getElementById("f").style.display = "block";
                        }
                        function fclose() {
                            document.getElementById("f").style.display = "none";

                        }</Script>
                    <div class="ff" id="g">
                        <table class="table table-dark">
                            <thead>
                                <tr>

                                    <th scope="col">Title</th>
                                    <th scope="col">Body</th>
                                    <th scope="col">Type</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DBCon obj4 = new DBCon();
                                    Connection con4 = obj4.getConnection();
                                    Statement st4 = con4.createStatement();
                                    ResultSet res4 = st4.executeQuery("SELECT * FROM event");
                                    while (res4.next()) {

                                        String id = res4.getString("id");
                                        String title = res4.getString("title");
                                        String body = res4.getString("body");
                                        String type = res4.getString("type");
                                %>
                                <tr>

                                    <td><% out.println(title); %></td>
                                    <td><% out.println(body); %></td>
                                    <td><% out.println(type); %></td>
                                    <td> <a href="?deleteEvent=<%=id%>">Delete</a></td>
                                </tr>
                                <%
                                    }
                                %> 
                            </tbody>
                        </table>
                    </div>

                    <script>
                        function gopen() {
                            document.getElementById("g").style.display = "block";
                        }

                        function gclose() {
                            document.getElementById("g").style.display = "none";
                        }
                    </Script>
                    <!--footer end-->
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








