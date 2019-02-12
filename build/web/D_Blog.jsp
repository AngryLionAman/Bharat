<html lang="en"><head>
        <%
            String str = request.getParameter("Blog_Id");
            //String str = request.getParameter("id");
            String Question = "";

            for (int i = 0; i < str.length(); i++) {
                if (str.charAt(i) > 47 && str.charAt(i) < 58) {
                    Question += str.charAt(i);
                }
            }

        %>

        <script src="ckeditor/ckeditor.js"></script>
        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-128307055-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-128307055-1');
        </script> 
        <%@page language="java" %>
        <%@page import="java.sql.*" %> 
        <%@include file="site.jsp" %>
        <%            Statement stmt1 = null;
            // Statement stmt6 = null;
            Connection con1 = null;
            ResultSet rs1 = null;
            // ResultSet rs6 = null;
            String StoredQuestion = "";
            String StoredAnswer = "";
            String FirstName = "";
            String LastName = "";
            int UserID = 0;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con1 = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                stmt1 = con1.createStatement();
                //  stmt6 = con1.createStatement();
                //String p = "SELECT * FROM blog WHERE blog_id = '" + Question + "'";
                String p = "SELECT b.blog_subject, substring(b.blog,1,500),user.firstname,user.lastname,user.id FROM blog b right join newuser user on b.blog_posted_by = user.Id  WHERE blog_id = '" + Question + "'";
                rs1 = stmt1.executeQuery(p);
                while (rs1.next()) {
                    StoredQuestion = rs1.getString("blog_subject");
                    StoredAnswer = rs1.getString("substring(b.blog,1,500)");
                    FirstName = rs1.getString("firstname");
                    LastName = rs1.getString("lastname");
                    UserID = rs1.getInt("ID");

                    //String p6 = "SELECT b.blog_subject, substring(b.blog,1,500),user.firstname,user.lastname,user.id FROM blog b right join newuser user on b.blog_posted_by = user.Id  WHERE blog_id = '" + Question + "'";
                    //rs6 = stmt6.executeQuery(p6);
                    //while (rs6.next()) {
                    //  StoredAnswer = rs6.getString("substring(b.blog,1,500)");
                    //}
                }

            } catch (Exception e) {
                out.println("Unable to retrieve!!" + e);
            } finally {
                // stmt6.close();
                //  rs6.close();
                stmt1.close();
                con1.close();
                rs1.close();
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

                            <div class="clear-fix"></div>

                            <div class="clear-fix"></div>

                            <div class="clear-fix"></div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                            <div class="row">

                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                                    <div class="themeBox" style="height:auto;">

                                        <div class="boxHeading marginbot10">

                                            Subject :  <%=StoredQuestion%> 
                                        </div>
                                        <div class="questionArea">

                                            <div class="postedBy">Posted By :<a href="profile.jsp?ID=<%=UserID%>"><%=FirstName + " " + LastName%></a></div>

                                        </div>
                                    </div>
                                    <div class="boxHeading marginbot10">Description</div>

                                    <%
                                        Statement stmt2 = null;
                                        Connection con2 = null;
                                        ResultSet rs2 = null;
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            con2 = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                            stmt2 = con2.createStatement();
                                            String p = "SELECT * FROM blog WHERE  blog_id = '" + Question + "'";
                                            rs2 = stmt2.executeQuery(p);
                                            while (rs2.next()) {
                                                String answer = rs2.getString("blog");
                                    %>
                                    <div class="themeBox" style="height:auto;">
                                        <div class="boxHeading marginbot10" style="font-size: 15px;font-family: Arial, Helvetica, sans-serif;">
                                            <%=answer%> 
                                        </div>

                                    </div>
                                    <%
                                            }

                                        } catch (Exception e) {
                                            out.println("Unable to retrieve!!" + e);
                                        } finally {
                                            rs2.close();
                                            stmt2.close();
                                            con2.close();
                                        }
                                    %>
                                    <div class="clear-fix"></div>

                                </div>
                            </div>

                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
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