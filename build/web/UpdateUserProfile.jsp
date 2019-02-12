<html lang="en">
    <%@include file="site.jsp" %>
    <%  if (session.getAttribute("email") != null) { %>
    <head>
        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Update Profile | InquiryHere.com</title>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <style>
            input[type=text] {
                width: 100%;
                padding: 4px 8px;
                margin: 4px 0;
                box-sizing: border-box;
                border: 1px solid red;
                border-radius: 2px;
            }
            textarea[type=text]{
                width: 100%;
                padding: 4px 8px;
                margin: 4px 0;
                box-sizing: border-box;
                border: 1px solid red;
                border-radius: 2px;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: 1px solid red;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }
            .button1 {width: 250px;}
        </style>
    </head>
    <body>
        <div class="main-page-wrapper">
            <header class="home-page">
                <div class="container clear-fix">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="padding-left:0px;">
                        <div class="logo float-left">
                            <a href="#" style="vertical-align:middle;">
                                <h4>
                                    <div class="logotext">
                                        Inquiryhere
                                        <div>

                                            </h4>
                                            </a></div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 serachhere" style="display:inline-block;">

                                        <div style="overflow: hidden; padding-right: .5em;">
                                            <form action="SearchBar.jsp">
                                                <input type="text" style="width: 100%;" name="search" >
                                                <button type="submit" style="float: right;width: 50px;" />Search</button>
                                            </form>
                                        </div>


                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right">
                                        <a href="index.jsp" class="helpicon" style="color: white;padding-right: 50px; ">Home</a>
                                        <a href="help.html"><img src="images/home/HelpIcon.png" class="helpicon"/></a>


                                    </div>

                                    <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12 float-right textalign-right">
                                        <%@page language="java" %>
                                        <%@page import="java.sql.*" %> 
                                        <%
                                            String name = null;
                                            String lastname = null;
                                            String Storedemail = null;
                                            String bio = null;
                                            String BestAchievement = null;
                                            String higher_colification = null;
                                            String ImagePath = null;
                                            int id_of_user = 0;
                                            int topic_id = 0;
                                            String email = (String) session.getAttribute("email");
                                            Statement stmt;
                                            Connection con;
                                            ResultSet rs;
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                                                stmt = con.createStatement();
                                                String p = "SELECT * FROM newuser WHERE email = '" + email + "'";
                                                rs = stmt.executeQuery(p);
                                                while (rs.next()) {
                                                    id_of_user = rs.getInt("id");
                                                    name = rs.getString("firstname");
                                                    lastname = rs.getString("lastname");
                                                    Storedemail = rs.getString("email");
                                                    higher_colification = rs.getString("higher_edu");
                                                    bio = rs.getString("bio");
                                                    BestAchievement = rs.getString("best_achievement");
                                                    ImagePath = rs.getString("imagepath");
                                                }
                                                 rs.close();
                                                stmt.close();
                                                con.close();
                                            } catch (Exception e) {
                                                out.println("Unable to retrieve!!" + e);
                                            }
                                        %>
                                        <select class="helpicon w100 username" onchange="location = this.value;">
                                            <option value="index.jsp"><%=name%></option>
                                            <option value="profile.jsp?ID=<%=id_of_user%>">Profile</option>
                                            <option value="AboutUs.html">About us</option>
                                            <option value="ContactUs.jsp">Contact Us</option>
                                            <option value="Logout.jsp">Logout</option>
                                        </select>
                                    </div>
                                    </div>

                                    </header>
                                    <div class="clear-fix"></div>
                                    <div class="bodydata">
                                        <div class="container clear-fix">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                                                </div>

                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">                                                   
                                                    <div class="row"><center>                                                           
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="themeBox" style="height:auto;">
                                                                   
                                                                        <label for="fname">Update your profile image</label>
                                                                        <div class="boxHeading">
                                                                            <div>
                                                                                <img src="images/UploadedImage/<%=ImagePath%>" alt="Image" style="width:20%; margin:10px 0px 0px; border:1px solid #ddd;">
                                                                            </div>
                                                                            <div>
                                                                                 <form action="UploadImage.jsp" method="post" enctype="multipart/form-data">
                                                                                     <input type="file" name="photo" required="">
                                                                                <input type="submit" value="Click here to update">
                                                                                     </form>
                                                                            </div>
                                                                        </div>
                                                                         <form action="SubmitUpdatedUserProfile.jsp" method="post" >
                                                                        <label for="fname">Full Name (Not Editable)</label>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="fullname" value="<%=name%> <%=lastname%>" readonly="" required="">
                                                                        </div>
                                                                        <label for="fname">Email (Not Editable)</label>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="email" value="<%=Storedemail%>" readonly="" required="">
                                                                        </div>
                                                                        <label for="fname">Higher Qualification</label>
                                                                        <% if (higher_colification != null) {%>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="HigherQualification" value="<%=higher_colification%>" >
                                                                        </div><% } else { %>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="HigherQualification" placeholder="Insert Your Higher Qualification.Ex: B.Tech,BA,BSC" >
                                                                        </div><% }%>
                                                                        <label for="fname">Best Achievement</label>
                                                                        <% if (BestAchievement != null) {%>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="BestAchievement" value="<%=BestAchievement%>" >
                                                                        </div><% } else { %>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="BestAchievement" placeholder="Insert Your Best Achievement" >
                                                                        </div><% }%>
                                                                        <label for="fname">Bio</label>
                                                                        <% if (bio != null) {%>
                                                                        <div class="boxHeading">
                                                                            <textarea type="text" class="anstext" name="bio"  ><%=bio%></textarea>
                                                                        </div><% } else { %>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="bio" placeholder="Write something about Yourself" >
                                                                        </div><% }%>
                                                                        <div class="float-right margintop20" style="vertical-align:bottom">
                                                                            <button type="submit" class="btn" data-toggle="modal" >Update Profile</button>
                                                                        </div>

                                                                    </form>


                                                                </div>
                                                            </div>

                                                        </center> </div>


                                                </div>

                                                <div class="clear-fix"></div>
                                            </div>
                                            <div class="clear-fix"></div>
                                        </div>
                                        <div class="clear-fix"></div>
                                    </div>
                                    <div class="clear-fix"></div>


                                    <script type="text/javascript" src="vendor/jquery-2.1.4.js"></script>
                                    <!-- Bootstrap JS -->
                                    <script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script>
                                    <!-- Bootstrap Select JS -->
                                    <script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>

                                    </div> 
                                    </body>
                                    <%
                                        } else
                                            out.println("You can't access this page directly");
                                    %>
                                    </html>