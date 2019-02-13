<html lang="en"><head>
         <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta charset="UTF-8">
        <%
            String RELATED_QUESTION = "";
            String RELATED_TOPIC = "";
               if (request.getParameter("lang") == "eng") {
                RELATED_QUESTION = "Related Question";
                RELATED_TOPIC = "Related Topic";
                 } else {
                RELATED_QUESTION = "संबंधित प्रश्न";
                RELATED_TOPIC ="संबंधित विषय";
                    }
        %>
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Topic | InquiryHere.com</title>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">

    </head>

    <body>
        <div class="main-page-wrapper">
            <%@include file="header.jsp" %>
            <div class="clear-fix"></div>
            <div class="bodydata">
                <div class="container clear-fix">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="themeBox" style="height:auto;">
                                        <center> 
                                            <div class="boxHeading">
                                                <%                                                                            // String Topic_id = request.getParameter("id");
                                                    String str = request.getParameter("id");
                                                    String Topic_id = "";
                                                    if (str != null && !(str.isEmpty())) {
                                                        for (int i = 0; i < str.length(); i++) {
                                                            if (str.charAt(i) > 47 && str.charAt(i) < 58) {
                                                                Topic_id += str.charAt(i);
                                                            }
                                                        }

                                                        Statement stmt;
                                                        Connection con;
                                                        ResultSet rs;
                                                        try {
                                                            Class.forName("com.mysql.jdbc.Driver");
                                                            con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                            stmt = con.createStatement();
                                                            String v = "SELECT * FROM topic WHERE unique_id = '" + Topic_id + "'";
                                                            rs = stmt.executeQuery(v);
                                                            while (rs.next()) {
                                                                String TopicName = rs.getString("topic_name");
                                                                out.println(TopicName);
                                                            }
                                                            rs.close();
                                                            stmt.close();
                                                            con.close();
                                                        } catch (Exception e) {
                                                            out.println(e.getMessage());
                                                        }
                                                    } else {
                                                        response.sendRedirect("FollowMoreTopic.jsp");
                                                    }
                                                %>
                                            </div>
                                        </center>
                                        <div class="clear-fix"></div>
                                    </div>
                                    <div class="themeBox" style="height:auto;">
                                        <div>
                                            <h4><%=RELATED_QUESTION%></h4>
                                            <%
                                                Statement stmt_detail;
                                                Connection con_detail;
                                                ResultSet rs_detail;
                                                String question_detail;
                                                try {

                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    con_detail = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                    stmt_detail = con_detail.createStatement();
                                                    String q_detail = "select q.id,q.question,q.q_id from question q right join question_topic_tag qtt on qtt.question_id=q.q_id where tag_id='" + Topic_id + "'";
                                                    rs_detail = stmt_detail.executeQuery(q_detail);
                                                    int count = 0;
                                                    while (rs_detail.next()) {
                                                        question_detail = rs_detail.getString("question");
                                                        if (question_detail != null) {
                                                            count++;
                                            %><br>Q.<a href="Answer.jsp?Id=<%=question_detail%>" >&nbsp;<%=question_detail%> ?</a><%
                                                            //out.println("<br>" + question_detail);
                                                        }
                                                    }
                                                    rs_detail.close();
                                                    stmt_detail.close();
                                                    con_detail.close();

                                                    if (count == 0) {
                                                        out.println("<center><b style=color:red;>No related question found!!</b></center>");
                                                    }
                                                } catch (Exception e) {
                                                    out.println("<br><b>Question Not Found...</b>" + e);
                                                }
                                            %>
                                        </div>

                                        <div class="clear-fix"></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                            <div class="themeBox" style="height:auto;">
                                <div class="boxHeading">
                                    <%=RELATED_TOPIC%>
                                </div>
                                <div>
                                    <%
                                        Statement stmt_related_topic;
                                        Connection con_related_topic;
                                        ResultSet rs_related_topic;
                                        int countQ = 0;
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con_related_topic = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                            stmt_related_topic = con_related_topic.createStatement();
                                            String p_related_topic = "select DISTINCT "
                                                    + "t.unique_id,t.topic_name from topic t "
                                                    + "right join question_topic_tag qtt "
                                                    + "on t.unique_id=qtt.tag_id where question_id "
                                                    + "IN (select question_id from question_topic_tag where tag_id='" + Topic_id + "')";
                                            rs_related_topic = stmt_related_topic.executeQuery(p_related_topic);

                                            while (rs_related_topic.next()) {
                                                int unique_id = rs_related_topic.getInt("unique_id");
                                                String topic_nameA = rs_related_topic.getString("topic_name");
                                                if (Integer.valueOf(Topic_id) != unique_id) {
                                                    if (topic_nameA != null) {
                                                        countQ++;
                                    %><li><a href="topic.jsp?id=<%=unique_id%>"><%=topic_nameA%></a></li><%}
                                                }
                                            }
                                            if (countQ == 0) {
                                                out.println("<br>No Related Tag Found !!");
                                            }
                                            rs_related_topic.close();
                                            stmt_related_topic.close();
                                            con_related_topic.close();
                                        } catch (Exception e) {
                                            out.println("Unable to retrieve!!" + e);
                                        }
                                        %>    
                                </div>

                            </div>
                            <div class="clear-fix"></div>

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
        </div> <!-- /.main-page-wrapper -->
    </body></html>