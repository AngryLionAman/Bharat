<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
         <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
         <%
             String TOPIC_MAY_YOU_LIKE = "";
             String FOLLOW = "";
             String FOLLOWED = "";
              if (request.getParameter("lang") != "hindi") {
              TOPIC_MAY_YOU_LIKE = "विषय, आपको पसंद आ सकता है";
              FOLLOW = "फॉलो करे";
              FOLLOWED = "फॉलो कर चुके हैं";
                  
            } else {
              TOPIC_MAY_YOU_LIKE = "Topic, may you like";
              FOLLOW = "Follow";
              FOLLOWED = "Followed";
              }
            %>
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Follow More Topic | InquiryHere </title>
        <!-- Main style sheet -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <script type="text/javascript">

            function take_value(_topic_id, id_of_user) {
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
                http.open("POST", "http://localhost:8081/InquiryHere/submit_follow_topic.jsp?val_topic=" + _topic_id + "&val2_topic=" + id_of_user, true);
                http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                http.send();

                http.onload = function () {
                    http.responseText;
                    alert(http.responseText);
                    //}
                }
            <% }
                %>
            }
        </script>

    </head>

    <body>
        <div class="main-page-wrapper">
            <!-- Header _________________________________ -->
            <%@include file="header.jsp" %>
            <div class="bodydata">
                <div class="container clear-fix">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="themeBox" style="height:auto;margin-bottom:0px;">
                                        <div class="boxHeading">
                                           <%=TOPIC_MAY_YOU_LIKE%>
                                        </div>
                                        <%  Statement stmt_topic = null;
                                            Connection con_topic = null;
                                            ResultSet rs_topic = null;
                                            String name_topic = null;

                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                con_topic = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                stmt_topic = con_topic.createStatement();
                                                String p_topic = "SELECT * FROM topic";
                                                rs_topic = stmt_topic.executeQuery(p_topic);

                                                int i = 1;
                                                String Status = null;
                                                while (rs_topic.next()) {
                                                    int _topic_id = rs_topic.getInt("unique_id");
                                                    name_topic = rs_topic.getString("topic_name");
                                        %>   
                                        <div style="width:auto;height:52px;border:1px solid #000;float: left; margin-right: 5px; margin-bottom: 5px;" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                            <a href=topic.jsp?id=<%=_topic_id%>><%=name_topic%></a>
                                            <%
                                                Statement stmt_topic_followers;
                                                ResultSet rs_topic_followers;
                                                stmt_topic_followers = con_topic.createStatement();
                                                String topic_followers = "SELECT * FROM topic_followers_detail";
                                                rs_topic_followers = stmt_topic_followers.executeQuery(topic_followers);

                                                while (rs_topic_followers.next()) {
                                                    int f_topic_id = rs_topic_followers.getInt("topic_id");
                                                    int f_followers_id = rs_topic_followers.getInt("user_or_followers_id");

                                                    if ((f_topic_id == _topic_id) && (f_followers_id == id_of_user)) {
                                                        Status = "present";
                                                    }
                                                }
                                                stmt_topic_followers.close();
                                                rs_topic_followers.close();
                                            %>
                                            <%
                                                if (Status == "present")
                                                    out.println("<button>"+FOLLOWED+"</button>");
                                                else {%>
                                                <input type="button" value="<%=FOLLOW%>" id="myButton1" onclick="return take_value('<%=_topic_id%>', '<%=id_of_user%>');" />
                                            <% }
                                                        Status = null;
                                                        out.println("</div>");
                                                    }

                                                } catch (Exception e) {
                                                    out.println("Unable to retrieve!!=" + e);
                                                } finally {
                                                    stmt_topic.close();
                                                    con_topic.close();
                                                    rs_topic.close();

                                                }
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
                <script type="text/javascript" src="vendor/jquery-2.1.4.js"></script>
                <script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script>
                <script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>
            </div>
    </body>
</html>