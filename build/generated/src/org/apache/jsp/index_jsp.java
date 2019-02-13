package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                                        public int nullIntconvert(String str) {
                                            int num = 0;
                                            if (str == null) {
                                                str = "0";
                                            } else if ((str.trim()).equals("null")) {
                                                str = "0";
                                            } else if (str.equals("")) {
                                                str = "0";
                                            }
                                            try {
                                                num = Integer.parseInt(str);
                                            } catch (Exception e) {
                                            }
                                            return num;
                                        }
                                    
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
      out.write("        \n");
      out.write("        ");

            //String SEARCH = "";
            //String HOME = "";
            //String LOGIN = "";
            //String SELECT = "";
            String TOPIC_YOU_MAY_LIKE = "";
            String POST_SOMETHING = "";
            String POST_SOME_THING_HERE = "";
            String POST = "";
            String QUESTION_YOU_MAY_LIKE = "";
            String POSTED_BY = "";
            String TRENDING_QUESTION = "";
            //String ABOUT_US = "";
            //String CONTECT_US = "";
            String POST_YOUR_QUESTION_HERE = "";
            String PLEASE_LOGIN_FIRST = "";
            String CLOSE = "";
            String CLICK_HERE_TO_LOGIN ="";
            
            String FOLLOWED_TOPIC = "";
            String CLICK_HERE_TO_MORE_TOPIC = "";
            String PUT_YOUR_QUESTION_HERE = "";
            String EX = "";
            String TAG_SUGGESTION_DESCRIPTION = "";
            String TAG_EXMAPLE = "";
            String RECENT_POSTED_QUESTION = "";
            String RELATED_QUESTION = "";
            String YOUR_CURRENT_NODIFICATION = "";
            
            
            if (request.getParameter("lang") != "hindi") {
              //  SEARCH = "खोजे";
               // HOME = "होम";
                //LOGIN = "लॉग इन करें";
                //SELECT = "चयन";
                TOPIC_YOU_MAY_LIKE = "विषय आपको पसंद आ सकता है";
                POST_SOMETHING = "कुछ पोस्ट करें";
                POST_SOME_THING_HERE = "यहाँ कुछ पोस्ट करें";
                POST = "post";
                QUESTION_YOU_MAY_LIKE = "सवाल आपको पसंद आ सकता है";
                POSTED_BY = "द्वारा प्रकाशित";
                TRENDING_QUESTION = "सक्रिय प्रश्न";
              //  ABOUT_US = "हमारे बारे में";
                //CONTECT_US = "हमसे संपर्क करें";
                POST_YOUR_QUESTION_HERE = "यहाँ अपना प्रश्न डाले";
                PLEASE_LOGIN_FIRST = "पहले प्रवेश करें";
                CLOSE = "बंद करे";
                CLICK_HERE_TO_LOGIN ="लॉग इन करने के लिए यहां क्लिक करें";
                
                FOLLOWED_TOPIC = "विषय जो आपको पसंद है";
                CLICK_HERE_TO_MORE_TOPIC = "अधिक विषय के लिए यहां क्लिक करें";
                PUT_YOUR_QUESTION_HERE = "अपना प्रश्न यहाँ रखें";
                 EX = "उदाहरण :कैसे है ,क्या है ";
                 TAG_SUGGESTION_DESCRIPTION = "अपने प्रश्न से संबंधित कम से कम दो टैग प्रदान करें। कोमा (,) का उपयोग करके अलग करे";
                 TAG_EXMAPLE = "उदाहरण :विज्ञान,भौतिक , रसायन विज्ञान  ";
                 RECENT_POSTED_QUESTION = "हाल ही में पोस्ट किया गया सवाल";
                 RELATED_QUESTION = "संबंधित सवाल";
                 
                 YOUR_CURRENT_NODIFICATION = "आपकी वर्तमान अधिसूचना";

            } else {
                //SEARCH = "Search";
                //HOME = "Home";
                //LOGIN = "Login";
                //SELECT = "Select";
                TOPIC_YOU_MAY_LIKE = "Topic You May Like";
                POST_SOMETHING = "Post Something";
                POST_SOME_THING_HERE = "Post Something here";
                POST = "POST";
                QUESTION_YOU_MAY_LIKE = "Question You May Like";
                POSTED_BY = "Posted By";
                TRENDING_QUESTION = "Tranding Question";
                //ABOUT_US = "About Us";
                //CONTECT_US = "Contect Us";
                POST_YOUR_QUESTION_HERE = "Post Your Question Here";
                PLEASE_LOGIN_FIRST = "Please Lgin First";
                CLOSE = "Close";
                CLICK_HERE_TO_LOGIN = "Click here to login";
                
                FOLLOWED_TOPIC = "Followed Topic";
                CLICK_HERE_TO_MORE_TOPIC = "Click here to more topic";
                PUT_YOUR_QUESTION_HERE = "Put Your Question Here";
                 EX = "Ex: What is,How to..";
                 TAG_SUGGESTION_DESCRIPTION = "Provide at least two tag related to your question. separate tag using Coma(,)";
                 TAG_EXMAPLE = "Ex:Java,Database,c language";
                 RECENT_POSTED_QUESTION = "Recent posted Question";
                 RELATED_QUESTION = "Related Question";
                 
                 YOUR_CURRENT_NODIFICATION = "Your current nodification";

            }
            
      out.write("\n");
      out.write("        <!-- For IE -->\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- For Resposive Device -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-128307055-1\"></script>\n");
      out.write("        <script>\n");
      out.write("            window.dataLayer = window.dataLayer || [];\n");
      out.write("            function gtag() {\n");
      out.write("                dataLayer.push(arguments);\n");
      out.write("            }\n");
      out.write("            gtag('js', new Date());\n");
      out.write("            gtag('config', 'UA-128307055-1');\n");
      out.write("        </script> \n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <!-- responsive style sheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\n");
      out.write("        <meta property=\"og:description\" content=\"india first knowledge based social media where experts give you advise and suggestion related to your query .you can ask and share the information which you want to explore.our motive is to be specific according to your demand\" />\n");
      out.write("        <meta property=\"og:image\" content=\"https://www.inquiryhere.com/images/logo/inquiryhere_Logo.PNG\" />\n");
      out.write("        <meta property=\"og:type\" content=\"website\">\n");
      out.write("        <meta property=\"og:locale\" content=\"en_US\">\n");
      out.write("        <meta property=\"og:title\" content=\"india first knowledge based social media platform where experts give you advise and suggestion related to your query\" />\n");
      out.write("        <meta property=\"og:url\" content=\"https://www.inquiryhere.com/\">\n");
      out.write("        <meta property=\"og:site_name\" content=\"https://www.inquiryhere.com/\" />\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <!-- responsive style sheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main-page-wrapper\">\n");
      out.write("\n");
      out.write("\n");
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
      out.write("            <div class=\"clear-fix\"></div>\n");
      out.write("            <div class=\"bodydata\">\n");
      out.write("                <div class=\"container clear-fix\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\">\n");
      out.write("                            ");
  if (session.getAttribute("email") == null) { 
      out.write("\n");
      out.write("                            <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("                                <div class=\"boxHeading\">\n");
      out.write("                                   ");
      out.print(TOPIC_YOU_MAY_LIKE);
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <ul>\n");
      out.write("                                        ");

                                            Statement stmt_fetch_topic;
                                            Connection con_fetch_topic;
                                            ResultSet rs_fetch_topic;
                                            String topic_name;
                                            try {

                                                Class.forName("com.mysql.jdbc.Driver");
                                                con_fetch_topic = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                                stmt_fetch_topic = con_fetch_topic.createStatement();
                                                String p_fetch_topic = "select * from topic LIMIT 30,20";
                                                rs_fetch_topic = stmt_fetch_topic.executeQuery(p_fetch_topic);
                                                while (rs_fetch_topic.next()) {
                                                    topic_name = rs_fetch_topic.getString("topic_name");
                                                    topic_id = rs_fetch_topic.getInt("unique_id");
                                                    if (topic_id != 0) {
      out.write("\n");
      out.write("                                        <li><a href=\"topic.jsp?id=");
      out.print(topic_id);
      out.write('"');
      out.write('>');
      out.print(topic_name);
      out.write("</a></li>\n");
      out.write("                                            ");
 }
                                                    }
                                                    rs_fetch_topic.close();
                                                    stmt_fetch_topic.close();
                                                    con_fetch_topic.close();
                                                } catch (Exception e) {
                                                    out.println("Unable to retrieve!!" + e);
                                                }
                                            
      out.write("\n");
      out.write("                                        <a href=\"FollowMoreTopic.jsp\">");
      out.print(CLICK_HERE_TO_MORE_TOPIC);
      out.write("</a>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div> ");
 } 
      out.write("\n");
      out.write("                            ");

                                if (session.getAttribute("email") != null) {
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("                                <div class=\"boxHeading\" >\n");
      out.write("                                    ");
      out.print(FOLLOWED_TOPIC);
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                ");

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
                                            if (topic_id != 0) {
      out.write("\n");
      out.write("                                <li><a href=\"topic.jsp?id=");
      out.print(topic_id);
      out.write('"');
      out.write('>');
      out.print(topic_name);
      out.write("</a></li>\n");
      out.write("                                    ");
 }
                                            }
                                            out.println("<a href=FollowMoreTopic.jsp>Click here to more topic</a>");
                                            rs_fetch_topic.close();
                                            stmt_fetch_topic.close();
                                            con_fetch_topic.close();
                                        } catch (Exception e) {
                                            out.println("Unable to retrieve!!" + e);
                                        }
                                    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>  ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                                    <div class=\"themeBox\" style=\"height:200px;\">\n");
      out.write("                                        <div class=\"boxHeading\">\n");
      out.write("                                            ");
      out.print(POST_SOMETHING);
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("                                        <div><textarea type=\"text\" class=\"anstext\" placeholder=\"Post something here\" data-toggle=\"modal\" data-target=\"#myModal\"></textarea></div>\n");
      out.write("\n");
      out.write("                                        <div class=\"float-right margintop20\" style=\"vertical-align:bottom\">\n");
      out.write("                                            <button type=\"button\" class=\"btn\" data-toggle=\"modal\" data-target=\"#myModal\">");
      out.print(POST);
      out.write("</button>\n");
      out.write("                                            <!-- btn-info btn-lg -->\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clear-fix\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\n");
      out.write("                                <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("\n");
      out.write("                                    ");

                                        if (session.getAttribute("email") != null) {
                                            // out.println("Related Questions up");

                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <h4>");
      out.print(RECENT_POSTED_QUESTION);
      out.write("</h4>\n");
      out.write("                                    ");
                                        Statement Trending_stmt_T;
                                        Connection Trending_con_T;
                                        ResultSet Trending_rs_T;
                                        String UserName_for_trending_question_T = null;
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Trending_con_T = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                            Trending_stmt_T = Trending_con_T.createStatement();
                                            String v_count_T = "SELECT * FROM question ORDER BY q_id DESC limit 10";
                                            Trending_rs_T = Trending_stmt_T.executeQuery(v_count_T);
                                            while (Trending_rs_T.next()) {
                                                String TrendingQuestion_T = Trending_rs_T.getString("question");
                                                int TotalFollowers_T = Trending_rs_T.getInt("TotalLiked");
                                                int id_for_user_name_T = Trending_rs_T.getInt("id");
                                                Statement Trending_stmt_for_name_T = Trending_con_T.createStatement();;
                                                ResultSet Trending_rs_for_name_T;
                                                String T_T = "SELECT firstname FROM newuser WHERE id='" + id_for_user_name_T + "' ";
                                                Trending_rs_for_name_T = Trending_stmt_for_name_T.executeQuery(T_T);
                                                while (Trending_rs_for_name_T.next()) {
                                                    UserName_for_trending_question_T = Trending_rs_for_name_T.getString("firstname");
                                                    //out.println(fname);
                                                }
                                                Trending_stmt_for_name_T.close();
                                                Trending_rs_for_name_T.close();
                                    
      out.write("\n");
      out.write("                                    <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("\n");
      out.write("                                        <div class=\"boxHeading marginbot10\">\n");
      out.write("                                            <a href=\"Answer.jsp?Id=");
      out.print(TrendingQuestion_T);
      out.write("\" >");
      out.print(TrendingQuestion_T);
      out.write(" ?</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"questionArea\">\n");
      out.write("\n");
      out.write("                                            <div class=\"postedBy\">");
      out.print(POSTED_BY);
      out.write(" :<a href=\"profile.jsp?ID=");
      out.print(id_for_user_name_T);
      out.write("\"> ");
      out.print(UserName_for_trending_question_T);
      out.write("</a></div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                    </div>");

                                            }

                                            Trending_stmt_T.close();
                                            Trending_rs_T.close();
                                            Trending_con_T.close();
                                        } catch (Exception e) {
                                            out.println("Error " + e);
                                        }
                                    
      out.write(" \n");
      out.write("\n");
      out.write("                                    <h4>");
      out.print(RELATED_QUESTION);
      out.write("</h4>  \n");
      out.write("                                    ");
  Statement stmt1 = null;
                                        Statement stmt2 = null;
                                        Connection con1;
                                        ResultSet rs1 = null;
                                        ResultSet rs2 = null;
                                        String name1 = null;
                                        String question, fname = null;
                                        int ide = 0;

                                        try {

                                            Class.forName("com.mysql.jdbc.Driver");
                                            con1 = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                            stmt1 = con1.createStatement();
                                            String q = "select DISTINCT q.id,q.q_id,q.question from question q "
                                                    + "right join question_topic_tag qtt on q.q_id = qtt.question_id "
                                                    + "where tag_id IN (select t.unique_id from topic t "
                                                    + "right join topic_followers_detail de on t.unique_id = de.topic_id "
                                                    + "where user_or_followers_id= '" + id_of_user + "')";
                                            rs1 = stmt1.executeQuery(q);
                                            while (rs1.next()) {
                                                question = rs1.getString("question");
                                                if (question != null) {
                                                    ide = rs1.getInt("id");
                                                    stmt2 = con1.createStatement();
                                                    String T = "SELECT firstname FROM newuser WHERE id='" + ide + "' ";
                                                    rs2 = stmt2.executeQuery(T);
                                                    while (rs2.next()) {
                                                        fname = rs2.getString("firstname");
                                                        //out.println(fname);
                                                    }

                                    
      out.write("\n");
      out.write("                                    <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("\n");
      out.write("                                        <div class=\"boxHeading marginbot10\">\n");
      out.write("                                            <a href=\"Answer.jsp?Id=");
      out.print(rs1.getString("question"));
      out.write("\" >");
      out.print(question);
      out.write(" ?</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"questionArea\">\n");
      out.write("                                            <div class=\"postedBy\">");
      out.print(POSTED_BY);
      out.write(" : <a href=\"profile.jsp?ID=");
      out.print(ide);
      out.write('"');
      out.write('>');
      out.print(fname);
      out.write("</a></div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    ");
             }
                                            }
                                            stmt1.close();
                                            stmt2.close();
                                            rs1.close();
                                            rs2.close();
                                            con1.close();
                                        } catch (Exception e) {
                                            out.println("<b style=color:red;>No question found related to your selected topic</b>");
                                        }
                                    } else {
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <h4>");
      out.print(QUESTION_YOU_MAY_LIKE);
      out.write("</h4>\n");
      out.write("\n");
      out.write("                                    ");
      out.write("\n");
      out.write("                                    ");

                                        ResultSet rs1 = null;
                                        ResultSet rs2 = null;
                                        ResultSet rs3 = null;
                                        PreparedStatement ps1 = null;
                                        PreparedStatement ps2 = null;
                                        PreparedStatement ps3 = null;
                                        Connection connection = null;

                                        int showRows = 10;
                                        int totalRecords = 5;
                                        int totalRows = nullIntconvert(request.getParameter("totalRows"));
                                        int totalPages = nullIntconvert(request.getParameter("totalPages"));
                                        int iPageNo = nullIntconvert(request.getParameter("iPageNo"));
                                        int cPageNo = nullIntconvert(request.getParameter("cPageNo"));

                                        int startResult = 0;
                                        int endResult = 0;
                                        if (iPageNo == 0) {
                                            iPageNo = 0;
                                        } else {
                                            iPageNo = Math.abs((iPageNo - 1) * showRows);
                                        }
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

                                            String query1 = "SELECT SQL_CALC_FOUND_ROWS * FROM question limit " + iPageNo + "," + showRows + "";
                                            ps1 = connection.prepareStatement(query1);
                                            rs1 = ps1.executeQuery();

                                            String query2 = "SELECT FOUND_ROWS() as cnt";
                                            ps2 = connection.prepareStatement(query2);
                                            rs2 = ps2.executeQuery();
                                        } catch (Exception error) {
                                            out.println("Error occer in :" + error);
                                        }
                                        try {
                                            if (rs2.next()) {
                                                totalRows = rs2.getInt("cnt");
                                            }
                                            String Username = null;
                                            int userId = 0;
                                    
      out.write("\n");
      out.write("                                    <form>\n");
      out.write("                                        <input type=\"hidden\" name=\"iPageNo\" value=\"");
      out.print(iPageNo);
      out.write("\">\n");
      out.write("                                        <input type=\"hidden\" name=\"cPageNo\" value=\"");
      out.print(cPageNo);
      out.write("\">\n");
      out.write("                                        <input type=\"hidden\" name=\"showRows\" value=\"");
      out.print(showRows);
      out.write("\">\n");
      out.write("                                        ");

                                            while (rs1.next()) {
                                        
      out.write("\n");
      out.write("                                        <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("\n");
      out.write("                                            <div class=\"boxHeading marginbot10\">\n");
      out.write("                                                <a href=\"Answer.jsp?Id=");
      out.print(rs1.getString("question"));
      out.write("\" >");
      out.print(rs1.getString("question"));
      out.write(" ?</a>\n");
      out.write("                                            </div>\n");
      out.write("                                            ");

                                                String query3 = "SELECT ID,firstname FROM newuser WHERE id='" + rs1.getString("id") + "' ";
                                                ps3 = connection.prepareStatement(query3);
                                                rs3 = ps3.executeQuery();

                                                while (rs3.next()) {
                                                    Username = rs3.getString("firstname");
                                                    userId = rs3.getInt("ID");
                                                    //out.println(fname);
                                                }
                                                rs3.close();
                                                ps3.close();
      out.write("\n");
      out.write("                                            <div class=\"questionArea\">\n");
      out.write("\n");
      out.write("                                                <div class=\"postedBy\">");
      out.print(POSTED_BY);
      out.write(" :<a href=\"profile.jsp?ID=");
      out.print(userId);
      out.write("\"> ");
      out.print(Username);
      out.write("</a></div>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        ");

                                                }
                                            } catch (Exception e) {
                                                out.println(e);

                                            }
                                        
      out.write("\n");
      out.write("\n");
      out.write("                                        ");

                                            try {
                                                if (totalRows < (iPageNo + showRows)) {
                                                    endResult = totalRows;
                                                } else {
                                                    endResult = (iPageNo + showRows);
                                                }
                                                startResult = (iPageNo + 1);
                                                totalPages = ((int) (Math.ceil((double) totalRows / showRows)));
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        
      out.write("\n");
      out.write("                                        <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"1\" >\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td colspan=\"3\">\n");
      out.write("                                                    <div>\n");
      out.write("                                                        ");

                                                            int i = 0;
                                                            int cPage = 0;
                                                            if (totalRows != 0) {
                                                                cPage = ((int) (Math.ceil((double) endResult / (totalRecords * showRows))));

                                                                int prePageNo = (cPage * totalRecords) - ((totalRecords - 1) + totalRecords);
                                                                if ((cPage * totalRecords) - (totalRecords) > 0) {
                                                        
      out.write("\n");
      out.write("                                                        <a href=\"index.jsp?iPageNo=");
      out.print(prePageNo);
      out.write("&cPageNo=");
      out.print(prePageNo);
      out.write("\"> << Previous</a>\n");
      out.write("                                                        ");

                                                            }
                                                            for (i = ((cPage * totalRecords) - (totalRecords - 1)); i <= (cPage * totalRecords); i++) {
                                                                if (i == ((iPageNo / showRows) + 1)) {
      out.write("\n");
      out.write("                                                        <a href=\"index.jsp?iPageNo=");
      out.print(i);
      out.write("\" style=\"cursor:pointer;color:red\"><b>");
      out.print(i);
      out.write("</b></a>\n");
      out.write("                                                                ");

                                                                } else if (i <= totalPages) {
                                                                
      out.write("\n");
      out.write("                                                        <a href=\"index.jsp?iPageNo=");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</a>\n");
      out.write("                                                        ");

                                                                }
                                                            }
                                                            if (totalPages > totalRecords && i < totalPages) {
                                                        
      out.write("\n");
      out.write("                                                        <a href=\"index.jsp?iPageNo=");
      out.print(i);
      out.write("&cPageNo=");
      out.print(i);
      out.write("\"> >> Next</a>\n");
      out.write("                                                        ");

                                                                }
                                                            }
                                                        
      out.write("\n");
      out.write("                                                        <b>Rows ");
      out.print(startResult);
      out.write(" - ");
      out.print(endResult);
      out.write(", Total Rows ");
      out.print(totalRows);
      out.write(" </b>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </form>\n");
      out.write("                                    ");

                                            try {
                                                if (ps1 != null) {
                                                    ps1.close();
                                                }
                                                if (rs1 != null) {
                                                    rs1.close();
                                                }

                                                if (ps2 != null) {
                                                    ps2.close();
                                                }
                                                if (rs2 != null) {
                                                    rs2.close();
                                                }

                                                if (connection != null) {
                                                    connection.close();
                                                }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        }
      out.write("\n");
      out.write("                                    <div class=\"clear-fix\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-3 col-md-3 col-sm-12 col-xs-12\">\n");
      out.write("\n");
      out.write("                            <div class=\"themeBox\" style=\"height:auto;\">\n");
      out.write("                                <div class=\"boxHeading\">\n");
      out.write("                                    ");
      out.print(TRENDING_QUESTION);
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    ");

                                        Statement Trending_stmt;
                                        Connection Trending_con;
                                        ResultSet Trending_rs;
                                        String UserName_for_trending_question = null;
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Trending_con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
                                            Trending_stmt = Trending_con.createStatement();
                                            String v_count = "SELECT * FROM question ORDER BY TotalLiked DESC limit 10";
                                            Trending_rs = Trending_stmt.executeQuery(v_count);
                                            while (Trending_rs.next()) {
                                                String TrendingQuestion = Trending_rs.getString("question");
                                                //out.println(TrendingQuestion);
                                    
      out.write("\n");
      out.write("                                    <a href=\"Answer.jsp?Id=");
      out.print(TrendingQuestion);
      out.write("\" >");
      out.print(TrendingQuestion);
      out.write("</a><br><br>\n");
      out.write("                                    ");

                                            }

                                            Trending_stmt.close();
                                            Trending_rs.close();
                                            Trending_con.close();
                                        } catch (Exception e) {
                                            out.println("Error " + e);
                                        }
                                    
      out.write("\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"clear-fix\"></div>\n");
      out.write("                            <div class=\"clear-fix\"></div>\n");
      out.write("\n");
      out.write("                            <div class=\"clear-fix\"></div>\n");
      out.write("                        </div>          \n");
      out.write("\n");
      out.write("                        <div class=\"clear-fix\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear-fix\"></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear-fix\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"clear-fix\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"modal fade\" id=\"myModal\" role=\"dialog\">\n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("                    <!-- Modal content-->\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                            <h4 class=\"modal-title\">");
      out.print(POST_YOUR_QUESTION_HERE);
      out.write("</h4>\n");
      out.write("                        </div>\n");
      out.write("                        ");
if (session.getAttribute("email") != null) {
      out.write("\n");
      out.write("                        <form name=\"submitquestion\" method=\"post\" action=\"SubmitQuestion.jsp\">\n");
      out.write("                            <div class=\"modal-body\">\n");
      out.write("                                <div>\n");
      out.write("                                    <div>");
      out.print(PUT_YOUR_QUESTION_HERE);
      out.write("</div>                                                        \n");
      out.write("                                    <textarea type=\"text\" class=\"anstext\" name=\"question\" placeholder=\"");
      out.print(EX);
      out.write("\" required=\"\"></textarea></div>\n");
      out.write("                                <div class=\"margintop20\">\n");
      out.write("                                    <div>");
      out.print(TAG_SUGGESTION_DESCRIPTION);
      out.write(" </div>\n");
      out.write("                                    <textarea type=\"text\" class=\"anstext\" name=\"tag_of_question\" placeholder=\"");
      out.print(TAG_EXMAPLE);
      out.write("\" required=\"\"></textarea></div>\n");
      out.write("                                <!-- <p>Some text in the modal.</p> -->\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"modal-footer\">\n");
      out.write("                                <button type=\"submit\" class=\"btn\">");
      out.print(POST);
      out.write("</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">");
      out.print(CLOSE);
      out.write("</button>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        ");
} else {
      out.write("\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            <div>\n");
      out.write("                                <div><h4 style=\"color: red;\">");
      out.print(PLEASE_LOGIN_FIRST);
      out.write("!!!</h4></div>\n");
      out.write("                                <div><a href=\"Login.jsp\">");
      out.print(CLICK_HERE_TO_LOGIN);
      out.write("</a></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-footer\">                                                    \n");
      out.write("                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">");
      out.print(CLOSE);
      out.write("</button>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"modal fade\" id=\"myModalN\" role=\"dialog\">\n");
      out.write("                <div class=\"modal-dialog\">\n");
      out.write("\n");
      out.write("                    <!-- Modal content-->\n");
      out.write("                    <div class=\"modal-content\">\n");
      out.write("\n");
      out.write("                        <div class=\"modal-header\">\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                            <h4 class=\"modal-title\">");
      out.print(YOUR_CURRENT_NODIFICATION);
      out.write("</h4>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"modal-body\">\n");
      out.write("                            <div>\n");
      out.write("                                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "NodificationScript.jsp", out, false);
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <script type=\"text/javascript\" src=\"vendor/jquery-2.1.4.js\"></script>\n");
      out.write("            <!-- Bootstrap JS -->\n");
      out.write("            <script type=\"text/javascript\" src=\"vendor/bootstrap/bootstrap.min.js\"></script>\n");
      out.write("            <!-- Bootstrap Select JS -->\n");
      out.write("            <script type=\"text/javascript\" src=\"vendor/bootstrap-select/dist/js/bootstrap-select.js\"></script>\n");
      out.write("        </div> <!-- /.main-page-wrapper -->\n");
      out.write("\n");
      out.write("    </body></html>");
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
