<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%  
    if (session.getAttribute("email") != null) {
        String email = (String) session.getAttribute("email");
        Statement stmt = null;
        Connection con = null;
        ResultSet rs = null;
        String firstname = null;
        String lastname = null;
        String interests = null;
        String higher_edu = null;
        String best_achievement = null;
        String bio = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
            stmt = con.createStatement();
            String v = "SELECT * FROM newuser WHERE email = '" + email + "'";
            rs = stmt.executeQuery(v);
            while (rs.next()) {
                firstname = rs.getString("firstname");
                lastname = rs.getString("lastname");
                interests = rs.getString("interests");
                higher_edu = rs.getString("higher_edu");
                best_achievement = rs.getString("best_achievement");
                bio = rs.getString("bio");
            }
            
            //out.println("<br>");
            if (interests == null) {
                out.println("<br><a href=UpdateUserProfile.jsp>Insert your interests</a>");
            }
            if (higher_edu == null) {
                out.println("<br><a href=UpdateUserProfile.jsp>Insert your higher_edu</a>");
            }
            if (interests == null) {
                out.println("<br><a href=UpdateUserProfile.jsp>Insert your interests</a>");
            }
            if (best_achievement == null) {
                out.println("<br><a href=UpdateUserProfile.jsp>Insert your best_achievement</a>");
            }
            if (bio == null) {
                out.println("<br><a href=UpdateUserProfile.jsp>Insert your bio</a>");
            }
            if(interests != null && higher_edu != null && interests != null && best_achievement != null && bio != null){
                out.println("<br><a href=UpdateUserProfile.jsp>Your profile is up to date</a>");
            }
            
        } catch (Exception e) {
            out.println("Error" + e);
        }finally{
            stmt.close();
            con.close();
            rs.close();
        }
    }
%>
