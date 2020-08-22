<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.DBCon"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title>university</title>

        
    </head>

    <body>
        
            <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">Student ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Username</th>
                        <th scope="col">Email</th>
                    </tr>
                </thead>
                <%
                        DBCon obj = new DBCon();
                        Connection con = obj.getConnection();
                        Statement st = con.createStatement();
                        ResultSet res = st.executeQuery("SELECT * FROM  users where type='student'");
                        while (res.next()) {
                            String id = res.getString("studentID");
                            String name = res.getString("name");
                            String email = res.getString("email");
                            String username = res.getString("username");
                    %>
                <tbody>
                    <tr>
                        <th scope="row"><% out.println(id); %></th>
                        <td><% out.println(name); %></td>
                        <td><% out.println(username); %></td>
                        <td><% out.println(email); %></td>
                    </tr>
                    <%
                    }
                %> 
                </tbody>
            </table>



            <form action="../studentReg" method="POST">

                    <h1>Register</h1>
                    <p>Please fill in this form to create an account.</p>
                    <hr><label for="name"><b>Name</b></label>: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <input type="text" placeholder="Enter Name" name="name" required>  </br> 
                    </br></br
                    </br></br><label for="id"><b>Student Id</b></label> :&nbsp&nbsp&nbsp&nbsp
                    <input type="text" placeholder="Enter Id" name="stdId" required>  </br> 
                    </br></br </br>

                    </br></br><label for="id"><b>Username</b></label> :&nbsp&nbsp&nbsp&nbsp
                    <input type="text" placeholder="Enter usrname" name="uname" required>  </br> 
                    </br></br </br>

                    <label for="email"><b>Email</b></label>: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <input type="text" placeholder="Enter Email" name="email" required>  </br> 
                    </br></br>
                    <label for="psw"><b>Password</b></label>:&nbsp&nbsp&nbsp&nbsp
                    <input type="password" placeholder="Enter Password" name="password" required> </br></br>   </br>
                    <hr>

                    <button type="submit" class="registerbtn">Register</button>


            </form>              



            <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Username</th>
                        <th scope="col">password</th>
                        <th scope="col">Email</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        DBCon obj1 = new DBCon();
                        Connection con1 = obj.getConnection();
                        Statement st1 = con.createStatement();
                        ResultSet res1 = st.executeQuery("SELECT * FROM  users where type='student'");
                        while (res1.next()) {
                            String id = res1.getString("id");
                            String name = res1.getString("name");
                            String username = res1.getString("username");
                             String password= res1.getString("password");
                            String email = res1.getString("email");

                    %>
                    <tr>
                        <th scope="row"><% out.println(id); %></th>
                        <td><% out.println(name); %></td>
                        <td><% out.println(password); %></td>
                        <td><% out.println(username); %></td>
                        <td><% out.println(email); %></td>
                    </tr>
                    <%
                        }
                    %> 
                </tbody>
            </table>


                <h2>Add New Event</h2>
                <form action="../addPost" method="POST">

                        <label for="email">Post Title</label>
                        <input type="text" class="form-control" id="email" placeholder="Enter title" name="pTitle">


                        <label for="pwd">Post Body</label>
                        <input type="textarea"   rows="6" cols="50" class="form-control" id="pwd" placeholder="Body" name="pBody">


                        <input type="radio" name="type" value="public">Public<br>
                        <input type="radio" name="type" value="private">Private<br>

                    <button type="submit" class="btn btn-default">Submit</button>
                </form>




            <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Body</th>
                        <th scope="col">Type</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        DBCon obj2 = new DBCon();
                        Connection con2 = obj.getConnection();
                        Statement st2 = con.createStatement();
                        ResultSet res2 = st.executeQuery("SELECT * FROM  event");
                        while (res2.next()) {
                            String id = res2.getString("id");
                            String title = res2.getString("title");
                            String body = res2.getString("body");
                            String type = res2.getString("type");
                    %>
                    <tr>
                        <th scope="row"><% out.println(id); %></th>
                        <td><% out.println(title); %></td>
                        <td><% out.println(body); %></td>
                        <td><% out.println(type); %></td>
                    </tr>
                    <%
                        }
                    %> 
                </tbody>
            </table>
                                    
    </body>

</html>
