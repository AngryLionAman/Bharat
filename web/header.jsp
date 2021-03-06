<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%
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
%>
<header class="home-page">
    <div class="container clear-fix">
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" style="padding-left:0px;">
            <div class="logo float-left">
                <a href="#" style="vertical-align:middle;">
                    <h4>
                        <div class="logotext">
                            Inquiryhere
                            <div>
                                <!-- <img src="images/logo/logo.png" style="width:150px;"> -->
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


                        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 float-right textalign-right">
                            <%if (session.getAttribute("email") == null) {%><a href="Login.jsp" class="helpicon" style="color: white;padding-right: 50px; "><%=LOGIN%></a><% } %>
                            <a href="index.jsp" class="helpicon" style="color: white;padding-right: 50px; "><%=HOME%></a>
                            <a href="help.jsp"><img src="images/home/HelpIcon.png" class="helpicon"/></a>
                            <% if (session.getAttribute("email") != null) {%> <a href="#" class="notification" data-toggle="modal" data-target="#myModalN">
                                <span>Inbox</span>
                                <span class="badge">0</span>
                            </a> <% } %>


                        </div>
                        <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12 float-right textalign-right">
                            <%@page language="java" %>
                            <%@page import="java.sql.*" %> 
                            <% // Database connection details 
                                String DB_URL = "jdbc:mysql://localhost/bharat";
                                String DB_USERNAME = "root";
                                String DB_PASSWORD = null;
                            %>
                            <%
                                if (session.getAttribute("URL") != null) {
                                    session.setAttribute("URL", null);
                                }
                            %>
                            <%
                                String name = null;
                                int id_of_user = 0;
                                int topic_id = 0;
                                String email = (String) session.getAttribute("email");
                                if (email == null) {
                            %><select class="helpicon w100 username" onchange="location = this.value;">
                                <option value="Login.jsp"><%=SELECT%></option>
                                <option value="Login.jsp"><%=LOGIN%></option>
                                <option value="AboutUs.jsp"><%=ABOUT_US%></option>
                                <option value="ContactUs.jsp"><%=CONTACT_US%></option>
                            </select><%
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
                            %>
                            <select class="helpicon w100 username" onchange="location = this.value;">
                                <option value="index.jsp"><%=name%></option>
                                <option value="profile.jsp?ID=<%=id_of_user%>"><%=PROFILE%></option>
                                <option value="AboutUs.jsp"><%=ABOUT_US%></option>
                                <option value="ContactUs.jsp"><%=CONTACT_US%></option>
                                <option value="Logout.jsp"><%=LOGOUT%></option>
                            </select><%
                                }
                            %>

                        </div>


                        </div>

                        </header>