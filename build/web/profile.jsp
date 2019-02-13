<!DOCTYPE html>
<html lang="en">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
    <%
        String EMAIL = "";
        String PASSWORD = "";
        String HOME = "";
        String LOGIN = "";
        String SIGNUP = "";
        String SEARCH = "";
        String PROFILE = "";
        String CONTACT_US = "";
        String ABOUT_US = "";
        String LOGOUT = "";
        String SELECT = "";
        String PROFILE_DETAILS = "";
        String UPDATE_YOUR_PROFILE_IMAGE = "";
        String NAME = "";
        String MAIL_ID = "";
        String HIGHER_QUALIFICATION = "";
        String BEST_ACHIEVEMENT = "";
        String BIO = "";
        String COMPLETE_YOUR_PROFILE = "";
        String YOUR_ACTIVITY = "";
        String QUESTION = "";
        String ANSWER = "";
        String TOPIC_FOLLOWED = "";
        String FOLLOWING = "";
        String FOLLOWERS = "";
        String BLOG = "";
        String QUOTES = "";
        String ADD_MORE_QUESTION = "";
        String FOLLOW_MORE_TOPIC = "";
        String NOT_FOLLOWING_ANY_USER = "";
        String FOLLOW_MORE_USER = "";
        String NO_BLOG_POSTED_YET = "";
        String BLOG_ABOUT_SOMETHING = "";
        String NO_QUESTES_POSTED_YET = "";
        String ADD_MORE_QUOTES = "";
        String NOT_FOLLOWED_BY_ANY_USER = "";

        String POST_YOUR_QUESTION_HERE = "";
        String PLEASE_LOGIN_FIRST = "";
        String CLOSE = "";
        String CLICK_HERE_TO_LOGIN = "";
        String FOLLOWED_TOPIC = "";
        String CLICK_HERE_TO_MORE_TOPIC = "";
        String PUT_YOUR_QUESTION_HERE = "";
        String EX = "";
        String TAG_SUGGESTION_DESCRIPTION = "";
        String TAG_EXMAPLE = "";
        String POST = "";

        if (request.getParameter("lang") == "eng") {
            EMAIL = "Email";
            PASSWORD = "Password";
            HOME = "Home";
            LOGIN = "Login";
            SIGNUP = "SignUp";
            SEARCH = "Search";

            PROFILE = "Profile";
            CONTACT_US = "contact Us";
            ABOUT_US = "About Us";
            LOGOUT = "Logout";
            SELECT = "Select";

            PROFILE_DETAILS = "Profile Details ";
            UPDATE_YOUR_PROFILE_IMAGE = "Update your profile image";
            NAME = "Name ";
            MAIL_ID = "Mail Id ";
            HIGHER_QUALIFICATION = "Higher Qualification ";
            BEST_ACHIEVEMENT = "Best Achievement";
            BIO = "Bio ";
            COMPLETE_YOUR_PROFILE = "Complete your profile";
            YOUR_ACTIVITY = "Your Activity ";
            QUESTION = "Question";
            ANSWER = "Answer";
            TOPIC_FOLLOWED = "Topic Followed";
            FOLLOWING = "Following";
            FOLLOWERS = "Followers";
            BLOG = "Blog";
            QUOTES = "Quotes";
            ADD_MORE_QUESTION = "Add more question";
            FOLLOW_MORE_TOPIC = "Follow more topic";
            NOT_FOLLOWING_ANY_USER = "Not following any user";
            FOLLOW_MORE_USER = "Follow More User";
            NO_BLOG_POSTED_YET = "No blog posted yet";
            BLOG_ABOUT_SOMETHING = "blog about something";
            NO_QUESTES_POSTED_YET = "No quotes posted yet";

            ADD_MORE_QUOTES = "Add more quotes";
            NOT_FOLLOWED_BY_ANY_USER = "Not followed by any user";

            POST_YOUR_QUESTION_HERE = "Post Your Question Here";
            PLEASE_LOGIN_FIRST = "Please Lgin First";
            CLOSE = "Close";
            CLICK_HERE_TO_LOGIN = "Click here to login";

            FOLLOWED_TOPIC = "Followed Topic";
            CLICK_HERE_TO_MORE_TOPIC = "Click here to more topic";
            PUT_YOUR_QUESTION_HERE = "Put Your Question Here";
            EX = "Ex: What is,How to..";
            TAG_SUGGESTION_DESCRIPTION = "Provide at least two tag related to your question. separate tag using Coma(,)";
            TAG_EXMAPLE = "Ex:Java,Database,c language";
            POST = "post";

        } else {
            EMAIL = "ईमेल";
            PASSWORD = "पासवर्ड";
            HOME = "होम";
            LOGIN = "लॉग इन करें";
            SIGNUP = "नया खाता बनाएँ";
            SEARCH = "खोजे";

            PROFILE = "प्रोफ़ाइल";
            CONTACT_US = "हमसे संपर्क करें";
            ABOUT_US = "हमारे बारे में";
            LOGOUT = "बाहर जाये";
            SELECT = "चयन करें";

            PROFILE_DETAILS = "प्रोफ़ाइल का विवरण";
            UPDATE_YOUR_PROFILE_IMAGE = "अपनी प्रोफ़ाइल छवि को अपडेट करें";
            NAME = "नाम";
            MAIL_ID = "ईमेल आईडी";
            HIGHER_QUALIFICATION = "उच्च योग्यता";
            BEST_ACHIEVEMENT = "सबसे अच्छी उपलब्धि";
            BIO = "आपके बारे में";
            COMPLETE_YOUR_PROFILE = "अपनी प्रोफाइल पूरी कीजिए";
            YOUR_ACTIVITY = "आपकी गतिविधि";
            QUESTION = "प्रशन";
            ANSWER = "उत्तर";
            TOPIC_FOLLOWED = "विषय का पालन किया";
            FOLLOWING = "आपने जिसको अनुशरण किया";
            FOLLOWERS = "अनुसरण करने वाले शिष्य";
            BLOG = "ब्लॉग";
            QUOTES = "उल्लेख";
            ADD_MORE_QUESTION = "एक और सवाल जोड़ें";
            FOLLOW_MORE_TOPIC = "अधिक विषय का पालन करें";
            NOT_FOLLOWING_ANY_USER = "किसी भी उपयोगकर्ता का अनुसरण नहीं कर रहे है";
            FOLLOW_MORE_USER = "अधिक उपयोगकर्ता का पालन करें";
            NO_BLOG_POSTED_YET = "अभी तक कोई ब्लॉग पोस्ट नहीं किया गया";
            BLOG_ABOUT_SOMETHING = "किसी चीज के बारे में ब्लॉग";
            NO_QUESTES_POSTED_YET = "अभी तक कोई उद्धरण पोस्ट नहीं किया गया है";

            ADD_MORE_QUOTES = "अधिक उद्धरण जोड़ें";
            NOT_FOLLOWED_BY_ANY_USER = "किसी भी उपयोगकर्ता द्वारा पीछा नहीं किया गया";

            POST_YOUR_QUESTION_HERE = "यहाँ अपना प्रश्न डाले";
            PLEASE_LOGIN_FIRST = "पहले प्रवेश करें";
            CLOSE = "बंद करे";
            CLICK_HERE_TO_LOGIN = "लॉग इन करने के लिए यहां क्लिक करें";

            FOLLOWED_TOPIC = "विषय जो आपको पसंद है";
            CLICK_HERE_TO_MORE_TOPIC = "अधिक विषय के लिए यहां क्लिक करें";
            PUT_YOUR_QUESTION_HERE = "अपना प्रश्न यहाँ रखें";
            EX = "उदाहरण :कैसे है ,क्या है ";
            TAG_SUGGESTION_DESCRIPTION = "अपने प्रश्न से संबंधित कम से कम दो टैग प्रदान करें। कोमा (,) का उपयोग करके अलग करे";
            TAG_EXMAPLE = "उदाहरण :विज्ञान,भौतिक , रसायन विज्ञान  ";
            POST = "post";
        }
    %>
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
            <% }%>
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
                                                <button type="submit" style="float: right;width: 50px;" /><%=SEARCH%></button>
                                            </form>
                                        </div>


                                    </div>

                                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right">
                                        <a  href="index.jsp" class="helpicon" style="color: white; width: 50px;"><%=HOME%></a>
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
                                            <option value="Login.jsp"><%=SELECT%></option>
                                            <option value="Login.jsp"><%=LOGIN%></option>
                                            <option value="AboutUs.html"><%=ABOUT_US%></option>
                                            <option value="ContactUs.jsp"><%=CONTACT_US%></option>

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
                                            <option value="profile.jsp?ID=<%=id_of_user%>"><%=PROFILE%></option>                                            
                                            <option value="AboutUs.html"><%=ABOUT_US%></option>
                                            <option value="ContactUs.jsp"><%=CONTACT_US%></option>
                                            <option value="Logout.jsp"><%=LOGOUT%></option>
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
                                                            <%=PROFILE_DETAILS%>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                                            <img src="images/UploadedImage/<%=ImagePath%>" alt="Image" style="width:90%; margin:10px 0px 0px; border:1px solid #ddd;">
                                                            <%
                                                                if (session.getAttribute("email") != null) {
                                                                    if (mail.equals(session.getAttribute("email"))) {
                                                                        out.println("<a href=UpdateUserProfile.jsp>" + UPDATE_YOUR_PROFILE_IMAGE + "</a>");
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
                                                                                out.println("<button>" + FOLLOWING + "</button>");
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
                                                                    <td><%=NAME%> </td>
                                                                    <td>: <%=firstname + " " + lastname%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><%=MAIL_ID%> </td>
                                                                    <td>: <%=mail%></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><%=HIGHER_QUALIFICATION%> </td>
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
                                                                    <td><%=BEST_ACHIEVEMENT%></td>
                                                                    <td>: <%
                                                                        if (BestAchievement == null || BestAchievement.isEmpty()) {
                                                                            out.println("Not provided yet");
                                                                        } else {
                                                                            out.println(BestAchievement);
                                                                        }
                                                                        %></td>
                                                                </tr>
                                                                <tr>
                                                                    <td><%=BIO%> </td>
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
                                                                    <td><a href="UpdateUserProfile.jsp"><%=COMPLETE_YOUR_PROFILE%></a></td>  

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
                                                            <%=YOUR_ACTIVITY%>
                                                        </div>
                                                        <div>
                                                            <a href="profile.jsp?value=Question&ID=<%=ID%>"><%=QUESTION%></a><br>
                                                            <a href="profile.jsp?value=Answer&ID=<%=ID%>"><%=ANSWER%></a><br>
                                                            <a href="profile.jsp?value=Topic&ID=<%=ID%>"><%=TOPIC_FOLLOWED%></a><br>
                                                            <a href="profile.jsp?value=Following&ID=<%=ID%>"><%=FOLLOWING%></a><br>
                                                            <a href="profile.jsp?value=Followers&ID=<%=ID%>"><%=FOLLOWERS%></a><br>
                                                            <a href="profile.jsp?value=Blog&ID=<%=ID%>"><%=BLOG%></a><br>
                                                            <a href="profile.jsp?value=Quotes&ID=<%=ID%>"><%=QUOTES%></a><br>
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
                                                                                out.println("<center><div class=boxHeading>" + QUESTION + "</div></center>");
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

                                                                        <button type="button" class="btn" data-toggle="modal" data-target="#myModal"><%=ADD_MORE_QUESTION%></button>
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
                                                                        out.println("<center><div class=boxHeading>" + ANSWER + "</div></center>");
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
                                                                        out.println("<center><div class=boxHeading>" + TOPIC_FOLLOWED + "</div></center>");
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
                                                                                if (topic_name != null) {
                                                                %><br> <a href="topic.jsp?id=<%=topic_id%>" >&nbsp;&nbsp;&nbsp;&nbsp;<%=topic_name%> </a><%
                                                                                    //out.println("<br>" + topic_name);
                                                                                }
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
                                                                        out.println("<center><div class=boxHeading>" + FOLLOWING + "</div></center>");
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
                                                                                out.println("<b style=color:red;>" + NOT_FOLLOWING_ANY_USER + "!!</b>");
                                                                            }
                                                                            try {
                                                                                if (session.getAttribute("email") != null) {
                                                                                    if (mail.equals(session.getAttribute("email"))) {
                                                                                        out.println("<br><a href=UserProfile.jsp>" + FOLLOW_MORE_USER + "</a>");
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
                                                                        out.println("<center><div class=boxHeading>" + FOLLOWERS + "</div></center>");
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
                                                                                out.println("<b style=color:red;>" + NOT_FOLLOWED_BY_ANY_USER + "!!</b>");
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
                                                                        out.println("<center><div class=boxHeading>" + QUOTES + "</div></center>");
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
                                                                            out.println("<b style=color:red;>" + NO_QUESTES_POSTED_YET + "!!</b>");
                                                                        }
                                                                        try {
                                                                            if (session.getAttribute("email") != null) {
                                                                                if (mail.equals(session.getAttribute("email"))) {
                                                                                    out.println("<br><a href=popup.jsp>" + ADD_MORE_QUOTES + "</a>");
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
                                                                        out.println("<center><div class=boxHeading>" + BLOG + "</div></center>");
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
                                                                            out.println("<b style=color:red;>" + NO_BLOG_POSTED_YET + "!!</b>");
                                                                        }
                                                                        try {
                                                                            if (session.getAttribute("email") != null) {
                                                                                if (mail.equals(session.getAttribute("email"))) {
                                                                                    out.println("<br><a href=WriteBlogHere.jsp>" + BLOG_ABOUT_SOMETHING + "</a>");
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
                                                    <h4 class="modal-title"><%=POST_YOUR_QUESTION_HERE%></h4>
                                                </div>
                                                <%if (session.getAttribute("email") != null) {%>
                                                <form name="submitquestion" method="post" action="SubmitQuestion.jsp">
                                                    <div class="modal-body">
                                                        <div>
                                                            <div><%=PUT_YOUR_QUESTION_HERE%></div>                                                        
                                                            <textarea type="text" class="anstext" name="question" placeholder="<%=EX%>" required=""></textarea></div>
                                                        <div class="margintop20">
                                                            <div><%=TAG_SUGGESTION_DESCRIPTION%> </div>
                                                            <textarea type="text" class="anstext" name="tag_of_question" placeholder="<%=TAG_EXMAPLE%>" required=""></textarea></div>
                                                        <!-- <p>Some text in the modal.</p> -->
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn"><%=POST%></button>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal"><%=CLOSE%></button>
                                                    </div>
                                                </form>
                                                <%} else {%>
                                                <div class="modal-body">
                                                    <div>
                                                        <div><h4 style="color: red;"><%=PLEASE_LOGIN_FIRST%>!!!</h4></div>
                                                        <div><a href="Login.jsp"><%=CLICK_HERE_TO_LOGIN%></a></div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">                                                    
                                                    <button type="button" class="btn btn-default" data-dismiss="modal"><%=CLOSE%></button>
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