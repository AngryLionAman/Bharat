<%@page import="javax.mail.Session"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="javax.mail.BodyPart"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Multipart"%>
<%@page import="javax.mail.Session" %>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeBodyPart"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.MimeMultipart"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<html lang="en">
    <head>
        <meta charset="UTF-8">  
         <%
             String SEARCH = "";
             String SIGN_UP = "";
             String LOGIN = "";
             String EMAIL = "";
             String RESET_PASSWORD = "";
              if (request.getParameter("lang") == "hindi") {
              SEARCH = "Search";
              SIGN_UP = "SignUp";
              LOGIN = "Login";
              EMAIL = "Enter your mail here";
              RESET_PASSWORD = "Reset password";
                  
            } else {
              SEARCH = "खोजे";
              SIGN_UP = "नया अकाउंट बनाये";
              LOGIN = "लॉग इन करें";
              EMAIL = "यहां अपना मेल डालें";
              RESET_PASSWORD = "पासवर्ड रीसेट";}
            %>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forger Password | InquiryHere.com</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
        <style>
            input[type=text] {
                width: 100%;
                padding: 4px 8px;
                margin: 4px 0;
                box-sizing: border-box;
                border: 1px solid red;
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
                                            <form action="SearchBars.jsp">
                                                <input type="text" style="width: 100%;" name="search" >
                                                <button type="submit" style="float: right;width: 50px;" /><%=SEARCH%></button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right">
                                        <a  href="Login.jsp" class="helpicon" style="color: white; width: 50px;"><%=LOGIN%></a>
                                        <a  href="signup.jsp" class="helpicon" style="color: white; width: 50px;"><%=SIGN_UP%></a>
                                    </div>
                                    </div>
                                    </header>
                                    <div class="clear-fix"></div>
                                    <div class="bodydata">
                                        <div class="container clear-fix">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                    <div class="row"><center>
                                                            <%
                                                                String ErrorMsg = request.getParameter("Error");
                                                                if (ErrorMsg != null) {
                                                                    out.println("<center><b style=color:red;>" + ErrorMsg + "</b></center>");
                                                                }
                                                            %>
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="themeBox" style="height:270px;">
                                                                    <form action="ForgotPassword.jsp" method="post" name="">
                                                                        <label for="fname"><%=EMAIL%></label>
                                                                        <div class="boxHeading">
                                                                            <input type="text" id="fname" name="email" required="">
                                                                        </div>  
                                                                        <button class="button button1"><%=RESET_PASSWORD%></button>
                                                                    </form>                                                                    
                                                                </div>
                                                            </div>

                                                        </center> 
                                                    </div>
                                                    <%
                                                        String UserEmail = request.getParameter("email");
                                                        if (UserEmail != null) {

                                                            Statement stmt;
                                                            Connection con;
                                                            ResultSet rs;
                                                            String StoredEmail = null, FirstName = null;
                                                            String UserPassword = null;
                                                            int i = 0;
                                                            try {
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                                                                stmt = con.createStatement();
                                                                String v = "select email,firstname,password from newuser where email = '" + UserEmail + "'";
                                                                rs = stmt.executeQuery(v);

                                                                while (rs.next()) {
                                                                    StoredEmail = rs.getString("email");
                                                                    FirstName = rs.getString("firstname");
                                                                    UserPassword = rs.getString("password");
                                                                    if (StoredEmail.equals(UserEmail)) {
                                                                        i = 1;
                                                                    }
                                                                }
                                                                rs.close();
                                                                stmt.close();
                                                                con.close();
                                                            } catch (Exception ex) {
                                                                out.println("Error :" + ex);
                                                            }

                                                            if (i == 1) {
                                                                //  out.println("Email Found" + StoredEmail + " UserName :" + FirstName);

                                                                String mailid;
                                                                String subject;
                                                                String feedback;
                                                                String froma;
                                                                String password;
                                                                String to;

                                                                mailid = UserEmail;
                                                                subject = "Reset Password of inquiryhere.com";
                                                                feedback = "Your InquryHere password is : " + UserPassword + "<br>Thanks for using our service";
                                                                froma = "cse13302.sbit@gmail.com";
                                                                password = "alok@ankit";

                                                                to = mailid;

                                                                if (mailid == null || password == null || feedback == null) {
                                                                    out.println("ENTER THE ALL FIELDS");
                                                                } else {
                                                                    Properties props = System.getProperties();
                                                                    props.put("mail.smtp.starttls.enable", true);
                                                                    props.put("mail.smtp.host", "smtp.gmail.com");
                                                                    props.put("mail.smtp.user", froma);
                                                                    props.put("mail.smtp.password", password);
                                                                    props.put("mail.smtp.port", "587");
                                                                    props.put("mail.smtp.auth", true);
                                                                    props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
                                                                    Session sess = Session.getInstance(props, null);
                                                                    MimeMessage message = new MimeMessage(sess);
                                                                    // out.println("Port: " + sess.getProperty("mail.smtp.port"));
                                                                    try {
                                                                        InternetAddress from = new InternetAddress(froma);
                                                                        message.setSubject(subject);
                                                                        message.setFrom(from);
                                                                        message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
                                                                        Multipart multipart = new MimeMultipart("alternative");
                                                                        BodyPart messageBodyPart = new MimeBodyPart();
                                                                        messageBodyPart.setText("some text to send");
                                                                        multipart.addBodyPart(messageBodyPart);
                                                                        messageBodyPart = new MimeBodyPart();
                                                                        String htmlMessage = feedback;
                                                                        messageBodyPart.setContent(htmlMessage, "text/html");
                                                                        multipart.addBodyPart(messageBodyPart);
                                                                        message.setContent(multipart);
                                                                        Transport transport = sess.getTransport("smtp");
                                                                        transport.connect("smtp.gmail.com", froma, password);
                                                                        transport.sendMessage(message, message.getAllRecipients());
                                                                        //out.println("Mail has been sent");%>
                                                    <script>window.alert("Password has been sent to your Mail");
                                                        window.location = "http://localhost:8081/InquiryHere/Login.jsp";</script>
                                                        <% 
                                                                            out.println("<b><a href=Login.html>Click here to visit Login page</a></b>");
                                                                            //response.sendRedirect("Login.html");
                                                                        } catch (Exception e) {
                                                                            out.println("<br>Error:" + e);
                                                                        }
                                                                    }

                                                                } else {
                                                                    response.sendRedirect("ForgotPassword.jsp?Error=Email not found please insert the registered email or valid email");
                                                                }
                                                            }
                                                        %>

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