package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.mail.Session;
import javax.mail.BodyPart;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.sql.*;

public final class ForgotPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


String DB_URL_ = "jdbc:mysql://localhost/bharat";
String DB_USERNAME_ = "root";
String DB_PASSWORD_ = null;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/site.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">       \n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Forger Password | InquiryHere.com</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\n");
      out.write("        <style>\n");
      out.write("            input[type=text] {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 4px 8px;\n");
      out.write("                margin: 4px 0;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                border: 1px solid red;\n");
      out.write("                border-radius: 2px;\n");
      out.write("            }\n");
      out.write("            .button {\n");
      out.write("                background-color: #4CAF50; /* Green */\n");
      out.write("                border: none;\n");
      out.write("                color: white;\n");
      out.write("                padding: 15px 32px;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 16px;\n");
      out.write("                margin: 4px 2px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("            .button1 {width: 250px;}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main-page-wrapper\">\n");
      out.write("            <header class=\"home-page\">\n");
      out.write("                <div class=\"container clear-fix\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\" style=\"padding-left:0px;\">\n");
      out.write("                        <div class=\"logo float-left\">\n");
      out.write("                            <a href=\"#\" style=\"vertical-align:middle;\">\n");
      out.write("                                <h4>\n");
      out.write("                                    <div class=\"logotext\">\n");
      out.write("                                        Inquiryhere.com\n");
      out.write("                                        <div>\n");
      out.write("\n");
      out.write("                                            </h4>\n");
      out.write("                                            </a></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12 serachhere\" style=\"display:inline-block;\">\n");
      out.write("\n");
      out.write("                                        <div style=\"overflow: hidden; padding-right: .5em;\">\n");
      out.write("                                            <form action=\"SearchBars.jsp\">\n");
      out.write("                                                <input type=\"text\" style=\"width: 100%;\" name=\"search\" >\n");
      out.write("                                                <button type=\"submit\" style=\"float: right;width: 50px;\" />Search</button>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right\">\n");
      out.write("                                        <a  href=\"Login.jsp\" class=\"helpicon\" style=\"color: white; width: 50px;\">Login</a>\n");
      out.write("                                        <a  href=\"signup.jsp\" class=\"helpicon\" style=\"color: white; width: 50px;\">SignUp</a>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </header>\n");
      out.write("                                    <div class=\"clear-fix\"></div>\n");
      out.write("                                    <div class=\"bodydata\">\n");
      out.write("                                        <div class=\"container clear-fix\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                                                    <div class=\"row\"><center>\n");
      out.write("                                                            ");

                                                                String ErrorMsg = request.getParameter("Error");
                                                                if (ErrorMsg != null) {
                                                                    out.println("<center><b style=color:red;>" + ErrorMsg + "</b></center>");
                                                                }
                                                            
      out.write("\n");
      out.write("                                                            <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                                                                <div class=\"themeBox\" style=\"height:270px;\">\n");
      out.write("                                                                    <form action=\"ForgotPassword.jsp\" method=\"post\" name=\"\">\n");
      out.write("                                                                        <label for=\"fname\">Email</label>\n");
      out.write("                                                                        <div class=\"boxHeading\">\n");
      out.write("                                                                            <input type=\"text\" id=\"fname\" name=\"email\" required=\"\">\n");
      out.write("                                                                        </div>  \n");
      out.write("                                                                        <button class=\"button button1\">Reset password</button>\n");
      out.write("                                                                    </form>                                                                    \n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("\n");
      out.write("                                                        </center> \n");
      out.write("                                                    </div>\n");
      out.write("                                                    ");

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
                                                                        //out.println("Mail has been sent");
      out.write("\n");
      out.write("                                                    <script>window.alert(\"Password has been sent to your Mail\");\n");
      out.write("                                                        window.location = \"http://localhost:8081/InquiryHere/Login.jsp\";</script>\n");
      out.write("                                                        ");
 
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
                                                        
      out.write("\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                                <div class=\"clear-fix\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"clear-fix\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clear-fix\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"clear-fix\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    <script type=\"text/javascript\" src=\"vendor/jquery-2.1.4.js\"></script>\n");
      out.write("                                    <!-- Bootstrap JS -->\n");
      out.write("                                    <script type=\"text/javascript\" src=\"vendor/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("                                    <!-- Bootstrap Select JS -->\n");
      out.write("                                    <script type=\"text/javascript\" src=\"vendor/bootstrap-select/dist/js/bootstrap-select.js\"></script>\n");
      out.write("\n");
      out.write("                                    </div> \n");
      out.write("                                    </body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
