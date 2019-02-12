<html lang="en"><head>
        <%String Question = request.getParameter("Id");%>
        <script src="ckeditor/ckeditor.js"></script>
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-8778688755733551",
    enable_page_level_ads: true
  });
</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128307055-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-128307055-1');
</script> 
        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <%@page language="java" %>
        <%@page import="java.sql.*" %> 
        <%@include file="site.jsp" %>
        <%
            Statement stmt1, stmt6, stmt5 = null;
            Connection con1;
            ResultSet rs1, rs6, rs5 = null;
            int q_id = 0;
            int q_asked_by_user = 0;
            String StoredQuestion = "";
            String StoredAnswer = "";
            int StoredQuestionId;
            String firstname_of_user_who_asked_the_question = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                stmt1 = con1.createStatement();
                String p = "SELECT * FROM question WHERE question = '" + Question + "'";
                rs1 = stmt1.executeQuery(p);
                while (rs1.next()) {
                    StoredQuestion = rs1.getString("question");
                    StoredQuestionId = rs1.getInt("q_id");
                    stmt6 = con1.createStatement();
                    String p6 = "SELECT SUBSTRING(answer,1,500) FROM answer WHERE q_id = '" + StoredQuestionId + "'";
                    rs6 = stmt6.executeQuery(p6);
                    while (rs6.next()) {
                        StoredAnswer = rs6.getString("SUBSTRING(answer,1,500)");
                    }
                    stmt6.close();
                    rs6.close();
                }
                stmt1.close();
                con1.close();
                rs1.close();
            } catch (Exception e) {
                out.println("Unable to retrieve!!" + e);
            }
        %>
        <title><%=StoredQuestion%></title>
        <meta property="og:title" content="<%=StoredQuestion%>" />
        <meta property="og:description" content="<%=StoredAnswer%>"/>
        <meta property="og:url" content="https://www.inquiryhere.com/">
        <meta property="og:site_name" content="https://www.inquiryhere.com/" />
        <meta property="og:image" content="https://www.inquiryhere.com/images/logo/inquiryhere_Logo.PNG" />
        <meta property="og:type" content="website">
        <meta property="og:locale" content="en_US">


    </head>

    <body>
        <div class="main-page-wrapper">
            <!-- Header _________________________________ -->
             <%@include file="header.jsp" %>
                 <div class="clear-fix"></div>
                                    <div class="bodydata">
                                        <div class="container clear-fix">
                                            <div class="row">
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <%  if (session.getAttribute("email") == null) { %>
                                                    <div class="themeBox" style="height:auto;">
                                                        <div class="boxHeading">
                                                            Topic You May Like
                                                        </div>
                                                        <div>
                                                            <ul>
                                                                <%
                                                                    Statement stmt_fetch_topic;
                                                                    Connection con_fetch_topic;
                                                                    ResultSet rs_fetch_topic;
                                                                    String topic_name;
                                                                    try {

                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con_fetch_topic = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                                        stmt_fetch_topic = con_fetch_topic.createStatement();
                                                                        String p_fetch_topic = "select * from topic LIMIT 50,20";
                                                                        rs_fetch_topic = stmt_fetch_topic.executeQuery(p_fetch_topic);
                                                                        while (rs_fetch_topic.next()) {
                                                                            topic_name = rs_fetch_topic.getString("topic_name");
                                                                            topic_id = rs_fetch_topic.getInt("unique_id");
                                                                            if (topic_id != 0) {%>
                                                                <li><a href="topic.jsp?id=<%=topic_id%>"><%=topic_name%></a></li>
                                                                    <% }
                                                                            }
                                                                            rs_fetch_topic.close();
                                                                            stmt_fetch_topic.close();
                                                                            con_fetch_topic.close();
                                                                        } catch (Exception e) {
                                                                            out.println("Unable to retrieve!!" + e);
                                                                        }
                                                                    %>
                                                            </ul>
                                                        </div>



                                                    </div> <% } %>
                                                    <%
                                                        if (session.getAttribute("email") != null) {
                                                    %>

                                                    <div class="themeBox" style="height:auto;">
                                                        <div class="boxHeading" >
                                                            Followed Topic
                                                        </div>

                                                        <%
                                                            Statement stmt_fetch_topic;
                                                            Connection con_fetch_topic;
                                                            ResultSet rs_fetch_topic;
                                                            String topic_name;
                                                            try {

                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                con_fetch_topic = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                                stmt_fetch_topic = con_fetch_topic.createStatement();
                                                                String p_fetch_topic = "select t.unique_id,t.topic_name from topic t "
                                                                        + "right join topic_followers_detail de "
                                                                        + "on t.unique_id = de.topic_id "
                                                                        + "where user_or_followers_id= '" + id_of_user + "'";
                                                                rs_fetch_topic = stmt_fetch_topic.executeQuery(p_fetch_topic);
                                                                while (rs_fetch_topic.next()) {
                                                                    topic_name = rs_fetch_topic.getString("topic_name");
                                                                    topic_id = rs_fetch_topic.getInt("unique_id");
                                                                    if (topic_id != 0) {%>
                                                        <li><a href="topic.jsp?id=<%=topic_id%>"><%=topic_name%></a></li>
                                                            <% }
                                                                    }
                                                                    rs_fetch_topic.close();
                                                                    stmt_fetch_topic.close();
                                                                    con_fetch_topic.close();
                                                                } catch (Exception e) {
                                                                    out.println("Unable to retrieve!!" + e);
                                                                }
                                                            %>
                                                    </div>  <% } %>

                                                    <div class="clear-fix"></div>
                                                    <div class="clear-fix"></div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                                                    <div class="row">

                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <%
                                                                Statement stmt;
                                                                Connection con;
                                                                ResultSet rs = null;
                                                                int _id_of_user = 0;
                                                              try {
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                                    stmt = con.createStatement();
                                                                    String p = "SELECT * FROM newuser WHERE email = '" + email + "'";
                                                                    rs = stmt.executeQuery(p);
                                                                    while (rs.next()) {
                                                                        _id_of_user = rs.getInt("id");
                                                                        name = rs.getString("firstname");
                                                                    }
                                                                    rs.close();
                                                                    stmt.close();
                                                                    con.close();
                                                                } catch (Exception e) {
                                                                    out.println("Unable to retrieve!!" + e);
                                                                }
                                                            %>


                                                            <div class="themeBox" style="height:auto;">

                                                                <div class="boxHeading marginbot10">

                                                                    Ques : <%=Question%> ?
                                                                </div>
                                                                <%
                                                                    try {
                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        con1 = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                                        stmt1 = con1.createStatement();
                                                                        stmt5 = con1.createStatement();
                                                                        String p = "SELECT * FROM question WHERE question = '" + Question + "'";
                                                                        rs1 = stmt1.executeQuery(p);
                                                                        while (rs1.next()) {
                                                                            q_id = rs1.getInt("q_id");
                                                                            q_asked_by_user = rs1.getInt("id");
                                                                            String T = "SELECT firstname FROM newuser WHERE id='" + q_asked_by_user + "' ";
                                                                            rs5 = stmt5.executeQuery(T);
                                                                            while (rs5.next()) {
                                                                                firstname_of_user_who_asked_the_question = rs5.getString("firstname");
                                                                            }
                                                                        }
                                                                        stmt1.close();
                                                                        stmt5.close();
                                                                        con1.close();
                                                                        rs1.close();
                                                                        rs5.close();
                                                                    } catch (Exception e) {
                                                                        out.println("Unable to retrieve!!" + e);
                                                                    }
                                                                %>
                                                                <div class="questionArea">

                                                                    <div class="postedBy">Posted By :<a href="profile.jsp?ID=<%=q_asked_by_user%>"><%=firstname_of_user_who_asked_the_question%></a> </div>

                                                                </div>

                                                            </div>
                                                            <div class="boxHeading marginbot10">Answer:</div>

                                                            <%
                                                                Statement stmt2, stmt4 = null;
                                                                Connection con2, con4;
                                                                ResultSet rs2;
                                                                ResultSet rs4 = null;
                                                                int who_gave_answer = 0;

                                                                try {
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    con2 = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                                    stmt2 = con2.createStatement();
                                                                    stmt4 = con2.createStatement();
                                                                    String p = "SELECT * FROM answer WHERE q_id = '" + q_id + "'";
                                                                    int count = 0;
                                                                    rs2 = stmt2.executeQuery(p);
                                                                    while (rs2.next()) {
                                                                        count++;
                                                                        String answer = rs2.getString("answer");
                                                                        who_gave_answer = rs2.getInt("Answer_by_id");

                                                                        String T = "SELECT firstname FROM newuser WHERE id='" + who_gave_answer + "' ";
                                                                        rs4 = stmt4.executeQuery(T);
                                                                        while (rs4.next()) {
                                                                            String firstname = rs4.getString("firstname");
                                                                            //out.print(firstname);%>
                                                            <div class="themeBox" style="height:auto;">
                                                                <div class="boxHeading marginbot10" style="font-size: 15px;font-family: Arial, Helvetica, sans-serif;">
                                                                    <%=answer%> 
                                                                </div>
                                                                <div class="questionArea">
                                                                    <div class="postedBy">Answered By :<a href="profile.jsp?ID=<%=who_gave_answer%>"><%=firstname%></a> </div>
                                                                </div>
                                                            </div>
                                                            <%
                                                                    }
                                                                    
                                                                }
                                                                if (count == 0) {
                                                            %>
                                                            <div class="themeBox" style="height:auto;">
                                                                <div class="boxHeading marginbot10">
                                                                    Be the first person to answer this question
                                                                </div>
                                                            </div>
                                                            <%
                                                                    }
                                                                    rs4.close();
                                                                    stmt4.close();
                                                                    stmt2.close();
                                                                    rs2.close();
                                                                    con2.close();
                                                                } catch (Exception e) {
                                                                    //out.println("Unable to retrieve!!" + e);
                                                                }
                                                            %>
                                                            <form name="submitquestion" method="post" action="SubmitAnswer.jsp?_id_of_user=<%=_id_of_user%>&q_id=<%=q_id%>&URL=<%=request.getRequestURL() + "?" + request.getQueryString()%>">
                                                                <textarea class="ckeditor" name="answer" required=""></textarea>
                                                                <input type="submit" name="Post" value="Submit"> 
                                                            </form>


                                                            <div class="clear-fix"></div>

                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

                                                    <div class="themeBox" style="height:500px;overflow-y: auto;">
                                                        <div class="boxHeading">
                                                            Related Question
                                                        </div>
                                                        <div>
                                                            <%
                                                                Statement stmt_detail = null;
                                                                ResultSet rs_detail = null;
                                                                int RelatedTag;
                                                                String question_detail;
                                                                try {
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                                    stmt = con.createStatement();
                                                                    stmt_detail = con.createStatement();
                                                                    String v = "SELECT * FROM question_topic_tag WHERE question_id = '" + q_id + "'";
                                                                    rs = stmt.executeQuery(v);
                                                                    int count = 0;
                                                                    while (rs.next()) {
                                                                        RelatedTag = rs.getInt("tag_id");
                                                                        String q_detail = "select DISTINCT q.id,q.question,q.q_id from question q "
                                                                                + "right join question_topic_tag qtt on qtt.question_id=q.q_id where tag_id='" + RelatedTag + "'";
                                                                        rs_detail = stmt_detail.executeQuery(q_detail);
                                                                        while (rs_detail.next()) {
                                                                            question_detail = rs_detail.getString("question");
                                                                            int questionID = rs_detail.getInt("q_id");
                                                                            if (questionID != q_id) {
                                                                                if (question_detail != null) { 
                                                                                count++;
                                                            %>
                                                            <a href="Answer.jsp?Id=<%=question_detail%>" ><%=question_detail%></a><br><br>
                                                            <%
                                                                                }
                                                                                
                                                                            }
                                                                        }
                                                                        
                                                                    }if(count == 0) out.println("   No Reaalted Question Found !!!");
                                                                    rs_detail.close();
                                                                    stmt_detail.close();
                                                                    stmt.close();
                                                                    rs.close();
                                                                    con.close();
                                                                } catch (Exception e) {
                                                                    //out.println("Exception in Related question"+e);
                                                                }
                                                            %>
                                                        </div>

                                                    </div>
                                                    <%
                                                        if (session.getAttribute("email") != null) {
                                                    %>
                                                    <div class="themeBox" style="height:auto;">
                                                        <div class="boxHeading">
                                                            Complete Your Profile
                                                        </div>
                                                        <div><jsp:include page="CompleteUserProfile.jsp" /></div>

                                                    </div><% }%>
                                                    <div class="clear-fix"></div>
                                                    <%
                                                        if (session.getAttribute("email") != null) {
                                                    %>
                                                    <div class="themeBox" style="height:auto;">
                                                        <div class="boxHeading">
                                                            Trending Question
                                                        </div>
                                                        <div>
                                                            <jsp:include page="TrendingQuestion.jsp" />
                                                        </div>
                                                    </div><% }%>
                                                    <div class="clear-fix"></div>

                                                    <div class="clear-fix"></div>
                                                </div>
                                                <div class="clear-fix"></div>
                                            </div>
                                            <div class="clear-fix"></div>
                                        </div>
                                        <div class="clear-fix"></div>
                                    </div>
                                    <div class="clear-fix"></div>

                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog">
                                        </div>
                                    </div>

                                    <script type="text/javascript" src="vendor/jquery-2.1.4.js"></script>
                                    <!-- Bootstrap JS -->
                                    <script type="text/javascript" src="vendor/bootstrap/bootstrap.min.js"></script>
                                    <!-- Bootstrap Select JS -->
                                    <script type="text/javascript" src="vendor/bootstrap-select/dist/js/bootstrap-select.js"></script>
                                    </div> <!-- /.main-page-wrapper -->

                                    </body></html>