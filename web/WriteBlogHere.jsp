<html lang="en"><head>
        <script src="ckeditor/ckeditor.js"></script>
        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Blog | InquiryHere.com</title>

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

                                                    <div class="clear-fix"></div>

                                                    <div class="clear-fix"></div>

                                                    <div class="clear-fix"></div>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

                                                    <div class="row">

                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


                                                            <form name="submitquestion" method="post" action="Submitblog.jsp?id=<%=id_of_user%>">

                                                                <div class="boxHeading marginbot10">
                                                                    <div class="themeBox" style="height:auto;">
                                                                        Write the Blog Subject: 
                                                                        <div class="boxHeading">
                                                                            <textarea type="text" class="anstext" name="blog_subject" required="" ></textarea>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                                <b>Write your Blog Description:</b>
                                                                <textarea class="ckeditor" name="blog_description" required ></textarea>
                                                                <input type="submit" name="Post" value="Submit"> 
                                                            </form>


                                                            <div class="clear-fix"></div>

                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                                    <%
                                                        if (session.getAttribute("email") != null) {
                                                    %>
                                                    <div class="themeBox" style="height:330px;">
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