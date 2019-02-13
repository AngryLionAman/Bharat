package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class topic_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html lang=\"en\"><head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <!-- For IE -->\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- For Resposive Device -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <title>Topic | InquiryHere.com</title>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <!-- responsive style sheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main-page-wrapper\">\n");
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
      out.write("                                    <div class=\"clear-fix\"></div>\n");
      out.write("                                    <div class=\"bodydata\">\n");
      out.write("                                        <div class=\"container clear-fix\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\">\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                                                    <div class=\"row\">\n");
      out.write("                                                        <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                                                            <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("                                                                <center> \n");
      out.write("                                                                    <div class=\"boxHeading\">\n");
      out.write("                                                                        ");

                                                                            // String Topic_id = request.getParameter("id");
                                                                            String str = request.getParameter("id");
                                                                            String Topic_id = "";
                                                                            if(Topic_id != null){
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
                                                                                con = DriverManager.getConnection(DB_URL, DB_USERNAME,DB_PASSWORD);
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
                                                                            }else{
                                                                            response.sendRedirect("FollowMoreTopic.jsp");
                                                                            }
                                                                        
      out.write("\n");
      out.write("                                                                    </div>\n");
      out.write("                                                                </center>\n");
      out.write("                                                                <div class=\"clear-fix\"></div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("                                                                <div>\n");
      out.write("                                                                    <h4>Related Question</h4>\n");
      out.write("                                                                    ");

                                                                        Statement stmt_detail;
                                                                        Connection con_detail;
                                                                        ResultSet rs_detail;
                                                                        String question_detail;
                                                                        try {

                                                                            Class.forName("com.mysql.jdbc.Driver");
                                                                            con_detail = DriverManager.getConnection(DB_URL,DB_USERNAME , DB_PASSWORD);
                                                                            stmt_detail = con_detail.createStatement();
                                                                            String q_detail = "select q.id,q.question,q.q_id from question q right join question_topic_tag qtt on qtt.question_id=q.q_id where tag_id='" + Topic_id + "'";
                                                                            rs_detail = stmt_detail.executeQuery(q_detail);
                                                                            int count = 0;
                                                                            while (rs_detail.next()) {
                                                                                question_detail = rs_detail.getString("question");
                                                                                if (question_detail != null) {
                                                                                    count++;
                                                                    
      out.write("<br>Q.<a href=\"Answer.jsp?Id=");
      out.print(question_detail);
      out.write("\" >&nbsp;");
      out.print(question_detail);
      out.write(" ?</a>");

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
                                                                    
      out.write("\n");
      out.write("                                                                </div>\n");
      out.write("\n");
      out.write("                                                                <div class=\"clear-fix\"></div>\n");
      out.write("\n");
      out.write("                                                            </div>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\">\n");
      out.write("\n");
      out.write("                                                    <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("                                                        <div class=\"boxHeading\">\n");
      out.write("                                                            Related Topic\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div>\n");
      out.write("                                                            ");

                                                                Statement stmt_related_topic;
                                                                Connection con_related_topic;
                                                                ResultSet rs_related_topic;
                                                                int countQ = 0;
                                                                try {
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    con_related_topic = DriverManager.getConnection(DB_URL,DB_USERNAME, DB_PASSWORD);
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
                                                                    if(Integer.valueOf(Topic_id) != unique_id){  
                                                             if ( topic_nameA != null)  { countQ++; 
                                                            
      out.write("<li><a href=\"topic.jsp?id=");
      out.print(unique_id);
      out.write('"');
      out.write('>');
      out.print(topic_nameA);
      out.write("</a></li>");
}}
                                                                        }
                                                                         if(countQ == 0) out.println("<br>No Related Tag Found !!");
                                                                        rs_related_topic.close();
                                                                        stmt_related_topic.close();
                                                                        con_related_topic.close();
                                                                    } catch (Exception e) {
                                                                        out.println("Unable to retrieve!!" + e);
                                                                    }
                                                                        
      out.write("    \n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                    </div>\n");
      out.write("                                                    <div class=\"clear-fix\"></div>\n");
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"clear-fix\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"clear-fix\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clear-fix\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"clear-fix\"></div>\n");
      out.write("                                    <script type=\"text/javascript\" src=\"vendor/jquery-2.1.4.js\"></script>\n");
      out.write("                                    <!-- Bootstrap JS -->\n");
      out.write("                                    <script type=\"text/javascript\" src=\"vendor/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("                                    <!-- Bootstrap Select JS -->\n");
      out.write("                                    <script type=\"text/javascript\" src=\"vendor/bootstrap-select/dist/js/bootstrap-select.js\"></script>\n");
      out.write("                                    </div> <!-- /.main-page-wrapper -->\n");
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
