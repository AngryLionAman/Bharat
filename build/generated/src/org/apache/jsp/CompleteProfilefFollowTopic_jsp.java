package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class CompleteProfilefFollowTopic_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("        ");
      out.write("\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <!-- For IE -->\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\n");
      out.write("        <!-- For Resposive Device -->\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <title>SignUp | InquiryHere.com</title>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <!-- responsive style sheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/responsive.css\">\n");
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
      out.write("                                            <form action=\"SearchBar.jsp\">\n");
      out.write("                                                <input type=\"text\" style=\"width: 100%;\" name=\"search\" required=\"\" >\n");
      out.write("                                                <button type=\"submit\" style=\"float: right;width: 50px;\" />Search</button>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                   \n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    </header>\n");
      out.write("                                    <div class=\"clear-fix\"></div>\n");
      out.write("                                    <div class=\"bodydata\">\n");
      out.write("                                        <div class=\"container clear-fix\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("\n");
      out.write("                                                <div class=\"col-lg-6 col-md-6 col-sm-12 col-xs-12\">                                                   \n");
      out.write("                                                    <div class=\"row\"><center>                                                           \n");
      out.write("                                                            <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n");
      out.write("                                                                <div class=\"themeBox\" style=\"height:210px;\">  \n");
      out.write("                                                                    <label for=\"fname\">Select at least five topic</label>\n");
      out.write("                                                                    <form action=\"SubmitProfileFollowTopic.jsp\" method=\"get\" name=\"dropdown_selection\">                                                                            \n");
      out.write("                                                                        <select id=\"s5\" multiple=\"multiple\" name=\"MultipleSelectedTopic\" >\n");
      out.write("                                                                            \n");
      out.write("                                                                            \n");
      out.write("                                                                            ");

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
                                                                            
      out.write("\n");
      out.write("                                                                        </select>                                                                                 \n");
      out.write("                                                                        <div class=\"float-right margintop20\" style=\"vertical-align:bottom\">\n");
      out.write("                                                                            <button type=\"submit\" class=\"btn\" data-toggle=\"modal\" >Follow</button>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                    </form>                                                                        \n");
      out.write("                                                                </div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                                        <div style=\"color:red;\">Note: If you are using desktop browser then press <b>CTRL</b> and select topic</div>\n");
      out.write("\n");
      out.write("                                                        </center> </div>\n");
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
