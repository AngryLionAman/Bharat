<html lang="en">
    <head>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <meta charset="UTF-8">
        <%
            String EMAIL = "";
            String PASSWORD = "";
            String HOME = "";
            String LOGIN = "";
            String SIGNUP = "";
            String SEARCH = "";
            String FORGET_PASSWORD = "";

            if (request.getParameter("lang") == "eng") {
                EMAIL = "Email";
                PASSWORD = "Password";
                HOME = "Home";
                LOGIN = "Login";
                SIGNUP = "SignUp";
                SEARCH = "Search";
                FORGET_PASSWORD = "Forget Password";

            } else {
                EMAIL = "ईमेल";
                PASSWORD = "पासवर्ड";
                HOME = "होम";
                LOGIN = "लॉग इन करें";
                SIGNUP = "नया खाता बनाएँ";
                SEARCH = "खोजे";
                FORGET_PASSWORD = "पासवर्ड भूल गए";

            }
            /*if(request.getParameter("lang") == "hi"){
            EMAIL = "ईमेल";
            PASSWORD = "पासवर्ड";
            HOME = "होम";
            LOGIN = "लॉग इन करें";
        }*/

        %>

        <!-- For IE -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- For Resposive Device -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Login | InquiryHere.com</title>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- responsive style sheet -->
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <style>
            input[type=text] {
                width: 100%;
                padding: 4px 8px;
                margin: 4px 0;
                box-sizing: border-box;
                border: 1px solid #b3b3b3;
                border-radius: 2px;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border: none;
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
                                        Inquiryhere.com
                                        <div>

                                            </h4>
                                            </a></div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 serachhere" style="display:inline-block;">

                                        <div style="overflow: hidden; padding-right: .5em;">
                                            <form action="SearchBar.jsp">
                                                <div class="col-md-9">
                                                    
                                                    <input type="text" style="width: 100%;"  name="search" required="" >
                                                    <input type="hidden" name="lang" value="hindi">
                                                </div>
                                                <div class="col-md-3">
                                                    <button type="submit"  /><%=SEARCH%></button>
                                                </div>
                                            </form>
                                        </div>


                                    </div>

                                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right">
                                        <a  href="index.jsp" class="helpicon" style="color: white; width: 50px;"><%=HOME%></a>
                                        <a  href="signup.jsp" class="helpicon" style="color: white; width: 50px;"><%=SIGNUP%></a>

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
                                                            <%                                                                String ErrorMsg = request.getParameter("Error");
                                                                if (ErrorMsg != null) {
                                                                    out.println("<center><b style=color:red;>" + ErrorMsg + "</b></center>");
                                                                }
                                                            %>
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="themeBox" style="height:270px;">
                                                                    <form action="validate.jsp" method="post" name="">
                                                                        <label for="fname"><%=EMAIL%></label>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="email" required="">
                                                                        </div>
                                                                        <label for="lname"><%=PASSWORD%></label>
                                                                        <div class="boxHeading">
                                                                            <input type="password" id="lname" name="password" required="">
                                                                        </div>                                                                                                                               
                                                                        <div class="float-right margintop20" style="vertical-align:bottom">
                                                                            <button type="submit" class="btn" data-toggle="modal" ><%=LOGIN%></button>
                                                                        </div>

                                                                    </form>
                                                                    <form action="ForgotPassword.jsp">
                                                                        <button class="button button1"><%=FORGET_PASSWORD%></button>
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
                                    </body></html>