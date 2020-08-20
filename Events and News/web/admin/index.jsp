<%-- 
    Document   : index
    Created on : Aug 2, 2020, 11:04:52 PM
    Author     : shameen karunanayake
--%>
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

 
</head>

<body>
    
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
                                    <th scope="row"><% out.println(id); %></th>
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
                                    DBCon obj2 = new DBCon();
                                    Connection con2 = obj2.getConnection();
                                    Statement st2 = con2.createStatement();
                                    ResultSet res2 = st2.executeQuery("SELECT * FROM  users where type='university'");
                                    while (res2.next()) {

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

                                </tr>
                                <%
                                    }
                                %> 
                            </tbody>
                        </table>
                   
                            <thead>
                                <tr>
                                    <th scope="col">studentID </th>

                                    <th scope="col">name</th>

                                    <th scope="col">Username</th>
                                    <th scope="col">password</th>
                                    <th scope="col">Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DBCon obj3 = new DBCon();
                                    Connection con3 = obj3.getConnection();
                                    Statement st3 = con3.createStatement();
                                    ResultSet res3 = st3.executeQuery("SELECT * FROM  users where type='student'");
                                    while (res3.next()) {
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

                                </tr>
                                <%
                                    }
                                %> 
                            </tbody>
                        </table>
                   

                        
                            </br> </br>
                            <h1>Register</h1>
                            </br>
                            <p>Please fill in this form to create an account.</p>
                            </br>      
                            <form action="../signUp" method="POST">
                               
                                    <input placeholder="Name" name="name" class="form-control">
                             
                                </br>
                              
                                    <input placeholder="Email" type="email" name="email" class="form-control">
                                
                                </br>
                                
                                    <input placeholder="Username" name="uname" class="form-control">
                            
                                </br>
                           
                                    <input type="password" placeholder="Password" name="password" class="form-control">
                            

                               
                                    <button class="btn signin-btn" type="submit">SIGN UP</button>
                               
                            </form>



                   <h2>Add New Event or NEWS</h2>
                            <form action="../addPost" method="POST">
                              
                                    <label for="email">Post Title</label>
                                    <input type="text" class="form-control" id="email" placeholder="Enter title" name="pTitle">
                             
                                    <label for="pwd">Post Body</label>
                                    <input type="textarea"   rows="6" cols="50" class="form-control" id="pwd" placeholder="Body" name="pBody">
                                
                             
                                    <input type="radio" name="type" value="public">Public<br>
                                    <input type="radio" name="type" value="private">Private<br>
                                
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                   
                            <thead>
                                <tr>

                                    <th scope="col">Title</th>
                                    <th scope="col">Body</th>
                                    <th scope="col">Type</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DBCon obj4 = new DBCon();
                                    Connection con4 = obj4.getConnection();
                                    Statement st4 = con4.createStatement();
                                    ResultSet res4 = st4.executeQuery("SELECT * FROM event");
                                    while (res4.next()) {

                                        String title = res4.getString("title");
                                        String body = res4.getString("body");
                                        String type = res4.getString("type");
                                %>
                                <tr>

                                    <td><% out.println(title); %></td>
                                    <td><% out.println(body); %></td>
                                    <td><% out.println(type); %></td>
                                </tr>
                                <%
                                    }
                                %> 
                            </tbody>
                        </table>
                   