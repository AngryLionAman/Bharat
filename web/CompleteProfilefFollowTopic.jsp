<html lang="en"><head>
        <%@include file="site.jsp" %>
         <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        
         <%
             String SELECT_AT_LEAST_FIVE_TOPIC = "";
             String FOLLOW = "";
             String NOTE = "";
             String SEARCH = "";
             
            if (request.getParameter("lang") != "hindi") {
              
               SELECT_AT_LEAST_FIVE_TOPIC = "कम से कम पांच विषय का चयन करें"; 
               FOLLOW = "फॉलो करे ";
               NOTE = "नोट: यदि आप डेस्कटॉप ब्राउज़र का उपयोग कर रहे हैं तो <b> CTRL </b> दबाएं और विषय का चयन करें";
               SEARCH = "खोजे";
            } else {
               
               SELECT_AT_LEAST_FIVE_TOPIC = "Select at least five topic";
               FOLLOW = "Follow";
               NOTE = "Note : If you are using desktop browser then press <b>CTRL</b> and select topic";
               SEARCH = "Search";
            }
            %>
        <meta charset="UTF-8">
        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>SignUp | InquiryHere.com</title>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
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
                                        Inquiryhere.com
                                        <div>

                                            </h4>
                                            </a></div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 serachhere" style="display:inline-block;">

                                        <div style="overflow: hidden; padding-right: .5em;">
                                            <form action="SearchBar.jsp">
                                                <input type="text" style="width: 100%;" name="search" required="" >
                                                <button type="submit" style="float: right;width: 50px;" /><%=SEARCH%></button>
                                            </form>
                                        </div>


                                    </div>
                                   
                                    </div>

                                    </header>
                                    <div class="clear-fix"></div>
                                    <div class="bodydata">
                                        <div class="container clear-fix">
                                            <div class="row">

                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">                                                   
                                                    <div class="row"><center>                                                           
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="themeBox" style="height:210px;">  
                                                                    <label for="fname"><%=SELECT_AT_LEAST_FIVE_TOPIC%></label>
                                                                    <form action="SubmitProfileFollowTopic.jsp" method="get" name="dropdown_selection">                                                                            
                                                                        <select id="s5" multiple="multiple" name="MultipleSelectedTopic" >
                                                                            <%@page language="java"%>
                                                                            <%@page import="java.sql.*"%>
                                                                            <%
                                                                                Statement stmt;
                                                                                Connection con;
                                                                                ResultSet rs;
                                                                                String TopicName;
                                                                                try {
                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                    con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                                                                    stmt = con.createStatement();
                                                                                    String v = "SELECT * FROM topic";
                                                                                    rs = stmt.executeQuery(v);
                                                                                    while (rs.next()) {
                                                                                        TopicName = rs.getString("topic_name");
                                                                                        out.println("<option>" + TopicName + "</option>");
                                                                                    }
                                                                                    stmt.close();
                                                                                    con.close();
                                                                                    rs.close();
                                                                                } catch (Exception e) {
                                                                                    out.println(e.getMessage());
                                                                                }
                                                                            %>
                                                                        </select>                                                                                 
                                                                        <div class="float-right margintop20" style="vertical-align:bottom">
                                                                            <button type="submit" class="btn" data-toggle="modal" ><%=FOLLOW%></button>
                                                                        </div>
                                                                    </form>                                                                        
                                                                </div>
                                                            </div>
                                                                        <div style="color:red;"><%=NOTE%></div>

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
                                    </body></html>