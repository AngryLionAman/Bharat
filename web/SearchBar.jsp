<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
         <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
         <%
             String YOUR_ACTIVITY = "";
             String QUESTION = "";
             String ANSWER = "";
             String TOPIC = "";
             String USER_PROFILE = "";
             String ANS = "";
                         
            if (request.getParameter("lang") != "hindi") {
              YOUR_ACTIVITY = "आपकी गतिविधि";
              QUESTION = "प्रश्न";
              ANSWER = "उत्तर";
              TOPIC = "विषय";
              USER_PROFILE = "उपयोगकर्ता प्रोफ़ाइल";
              ANS = "उत्तर";
             
            } else {
              YOUR_ACTIVITY = "Your Activity";
              QUESTION = "Question";
              ANSWER = "Answer";
              TOPIC = "Topic";
              USER_PROFILE = "User Profile";
              ANS = "Ans";
             }
            %>
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Search | InquiryHere.com</title>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">

    </head>

    <body>
        <script type="text/javascript">

            function take_value(str) {
                //document.getElementById("demo").innerHTML = "Welcome" + firstname+lastname;

                var http = new XMLHttpRequest();
                http.open("POST", "http://localhost:8081/InquiryHere/SearchHint.jsp?str="+str, true);
                http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                http.send();

                http.onload = function () {
                    http.responseText;
                    document.getElementById("demo").innerHTML = http.responseText;
                    //alert(http.responseText);
                }

            }


        </script>
        <div class="main-page-wrapper">


            <!-- Header _________________________________ -->
           <%@include file="header.jsp" %>
                                    <div class="bodydata">
                                        <div class="container clear-fix">

                                            <div class="row">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                                                        <div class="themeBox" style="min-height:auto;">
                                                            <div class="boxHeading">
                                                                Your Activity
                                                            </div>
                                                            <div>
                                                                <a href="SearchBar.jsp?value=Question&search=<%=request.getParameter("search")%>"><%=QUESTION%></a><br>
                                                                <a href="SearchBar.jsp?value=Answer&search=<%=request.getParameter("search")%>"><%=ANSWER%></a><br>
                                                                <a href="SearchBar.jsp?value=Topic&search=<%=request.getParameter("search")%>"><%=TOPIC%></a><br>
                                                                <a href="SearchBar.jsp?value=UserProfile&search=<%=request.getParameter("search")%>"><%=USER_PROFILE%></a><br>
                                                            </div>

                                                        </div>

                                                    </div>
                                                            
                                                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="themeBox" style="height:auto;margin-bottom:0px;">
                                                                    <p id="demo"></p>
                                                                    <%
                                                                        String SearchValue = request.getParameter("search");
                                                                        String ParametrVariable = request.getParameter("value");
                                                                        if (ParametrVariable == null) {
                                                                            ParametrVariable = "Question";
                                                                        }
                                                                        if (ParametrVariable != null) {
                                                                            if (ParametrVariable.equals("Question")) {
                                                                                out.println("<center><div class=boxHeading>"+ QUESTION +"</div></center>");
                                                                                try {
                                                                                    Statement stmt_q = null;
                                                                                    Connection con_q;
                                                                                    ResultSet rs_q;
                                                                                    String Question_asked_by_user;

                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                    con_q = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
                                                                                    stmt_q = con_q.createStatement();
                                                                                    String Q = "SELECT * FROM question WHERE question LIKE '%" + SearchValue + "%'";
                                                                                    rs_q = stmt_q.executeQuery(Q);
                                                                                    int count = 1;
                                                                                    while (rs_q.next()) {
                                                                                        Question_asked_by_user = rs_q.getString("question");
                                                                    %> <br>Q. <a href="Answer.jsp?Id=<%=Question_asked_by_user%>" ><h6><%=Question_asked_by_user%> ?</h6></a><%
                                                                                }
                                                                                rs_q.close();
                                                                                stmt_q.close();
                                                                                con_q.close();
                                                                            } catch (Exception e1) {
                                                                                out.println("Error in Question search : " + e1);
                                                                            }
                                                                        }
                                                                        //Staring answer programming....................................................
                                                                        if (ParametrVariable.equals("Answer")) {
                                                                            out.println("<center><div class=boxHeading>"+ ANSWER+"</div></center>");
                                                                            try {
                                                                                Statement stmt_a = null, stmt_a2 = null;
                                                                                Connection con_a;
                                                                                ResultSet rs_a;
                                                                                ResultSet rs_a2 = null;
                                                                                String Answer_given_by_user;
                                                                                int Question_id = 0;

                                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                                con_a = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
                                                                                stmt_a = con_a.createStatement();
                                                                                stmt_a2 = con_a.createStatement();
                                                                                String Q_a = "SELECT * FROM answer WHERE answer LIKE '%" + SearchValue + "%'";
                                                                                rs_a = stmt_a.executeQuery(Q_a);
                                                                                int count = 1;
                                                                                while (rs_a.next()) {
                                                                                    Answer_given_by_user = rs_a.getString("answer");
                                                                                    Question_id = rs_a.getInt("q_id");
                                                                                    String T_a = "SELECT * FROM question WHERE q_id = '" + Question_id + "'";
                                                                                    rs_a2 = stmt_a2.executeQuery(T_a);
                                                                                    while (rs_a2.next()) {
                                                                                        String Question_by_user = rs_a2.getString("question");
                                                                    %><br> Q. <a href="Answer.jsp?Id=<%=Question_by_user%>" ><%=Question_by_user%> ?</a><%
                                                                                            out.println("<br>Ans.</b>&nbsp;&nbsp;&nbsp;&nbsp;" + Answer_given_by_user);
                                                                                        }

                                                                                    }
                                                                                    rs_a2.close();
                                                                                    stmt_a2.close();
                                                                                    rs_a.close();
                                                                                    stmt_a.close();
                                                                                    con_a.close();
                                                                                } catch (Exception e2) {
                                                                                    out.println("Error in Answer search : " + e2);
                                                                                }
                                                                            }
                                                                            //Starting the topic search program

                                                                            if (ParametrVariable.equals("Topic")) {
                                                                                out.println("<center><div class=boxHeading>"+ TOPIC +"</div></center>");
                                                                                try {
                                                                                    Statement stmt_t = null;
                                                                                    Connection con_t;
                                                                                    ResultSet rs_t;
                                                                                    String Topic_assgned_by_user;
                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                    con_t = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
                                                                                    stmt_t = con_t.createStatement();
                                                                                    String T = "SELECT * FROM topic WHERE topic_name LIKE '%" + SearchValue + "%'";
                                                                                    rs_t = stmt_t.executeQuery(T);
                                                                                    int count_ = 1;
                                                                                    while (rs_t.next()) {
                                                                                        Topic_assgned_by_user = rs_t.getString("topic_name");
                                                                                        int selected_topic_id = rs_t.getInt("unique_id");
                                                                                        out.print("<br><br>" + count_++ + "<b>&nbsp;&nbsp;<a href=topic.jsp?id=" + selected_topic_id + ">" + Topic_assgned_by_user + "</a></b>");

                                                                                    }
                                                                                    rs_t.close();
                                                                                    stmt_t.close();
                                                                                    con_t.close();
                                                                                } catch (Exception e) {
                                                                                    out.println("Error in Topic Search:" + e);
                                                                                }
                                                                            }
                                                                            //Satting the userprofile search option

                                                                            if (ParametrVariable.equals("UserProfile")) {
                                                                                out.println("<center><div class=boxHeading> "+USER_PROFILE+" </div></center>");
                                                                                try {
                                                                                    Statement stmt_t = null;
                                                                                    Connection con_t;
                                                                                    ResultSet rs_t;
                                                                                    String StoredUserFirstName, StoredUserLatName;
                                                                                    int StoredUserID;

                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                    con_t = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
                                                                                    stmt_t = con_t.createStatement();
                                                                                    String T = "SELECT * FROM newuser WHERE firstname LIKE '%" + SearchValue + "%' OR lastname LIKE '%" + SearchValue + "%'";
                                                                                    rs_t = stmt_t.executeQuery(T);
                                                                                    int count_ = 1;
                                                                                    while (rs_t.next()) {
                                                                                        StoredUserID = rs_t.getInt("ID");
                                                                                        StoredUserFirstName = rs_t.getString("firstname");
                                                                                        StoredUserLatName = rs_t.getString("lastname");

                                                                                        out.print("<br><br>" + count_++ + "<b>&nbsp;&nbsp;<a href=profile.jsp?ID=" + StoredUserID + ">" + StoredUserFirstName + " " + StoredUserLatName + "</a></b>");

                                                                                    }
                                                                                    rs_t.close();
                                                                                    stmt_t.close();
                                                                                    con_t.close();
                                                                                } catch (Exception e) {
                                                                                    out.println("Error in User profile search:" + e);
                                                                                }
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

                                        <!-- j Query -->
                                        <script type="text/javascript" src="vendor/jquery-2.1.4.js"></script>
                                        <script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script
                        <script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>
                                    </div> <!-- /.main-page-wrapper -->
                                    </body>
                                    </html>