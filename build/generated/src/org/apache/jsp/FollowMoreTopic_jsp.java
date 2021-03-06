package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class FollowMoreTopic_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <!-- For IE -->\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- For Resposive Device -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <title>Follow More Topic | InquiryHere </title>\n");
      out.write("        <!-- Main style sheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <!-- responsive style sheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            function take_value(_topic_id, id_of_user) {\n");
      out.write("            ");
 if (session.getAttribute("email") == null) { 
      out.write("\n");
      out.write("                alert(\"Please login first\");");

                } else { 
      out.write("\n");
      out.write("                // if(document.getElementById(\"myButton1\").value===\"Followed\"){\n");
      out.write("                // alert(\"Already followed\");  \n");
      out.write("                //}\n");
      out.write("                //else{\n");
      out.write("                document.getElementById(\"myButton1\").value = \"Followed\";\n");
      out.write("                //document.getElementById(\"demo\").innerHTML = \"Welcome\" + topic_id+id_of_user;\n");
      out.write("\n");
      out.write("                var http = new XMLHttpRequest();\n");
      out.write("                http.open(\"POST\", \"http://localhost:8081/InquiryHere/submit_follow_topic.jsp?val_topic=\" + _topic_id + \"&val2_topic=\" + id_of_user, true);\n");
      out.write("                http.setRequestHeader(\"Content-type\", \"application/x-www-form-urlencoded\");\n");
      out.write("                http.send();\n");
      out.write("\n");
      out.write("                http.onload = function () {\n");
      out.write("                    http.responseText;\n");
      out.write("                    alert(http.responseText);\n");
      out.write("                    //}\n");
      out.write("                }\n");
      out.write("            ");
 }
                
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main-page-wrapper\">\n");
      out.write("            <!-- Header _________________________________ -->\n");
      out.write("            ");
      out.write("\n");
      out.write("<meta charset=\"UTF-8\">\n");

    String EMAIL = "";
    String PASSWORD = "";
    String HOME = "";
    String LOGIN = "";
    String SIGNUP = "";
    String SEARCH = "";
    String PROFILE = "";
    String CONTACT_US = "";
    String ABOUT_US = "";
    String LOGOUT = "";
    String SELECT = "";

    if (request.getParameter("lang") == "eng") {
        EMAIL = "Email";
        PASSWORD = "Password";
        HOME = "Home";
        LOGIN = "Login";
        SIGNUP = "SignUp";
        SEARCH = "Search";

        PROFILE = "Profile";
        CONTACT_US = "contact Us";
        ABOUT_US = "About Us";
        LOGOUT = "Logout";
        SELECT = "Select";

    } else {
        EMAIL = "ईमेल";
        PASSWORD = "पासवर्ड";
        HOME = "होम";
        LOGIN = "लॉग इन करें";
        SIGNUP = "नया खाता बनाएँ";
        SEARCH = "खोजे";

        PROFILE = "प्रोफ़ाइल";
        CONTACT_US = "हमसे संपर्क करें";
        ABOUT_US = "हमारे बारे में";
        LOGOUT = "बाहर जाये";
        SELECT = "चयन करें";
    }

      out.write("\n");
      out.write("<header class=\"home-page\">\n");
      out.write("    <div class=\"container clear-fix\">\n");
      out.write("        <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\" style=\"padding-left:0px;\">\n");
      out.write("            <div class=\"logo float-left\">\n");
      out.write("                <a href=\"#\" style=\"vertical-align:middle;\">\n");
      out.write("                    <h4>\n");
      out.write("                        <div class=\"logotext\">\n");
      out.write("                            Inquiryhere\n");
      out.write("                            <div>\n");
      out.write("                                <!-- <img src=\"images/logo/logo.png\" style=\"width:150px;\"> -->\n");
      out.write("                                </h4>\n");
      out.write("                                </a></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12 serachhere\" style=\"display:inline-block;\">\n");
      out.write("\n");
      out.write("                            <div style=\"overflow: hidden; padding-right: .5em;\">\n");
      out.write("                                <form action=\"SearchBar.jsp\">\n");
      out.write("                                    <input type=\"text\" style=\"width: 100%;\" name=\"search\" required=\"\" >\n");
      out.write("                                    <button type=\"submit\" style=\"float: right;width: 50px;\" />");
      out.print(SEARCH);
      out.write("</button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right\">\n");
      out.write("                            ");
