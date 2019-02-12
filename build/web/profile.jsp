<!DOCTYPE html>
<html lang="en">
      <%@include file="site.jsp" %>
    <head>

        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Profile | InquiryHere.com</title>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <meta property="og:url" content="https://www.inquiryhere.com/" />
        <meta property="og:title" content="Explore the world with your knowladge" />
        <meta property="og:description" content="Explore the world with your knowladge. inquiryhere.com" />
        <meta property="og:type" content="website">
        <meta property="og:locale" content="en_US">
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-128307055-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-128307055-1');
        </script> 
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


            <!-- Header _________________________________ -->
            <header class="home-page">
                <div class="container clear-fix">
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="padding-left:0px;">
                        <div class="logo float-left"><a href="#" style="vertical-align:middle;">
                                <h4>
                                    <div class="logotext">
                                        Inquiryhere
                                        <div>
                                            <!-- <img src="images/logo/logo.png" style="width:150px;"> -->
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
                                        <a  href="index.jsp" class="helpicon" style="color: white; width: 50px;">Home</a>
                                        <a href="help.html"><img src="images/home/HelpIcon.png" class="helpicon"/></a>

                                    </div>
                                    <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12 float-right textalign-right">
                                        <%@page language="java" %>
                                        <%@page import="java.sql.*" %> 
                                        <%
                                            String firstname = null;
                                            String higher_colification = null;
                                            String lastname = null;
                                            String bio = null;
                                            String mail = null;
                                            String BestAchievement = null;
                                            String ImagePath = null;
                                            int id_of_user = 0;
                                            int topic_id = 0;
                                            int session_id_of_user = 0;
                                            String email = (String) session.getAttribute("email");
                                            if (email == null) {
                                        %><select class="helpicon w100 username" onchange="location = this.value;">
                                            <option value="Login.jsp">Select</option>
                                            <option value="Login.jsp">LogIn</option>
                                            <option value="AboutUs.html">About us</option>
                                            <option value="ContactUs.jsp">Contact Us</option>

                                        </select><%
                                        } else {

                                            Statement stmt;
                                            Connection con;
                                            ResultSet rs;
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                stmt = con.createStatement();
                                                String p = "SELECT * FROM newuser WHERE email = '" + email + "'";
                                                rs = stmt.executeQuery(p);
                                                while (rs.next()) {
                                                    id_of_user = rs.getInt("id");
                                                    session_id_of_user = rs.getInt("id");
                                                    firstname = rs.getString("firstname");
                                                    lastname = rs.getString("lastname");
                                                    //mail = rs.getString("email");
                                                    higher_colification = rs.getString("higher_edu");
                                                    bio = rs.getString("bio");
                                                    BestAchievement = rs.getString("best_achievement");
                                                }
                                                rs.close();
                                                stmt.close();
                                                con.close();
                                            } catch (Exception e) {
                                                out.println("Unable to retrieve!!" + e);
                                            }
                                        %>
                                        <select class="helpicon w100 username" onchange="location = this.value;">
                                            <option value="index.jsp"><%=firstname%></option>
                                            <option value="profile.jsp?ID=<%=id_of_user%>">Profile</option>                                            
                                            <option value="AboutUs.html">About us</option>
                                            <option value="ContactUs.jsp">Contact Us</option>
                                            <option value="Logout.jsp">Logout</option>
                                        </select><%
                                            }
                                        %>

                                    </div>

                                    </div>

                                    </header>
                                    <div class="bodydata">
                                        <div class="container clear-fix">
                                            <%
                                                //String ID = request.getParameter("ID");
                                                String str = request.getParameter("ID");
                                                String ID = "";
                                                if (str == null) {
                                                    ID = Integer.toString(id_of_user);
                                                } else {
                                                    for (int i = 0; i < str.length(); i++) {
                                                        if (str.charAt(i) > 47 && str.charAt(i) < 58) {
                                                            ID += str.charAt(i);
                                                        }
                                                    }
                                                }

                                                Statement stmt;
                                                Connection con;
                                                ResultSet rs;
                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                    stmt = con.createStatement();
                                                    String p = "SELECT * FROM newuser WHERE ID = '" + ID + "'";
                                                    rs = stmt.executeQuery(p);
                                                    while (rs.next()) {
                                                        id_of_user = rs.getInt("id");
                                                        firstname = rs.getString("firstname");
                                                        lastname = rs.getString("lastname");
                                                        mail = rs.getString("email");
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
                                            <div class="row">

                                                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                                                    <div class="themeBox" style="min-height:500px;">
                                                        <div class="boxHeading">
                                                            Profile Details
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <img src="images/UploadedImage/<%=ImagePath%>" alt="Image" style="width:90%; margin:10px 0px 0px; border:1px solid #ddd;">
                                                            <%
                                                                if (session.getAttribute("email") != null) {
                                                                    if (mail.equals(session.getAttribute("email"))) {
                                                                        out.println("<a href=UpdateUserProfile.jsp>Update your profile image</a>");
                                                                    }
                                                                }
                                                                if (session.getAttribute("email") != null) {
                                                                    if (session_id_of_user != id_of_user) { //If user watching the own profile they will not get the follow button
                                                                        Statement stmt_follow;
                                                                        Connection con_follow;
                                                                        ResultSet rs_follow;
                                                                        int StoredUserId;
                                                                        int user_id = 0;
                                                                        String Status = null;
                                                                        try {
                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            con_follow = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                            stmt_follow = con_follow.createStatement();
                                                                            String v_follow = "SELECT * FROM ak_follower_detail where followers_id ='" + session_id_of_user + "'";
                                                                            rs_follow = stmt_follow.executeQuery(v_follow);
                                                                            while (rs_follow.next()) {
                                                                                StoredUserId = rs_follow.getInt("user_id");

                                                                                if (StoredUserId == id_of_user) {
                                                                                    Status = "present";
                                                                                }
                                                                            }
                                                                            if (Status == "present") {
                                                                                out.println("<button>Following</button>");
                                                                            } else {%>
                                                            <input type="button" class="float-right" value="Follow" id="myButton1" onclick="return take_value('<%=id_of_user%>', '<%=session_id_of_user%>');" />
                                                            <%
                                                                                //out.println("<button>Follow</button>");
                                                                            }
                                                                            Status = null;
                                                                            rs_follow.close();
                                                                            stmt_follow.close();
                                                                            con_follow.close();
                                                                        } catch (Exception e) {
                                                                            out.println(e.getMessage());
                                                                        }
                                                                    }
                                                                } else {
                                                                    out.println("<a href=Login.jsp><button>Please Login to Follow</button></a>");//if session is not Active
                                                                }
                                                            %>

                                                        </div>

                                                        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                                            <table class="profiledetails">
                                                                <tr>
                                                                    <td>Name </td>
                                                                    <td>: <%=firstname + " " + lastname%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Mail Id </td>
                                                                    <td>: <%=mail%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Higher Qualification </td>
                                                                    <td>: <%
                                                                        //higher_colification
                                                                        if (higher_colification == null || higher_colification.isEmpty()) {
                                                                            out.println("Not provided yet");
                                                                        } else {
                                                                            out.println(higher_colification);
                                                                        }
                                                                        %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Best Achievement</td>
                                                                    <td>: <%
                                                                        if (BestAchievement == null || BestAchievement.isEmpty()) {
                                                                            out.println("Not provided yet");
                                                                        } else {
                                                                            out.println(BestAchievement);
                                                                        }
                                                                        %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Bio </td>
                                                                    <td>: <%
                                                                        if (bio == null || bio.isEmpty()) {
                                                                            out.println("Not provided yet");
                                                                        } else {
                                                                            out.println(bio);
                                                                        }
                                                                        %></td>
                                                                </tr>
                                                                <% try {
                                                                        if (session.getAttribute("email") != null) {
                                                                            if (mail.equals(session.getAttribute("email"))) {%>                                                               
                                                                <tr>                                                   
                                                                    <td><a href="UpdateUserProfile.jsp">Complete your profile</a></td>  

                                                                </tr>
                                                                <% }
                                                                        }
                                                                    } catch (Exception ex) {
                                                                        out.println("What the hell is going on" + ex);
                                                                    }%>

                                                            </table>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                                                    <div class="themeBox" style="min-height:auto;">
                                                        <div class="boxHeading">
                                                            Your Activity
                                                        </div>
                                                        <div>
                                                            <a href="profile.jsp?value=Question&ID=<%=ID%>">Question</a><br>
                                                            <a href="profile.jsp?value=Answer&ID=<%=ID%>">Answer</a><br>
                                                            <a href="profile.jsp?value=Topic&ID=<%=ID%>">Topic Followed</a><br>
                                                            <a href="profile.jsp?value=Following&ID=<%=ID%>">Following</a><br>
                                                            <a href="profile.jsp?value=Followers&ID=<%=ID%>">Followers</a><br>
                                                            <a href="profile.jsp?value=Blog&ID=<%=ID%>">Blog</a><br>
                                                            <a href="profile.jsp?value=Quotes&ID=<%=ID%>">Quotes</a><br>
                                                        </div>

                                                    </div>

                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <div class="row">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <div class="themeBox" style="height:auto;margin-bottom:0px;">
                                                                <%

                                                                    String ParametrVariable = request.getParameter("value");
                                                                    if (ParametrVariable == null) {
                                                                        ParametrVariable = "Question";
                                                                    }
                                                                    if (ParametrVariable != null) {
                                                                        try {
                                                                            if (ParametrVariable.equals("Question")) {
                                                                                out.println("<center><div class=boxHeading> Question </div></center>");
                                                                                Statement stmt_q = null;
                                                                                Connection con_q;
                                                                                ResultSet rs_q;
                                                                                String Question_asked_by_user;

                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                con_q = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                                stmt_q = con_q.createStatement();
                                                                                String Q = "SELECT * FROM question WHERE id = '" + id_of_user + "'";
                                                                                rs_q = stmt_q.executeQuery(Q);
                                                                                int count = 0;
                                                                                while (rs_q.next()) {
                                                                                    count++;
                                                                                    Question_asked_by_user = rs_q.getString("question");
                                                                %> <br>Q. <a href="Answer.jsp?Id=<%=Question_asked_by_user%>" ><%=Question_asked_by_user%> ?</a><%
                                                                    }
                                                                     rs_q.close();
                                                                        stmt_q.close();
                                                                        con_q.close();
                                                                    if (count == 0) {
                                                                        out.println("<b style=color:red;>No question posted yet !!</b>");
                                                                    }
                                                                    try {
                                                                        if (session.getAttribute("email") != null) {
                                                                            if (mail.equals(session.getAttribute("email"))) {
                                                                %>

                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                                                                        <button type="button" class="btn" data-toggle="modal" data-target="#myModal">Add more question</button>
                                                                        <!-- btn-info btn-lg -->

                                                                    </div>

                                                                </div>

                                                                <%
                                                                                }
                                                                            }
                                                                        } catch (Exception ex) {
                                                                            out.println("What the hell is going on" + ex);
                                                                        }
                                                                       
                                                                    }

                                                                    //Staring answer programming....................................................
                                                                    if (ParametrVariable.equals("Answer")) {
                                                                        out.println("<center><div class=boxHeading> Answer </div></center>");
                                                                        Statement stmt_a = null, stmt_a2 = null;
                                                                        Connection con_a;
                                                                        ResultSet rs_a, rs_a2 = null;
                                                                        String Answer_given_by_user;
                                                                        int Question_id = 0;

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_a = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                        stmt_a = con_a.createStatement();
                                                                        stmt_a2 = con_a.createStatement();
                                                                        String Q_a = "SELECT q_id, SUBSTRING(answer,1,200) FROM answer WHERE Answer_by_id = '" + id_of_user + "'";
                                                                        rs_a = stmt_a.executeQuery(Q_a);
                                                                        int count = 0;
                                                                        while (rs_a.next()) {
                                                                            count++;
                                                                            Answer_given_by_user = rs_a.getString("SUBSTRING(answer,1,200)");
                                                                            Question_id = rs_a.getInt("q_id");

                                                                            String T_a = "SELECT * FROM question WHERE q_id = '" + Question_id + "'";
                                                                            rs_a2 = stmt_a2.executeQuery(T_a);
                                                                            while (rs_a2.next()) {
                                                                                String Question_by_user = rs_a2.getString("question");
                                                                %><br> Q. <a href="Answer.jsp?Id=<%=Question_by_user%>" ><%=Question_by_user%> ?</a><%
                                                                                out.println("<br>Ans.</b>&nbsp;&nbsp;&nbsp;&nbsp;" + Answer_given_by_user);
                                                                            }

                                                                        }
                                                                        if (count == 0) {
                                                                            out.println("<b style=color:red;>No answer posted yet !!</b>");
                                                                        }
                                                                        rs_a.close();
                                                                        stmt_a.close();
                                                                        rs_a2.close();
                                                                        stmt_a2.close();
                                                                        con_a.close();
                                                                    }
                                                                    if (ParametrVariable.equals("Topic")) {
                                                                        out.println("<center><div class=boxHeading> Followed Topic </div></center>");
                                                                        Statement stmt_fetch_topic;
                                                                        Connection con_fetch_topic;
                                                                        ResultSet rs_fetch_topic;
                                                                        String topic_name;
                                                                        try {

                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            con_fetch_topic = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                            stmt_fetch_topic = con_fetch_topic.createStatement();
                                                                            String p_fetch_topic = "select t.unique_id,t.topic_name from topic t "
                                                                                    + "right join topic_followers_detail de "
                                                                                    + "on t.unique_id = de.topic_id "
                                                                                    + "where user_or_followers_id= '" + ID + "'";
                                                                            rs_fetch_topic = stmt_fetch_topic.executeQuery(p_fetch_topic);
                                                                            int count = 0;

                                                                            while (rs_fetch_topic.next()) {
                                                                                count++;
                                                                                topic_name = rs_fetch_topic.getString("topic_name");
                                                                                topic_id = rs_fetch_topic.getInt("unique_id");
                                                                %><br> <a href="topic.jsp?id=<%=topic_id%>" >&nbsp;&nbsp;&nbsp;&nbsp;<%=topic_name%> </a><%
                                                                                //out.println("<br>" + topic_name);
                                                                            }
                                                                            if (count == 0) {
                                                                                out.println("<b style=color:red;>No Topic followed yet !!</b>");
                                                                            }
                                                                            try {
                                                                                if (session.getAttribute("email") != null) {
                                                                                    if (mail.equals(session.getAttribute("email"))) {
                                                                                        out.println("<br><a href=FollowMoreTopic.jsp> Follow more topic</a>");
                                                                                    }
                                                                                }
                                                                            } catch (Exception ex) {
                                                                                out.println("What the hell is going on" + ex);
                                                                            }

                                                                            rs_fetch_topic.close();
                                                                            stmt_fetch_topic.close();
                                                                            con_fetch_topic.close();

                                                                        } catch (Exception e) {
                                                                            out.println("Unable to retrieve!!" + e);
                                                                        }
                                                                    }
                                                                    if (ParametrVariable.equals("Following")) {
                                                                        out.println("<center><div class=boxHeading> Following </div></center>");
                                                                        Statement stmt_fetch_topic;
                                                                        Connection con_fetch_topic;
                                                                        ResultSet rs_fetch_topic;
                                                                        String topic_name;
                                                                        try {

                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            con_fetch_topic = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                            stmt_fetch_topic = con_fetch_topic.createStatement();
                                                                            String p_fetch_topic = "select user.ID,user.firstname,user.lastname,user.imagepath from newuser user right join ak_follower_detail ak on ak.user_id=user.ID where followers_id = '" + id_of_user + "'";
                                                                            rs_fetch_topic = stmt_fetch_topic.executeQuery(p_fetch_topic);
                                                                            int count = 0;

                                                                            while (rs_fetch_topic.next()) {
                                                                                count++;
                                                                                //topic_name = rs_fetch_topic.getString("topic_name");
                                                                                int userid = rs_fetch_topic.getInt("ID");
                                                                                String UserFirstName = rs_fetch_topic.getString("firstname");
                                                                                String UserLastName = rs_fetch_topic.getString("lastname");
                                                                                String Image_Path = rs_fetch_topic.getString("imagepath");
                                                                %>
                                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

                                                                    <img src="images/UploadedImage/<%=Image_Path%>" alt="" style="width:100%; border:1px solid #ddd;margin-top:20px;">
                                                                    <a href="profile.jsp?ID=<%=userid%>"> <%=UserFirstName + " " + UserLastName%></a>
                                                                </div>                
                                                                <%
                                                                            }
                                                                            if (count == 0) {
                                                                                out.println("<b style=color:red;>Not following any user !!</b>");
                                                                            }
                                                                            try {
                                                                                if (session.getAttribute("email") != null) {
                                                                                    if (mail.equals(session.getAttribute("email"))) {
                                                                                        out.println("<br><a href=UserProfile.jsp> Follow More User</a>");
                                                                                    }
                                                                                }
                                                                            } catch (Exception ex) {
                                                                                out.println("What the hell is going on" + ex);
                                                                            }

                                                                            rs_fetch_topic.close();
                                                                            stmt_fetch_topic.close();
                                                                            con_fetch_topic.close();

                                                                        } catch (Exception e) {
                                                                            out.println("Unable to retrieve!!" + e);
                                                                        }
                                                                    }
                                                                    if (ParametrVariable.equals("Followers")) {
                                                                        out.println("<center><div class=boxHeading> Followers </div></center>");
                                                                        Statement stmt_fetch_topic;
                                                                        Connection con_fetch_topic;
                                                                        ResultSet rs_fetch_topic;
                                                                        String topic_name;
                                                                        try {

                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            con_fetch_topic = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                            stmt_fetch_topic = con_fetch_topic.createStatement();
                                                                            String p_fetch_topic = "select user.ID,user.firstname,user.lastname,user.imagepath from newuser user right join ak_follower_detail ak on ak.followers_id=user.ID where user_id = '" + id_of_user + "'";
                                                                            rs_fetch_topic = stmt_fetch_topic.executeQuery(p_fetch_topic);
                                                                            int count = 0;

                                                                            while (rs_fetch_topic.next()) {
                                                                                count++;
                                                                                //topic_name = rs_fetch_topic.getString("topic_name");
                                                                                int userid = rs_fetch_topic.getInt("ID");
                                                                                String UserFirstName = rs_fetch_topic.getString("firstname");
                                                                                String UserLastName = rs_fetch_topic.getString("lastname");
                                                                                String Image_Path = rs_fetch_topic.getString("imagepath");
                                                                %>
                                                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

                                                                    <img src="images/UploadedImage/<%=Image_Path%>" alt="" style="width:100%; border:1px solid #ddd;margin-top:20px;">
                                                                    <a href="profile.jsp?ID=<%=userid%>"> <%=UserFirstName + " " + UserLastName%></a>
                                                                </div>                
                                                                <%
                                                                            }
                                                                            if (count == 0) {
                                                                                out.println("<b style=color:red;>Not followed by any user !!</b>");
                                                                            }
                                                                            rs_fetch_topic.close();
                                                                            stmt_fetch_topic.close();
                                                                            con_fetch_topic.close();

                                                                        } catch (Exception e) {
                                                                            out.println("Unable to retrieve!!" + e);
                                                                        }
                                                                    }
                                                                    if (ParametrVariable.equals("Jokes")) {
                                                                        out.println("<center><div class=boxHeading> Jokes </div></center>");
                                                                        Statement stmt_q = null;
                                                                        Connection con_q;
                                                                        ResultSet rs_q;
                                                                        String joke_posted_user;

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_q = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                        stmt_q = con_q.createStatement();
                                                                        String Q = "SELECT * FROM joke WHERE joke_posted_by = '" + id_of_user + "'";
                                                                        rs_q = stmt_q.executeQuery(Q);
                                                                        int count = 0;
                                                                        while (rs_q.next()) {
                                                                            count++;
                                                                            joke_posted_user = rs_q.getString("joke");
                                                                %> <br><%=joke_posted_user%> ?</a><%
                                                                        }
                                                                        if (count == 0) {
                                                                            out.println("<b style=color:red;>No jokes posted yet !!</b>");
                                                                        }
                                                                        try {
                                                                            if (session.getAttribute("email") != null) {
                                                                                if (mail.equals(session.getAttribute("email"))) {
                                                                                    out.println("<br><a href=popup.jsp> Add more joke</a>");
                                                                                }
                                                                            }
                                                                        } catch (Exception ex) {
                                                                            out.println("What the hell is going on" + ex);
                                                                        }
                                                                        rs_q.close();
                                                                        stmt_q.close();
                                                                        con_q.close();
                                                                    }

                                                                    if (ParametrVariable.equals("Quotes")) {
                                                                        out.println("<center><div class=boxHeading> Quotes </div></center>");
                                                                        Statement stmt_q = null;
                                                                        Connection con_q;
                                                                        ResultSet rs_q;
                                                                        String quotes;

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_q = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                        stmt_q = con_q.createStatement();
                                                                        String Q = "SELECT * FROM quotes WHERE quotes_posted_by = '" + id_of_user + "'";
                                                                        rs_q = stmt_q.executeQuery(Q);
                                                                        int count = 0;
                                                                        while (rs_q.next()) {
                                                                            count++;
                                                                            quotes = rs_q.getString("quotes");
                                                                %> <br><%=quotes%> ?</a><%
                                                                        }
                                                                        if (count == 0) {
                                                                            out.println("<b style=color:red;>No quotes posted yet !!</b>");
                                                                        }
                                                                        try {
                                                                            if (session.getAttribute("email") != null) {
                                                                                if (mail.equals(session.getAttribute("email"))) {
                                                                                    out.println("<br><a href=popup.jsp> Add more quotes</a>");
                                                                                }
                                                                            }
                                                                        } catch (Exception ex) {
                                                                            out.println("What the hell is going on" + ex);
                                                                        }
                                                                        rs_q.close();
                                                                        stmt_q.close();
                                                                        con_q.close();
                                                                    }

                                                                    if (ParametrVariable.equals("Story")) {
                                                                        out.println("<center><div class=boxHeading> Story </div></center>");
                                                                        Statement stmt_q = null;
                                                                        Connection con_q;
                                                                        ResultSet rs_q;
                                                                        String story_posted_by_user;

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_q = DriverManager.getConnection("jdbc:mysql://localhost:3306/bharat", "root", null);
                                                                        stmt_q = con_q.createStatement();
                                                                        String Q = "SELECT * FROM story WHERE story_posted_by = '" + id_of_user + "'";
                                                                        rs_q = stmt_q.executeQuery(Q);
                                                                        int count = 0;
                                                                        while (rs_q.next()) {
                                                                            count++;
                                                                            story_posted_by_user = rs_q.getString("story");
                                                                %> <br><%=story_posted_by_user%> ?</a><%
                                                                        }
                                                                        if (count == 0) {
                                                                            out.println("<b style=color:red;>No story posted yet !!</b>");
                                                                        }
                                                                        try {
                                                                            if (session.getAttribute("email") != null) {
                                                                                if (mail.equals(session.getAttribute("email"))) {
                                                                                    out.println("<br><a href=popup.jsp> Add your story</a>");
                                                                                }
                                                                            }
                                                                        } catch (Exception ex) {
                                                                            out.println("What the hell is going on" + ex);
                                                                        }
                                                                        rs_q.close();
                                                                        stmt_q.close();
                                                                        con_q.close();
                                                                    }

                                                                    if (ParametrVariable.equals("Blog")) {
                                                                        out.println("<center><div class=boxHeading> Blog </div></center>");
                                                                        Statement stmt_q = null;
                                                                        Connection con_q;
                                                                        ResultSet rs_q;
                                                                        String blog_posted_by_user;

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_q = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                        stmt_q = con_q.createStatement();
                                                                        String Q = "SELECT * FROM blog WHERE blog_posted_by = '" + id_of_user + "'";
                                                                        rs_q = stmt_q.executeQuery(Q);
                                                                        int count = 0;
                                                                        while (rs_q.next()) {
                                                                            count++;
                                                                            blog_posted_by_user = rs_q.getString("blog_subject");
                                                                            int Blog_id = rs_q.getInt("blog_id");
                                                                %> <br><a href="D_Blog.jsp?Blog_Id=<%=Blog_id%>"><%=blog_posted_by_user%></a><%
                                                                        }
                                                                        if (count == 0) {
                                                                            out.println("<b style=color:red;>No blog posted yet !!</b>");
                                                                        }
                                                                        try {
                                                                            if (session.getAttribute("email") != null) {
                                                                                if (mail.equals(session.getAttribute("email"))) {
                                                                                    out.println("<br><a href=WriteBlogHere.jsp> blog about something</a>");
                                                                                }
                                                                            }
                                                                        } catch (Exception ex) {
                                                                            out.println("What the hell is going on" + ex);
                                                                        }
                                                                        rs_q.close();
                                                                        stmt_q.close();
                                                                        con_q.close();
                                                                    }
                                                                    if (ParametrVariable.equals("Sayari")) {
                                                                        out.println("<center><div class=boxHeading> Sayari </div></center>");
                                                                        Statement stmt_q = null;
                                                                        Connection con_q;
                                                                        ResultSet rs_q;
                                                                        String sayari_posted_by_user;

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_q = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                        stmt_q = con_q.createStatement();
                                                                        String Q = "SELECT * FROM sayari WHERE sayari_posted_by = '" + id_of_user + "'";
                                                                        rs_q = stmt_q.executeQuery(Q);
                                                                        int count = 0;
                                                                        while (rs_q.next()) {
                                                                            count++;
                                                                            sayari_posted_by_user = rs_q.getString("sayari");
                                                                %> <br><%=sayari_posted_by_user%> ?</a><%
                                                                                }
                                                                                if (count == 0) {
                                                                                    out.println("<b style=color:red;>No Sayari posted yet !!</b>");
                                                                                }
                                                                                try {
                                                                                    if (session.getAttribute("email") != null) {
                                                                                        if (mail.equals(session.getAttribute("email"))) {
                                                                                            out.println("<br><a href=popup.jsp> Add sayari which you want to speak</a>");
                                                                                        }
                                                                                    }
                                                                                } catch (Exception ex) {
                                                                                    out.println("What the hell is going on" + ex);
                                                                                }
                                                                                rs_q.close();
                                                                                stmt_q.close();
                                                                                con_q.close();
                                                                            }

                                                                        } catch (Exception e) {
                                                                            out.println("Error:" + e);
                                                                        }
                                                                    }//IF statement closed here
                                                                %>

                                                                <div class="clear-fix"></div>
                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="row margintop10">


                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">

                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Post Your Question Here</h4>
                                                </div>
                                                <%if (session.getAttribute("email") != null) {%>
                                                <form name="submitquestion" method="post" action="SubmitQuestion.jsp">
                                                    <div class="modal-body">
                                                        <div>
                                                            <div>Put Your Question Here</div>                                                        
                                                            <textarea type="text" class="anstext" name="question" placeholder="Ex: What is,How to.." required=""></textarea></div>
                                                        <div class="margintop20">
                                                            <div>Provide at least two tag related to your question. separate tag using Coma(,) </div>
                                                            <textarea type="text" class="anstext" name="tag_of_question" placeholder="Ex : Java,Database,c language" required=""></textarea></div>
                                                        <!-- <p>Some text in the modal.</p> -->
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn">Post</button>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </form>
                                                <%} else {%>
                                                <div class="modal-body">
                                                    <div>
                                                        <div><h4 style="color: red;">Please Login first!!!</h4></div>
                                                        <div><a href="Login.jsp">Click here to login</a></div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">                                                    
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>

                                                <%}%>

                                            </div>

                                        </div>
                                    </div>
                                    <script type="text/javascript" src="vendor/jquery-2.1.4.js"></script>

                                    <script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script>

                                    <script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>
                                    </div> <!-- /.main-page-wrapper -->
                                    </body>
                                    </html>