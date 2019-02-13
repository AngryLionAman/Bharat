<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>AMAN HTML</title>




        <!-- Main style sheet -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <script type="text/javascript">

            function take_value(user_id, id_of_user) {
            <% if (session.getAttribute("email") == null) { %>
                           alert("Please login first");<%
                   } else { %>
                           // if(document.getElementById("myButton1").value==="Followed"){
                           // alert("Already followed");  
                           //}
                           //else{
                           document.getElementById("myButton1").value = "Followed";
                           //document.getElementById("demo").innerHTML = "Welcome" + topic_id+id_of_user;

                           var http = new XMLHttpRequest();
                           http.open("POST", "http://localhost:8081/InquiryHere/submit_follower_detail.jsp?val_topic=" + user_id + "&val2_topic=" + id_of_user, true);
                           http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                           http.send();

                           http.onload = function () {
                               http.responseText;
                               alert(http.responseText);
                               //}
                           }
                      <% } %>
                       }
        </script>

    </head>

    <body>
        <div class="main-page-wrapper">
<%@include file="header.jsp" %>
                                    <div class="bodydata">
                                        <div class="container clear-fix">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">


                                                    <div class="clear-fix"></div>


                                                    <div class="clear-fix"></div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="themeBox" style="height:auto;margin-bottom:0px;">
                                                                <div class="boxHeading">
                                                                    User Profile
                                                                </div>
                                                                <!-- <div style="">Post something here</div> -->
                                                                <div class="userProfiles">

                                                                    <%
                                                                        Statement stmt;
                                                                        Connection con;
                                                                        ResultSet rs;
                                                                        String firstname, lastname, higher_edu, imagepath;
                                                                        int user_id = 0;
                                                                        String Status= null;
                                                                        try {
                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            con = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
                                                                            stmt = con.createStatement();
                                                                            String v = "SELECT ID,firstname,lastname,higher_edu,imagepath FROM newuser";
                                                                            rs = stmt.executeQuery(v);
                                                                            while (rs.next()) {
                                                                                user_id = rs.getInt("ID");
                                                                                firstname = rs.getString("firstname");
                                                                                lastname = rs.getString("lastname");
                                                                                higher_edu = rs.getString("higher_edu");
                                                                                imagepath = rs.getString("imagepath");
                                                                                Statement stmt_topic_followers;
                                                                        
                                                                        ResultSet rs_topic_followers;
                                                                        stmt_topic_followers = con.createStatement();
                                                                        String topic_followers = "SELECT * FROM ak_follower_detail";
                                                                        rs_topic_followers = stmt_topic_followers.executeQuery(topic_followers);

                                                                        while (rs_topic_followers.next()) {
                                                                            int db_user_id = rs_topic_followers.getInt("user_id");
                                                                            int f_followers_id = rs_topic_followers.getInt("followers_id");
                                                                                
                                                                            if ((db_user_id == user_id) && (f_followers_id == id_of_user)) {
                                                                                Status = "present";
                                                                            }
                                                                        }
                                                                        stmt_topic_followers.close();
                                                                        rs_topic_followers.close();
                                                                    %>
                                                                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

                                                                        <img src="images/UploadedImage/<%=imagepath%>" alt="" style="width:100%; border:1px solid #ddd;margin-top:20px;">
                                                                        <a href="profile.jsp?ID=<%=user_id%>"><%=firstname + " " + lastname%></a>
                                                                        <%
                                                                        if (Status == "present"){ out.println("<button>Followed</button>");}
                                                                    else {%>
                                                                    <input type="button" class="float-right" value="Follow" id="myButton1" onclick="return take_value('<%=user_id%>', '<%=id_of_user%>');" />
                                                                    <% }Status = null;
                                                                        %>
                                                                       
                                                                    </div>
                                                                    <%
                                                                            }
                                                                            rs.close();
                                                                            stmt.close();
                                                                            con.close();
                                                                        } catch (Exception e) {
                                                                            out.println(e.getMessage());
                                                                        }
                                                                    %>
                                                                </div>

                                                                <div class="clear-fix"></div>
                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="row margintop10">


                                                    </div>

                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                                                    <div class="themeBox" style="min-height:320px;">
                                                        <div class="boxHeading">
                                                            Module
                                                        </div>
                                                        <div>
                                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                        </div>

                                                    </div>
                                                    <div class="clear-fix"></div>
                                                    <div class="themeBox" style="min-height:240px;">
                                                        <div class="boxHeading">
                                                            Module
                                                        </div>
                                                        <div>
                                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                        </div>


                                                    </div>
                                                    <div class="clear-fix"></div>


                                                    <div class="clear-fix"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>





                                    <!-- Footer ______________________________ -->
                                    <!--<footer>
                                            
                                                    
                                                            <div class="container">
                                                                    <div class="clear-fix">
                                                                                    
                                                                            <div class="row ">
                                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                            <div class="float-right reserved">
                                                                            All Rights Reserved
                                                                            </div>
                                                                            </div>
                                                                            </div>
                                                                            
                                                                            
                                                                            
                    
                                                                            
                    
                                                                            
                    
                                                                    
                                                                    </div> 
                                                            </div> 
                                                    
                    
                                            
                                            
                                            
                                    </footer>-->







                                    <!-- Js File_________________________________ -->

                                    <!-- j Query -->
                                    <script type="text/javascript" src="vendor/jquery-2.1.4.js"></script>

                                    <!-- Bootstrap JS -->
                                    <script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script>


                                    <!-- Bootstrap Select JS -->
                                    <script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>


                                    <!-- Theme js -->
                                    <!-- <script type="text/javascript" src="js/theme.js"></script> -->

                                    </div> <!-- /.main-page-wrapper -->
                                    </body>
                                    </html>