if (session.getAttribute("email") == null) {
      out.write("<a href=\"Login.jsp\" class=\"helpicon\" style=\"color: white;padding-right: 50px; \">");
      out.print(LOGIN);
      out.write("</a>");
 } 
      out.write("\n");
      out.write("                            <a href=\"index.jsp\" class=\"helpicon\" style=\"color: white;padding-right: 50px; \">");
      out.print(HOME);
      out.write("</a>\n");
      out.write("                            <a href=\"help.jsp\"><img src=\"images/home/HelpIcon.png\" class=\"helpicon\"/></a>\n");
      out.write("                            ");
 if (session.getAttribute("email") != null) {
      out.write(" <a href=\"#\" class=\"notification\" data-toggle=\"modal\" data-target=\"#myModalN\">\n");
      out.write("                                <span>Inbox</span>\n");
      out.write("                                <span class=\"badge\">0</span>\n");
      out.write("                            </a> ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-1 col-md-1 col-sm-12 col-xs-12 float-right textalign-right\">\n");
      out.write("                            \n");
      out.write("                             \n");
      out.write("                            ");
 // Database connection details 
                                String DB_URL = "jdbc:mysql://localhost/bharat";
                                String DB_USERNAME = "root";
                                String DB_PASSWORD = null;
                            
      out.write("\n");
      out.write("                            ");

                                if (session.getAttribute("URL") != null) {
                                    session.setAttribute("URL", null);
                                }
                            
      out.write("\n");
      out.write("                            ");

                                String name = null;
                                int id_of_user = 0;
                                int topic_id = 0;
                                String email = (String) session.getAttribute("email");
                                if (email == null) {
                            
      out.write("<select class=\"helpicon w100 username\" onchange=\"location = this.value;\">\n");
      out.write("                                <option value=\"Login.jsp\">");
      out.print(SELECT);
      out.write("</option>\n");
      out.write("                                <option value=\"Login.jsp\">");
      out.print(LOGIN);
      out.write("</option>\n");
      out.write("                                <option value=\"AboutUs.jsp\">");
      out.print(ABOUT_US);
      out.write("</option>\n");
      out.write("                                <option value=\"ContactUs.jsp\">");
      out.print(CONTACT_US);
      out.write("</option>\n");
      out.write("                            </select>");

                            } else {

                                Statement stmt;
                                Connection con;
                                ResultSet rs;
                                // String name = null;
                                //int id_of_user = 0;

                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                    stmt = con.createStatement();
                                    String p = "SELECT * FROM newuser WHERE email = '" + email + "'";
                                    rs = stmt.executeQuery(p);
                                    while (rs.next()) {
                                        id_of_user = rs.getInt("id");
                                        name = rs.getString("firstname");
                                    }
                                    stmt.close();
                                    con.close();
                                    rs.close();
                                } catch (Exception e) {
                                    out.println("Unable to retrieve!!" + e);
                                }
                            
      out.write("\n");
      out.write("                            <select class=\"helpicon w100 username\" onchange=\"location = this.value;\">\n");
      out.write("                                <option value=\"index.jsp\">");
      out.print(name);
      out.write("</option>\n");
      out.write("                                <option value=\"profile.jsp?ID=");
      out.print(id_of_user);
      out.write('"');
      out.write('>');
      out.print(PROFILE);
      out.write("</option>\n");
      out.write("                                <option value=\"AboutUs.jsp\">");
      out.print(ABOUT_US);
      out.write("</option>\n");
      out.write("                                <option value=\"ContactUs.jsp\">");
      out.print(CONTACT_US);
      out.write("</option>\n");
      out.write("                                <option value=\"Logout.jsp\">");
      out.print(LOGOUT);
      out.write("</option>\n");
      out.write("                            </select>");

                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        </header>");
      out.write("\n");
      out.write("            <div class=\"bodydata\">\n");
      out.write("                <div class=\"container clear-fix\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                                    <div class=\"themeBox\" style=\"height:auto;margin-bottom:0px;\">\n");
      out.write("                                        <div class=\"boxHeading\">\n");
      out.write("                                            Topic, May you like!\n");
      out.write("                                        </div>\n");
      out.write("                                        ");
  Statement stmt_topic = null;
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
                                        
      out.write("   \n");
      out.write("                                        <div style=\"width:auto;height:52px;border:1px solid #000;float: left; margin-right: 5px; margin-bottom: 5px;\" class=\"col-lg-4 col-md-4 col-sm-12 col-xs-12\">\n");
      out.write("                                            <a href=topic.jsp?id=");
      out.print(_topic_id);
      out.write('>');
      out.print(name_topic);
      out.write("</a>\n");
      out.write("                                            ");

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
                                            
      out.write("\n");
      out.write("                                            ");

                                                if (Status == "present")
                                                    out.println("<button>Followed</button>");
                                                else {
      out.write("\n");
      out.write("                                            <input type=\"button\" value=\"Follow\" id=\"myButton1\" onclick=\"return take_value('");
      out.print(_topic_id);
      out.write("', '");
      out.print(id_of_user);
      out.write("');\" />\n");
      out.write("                                            ");
 }
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
                                            
      out.write("\n");
      out.write("\n");
      out.write("                                            <div class=\"clear-fix\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"row margintop10\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <script type=\"text/javascript\" src=\"vendor/jquery-2.1.4.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"vendor/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("                <script type=\"text/javascript\" src=\"vendor/bootstrap-select/dist/js/bootstrap-select.js\"></script>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
