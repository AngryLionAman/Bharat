<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    if (session.getAttribute("email") != null) {
        String fullname, email, HigherQualification, BestAchievement, bio;
        fullname = request.getParameter("fullname");
        email = request.getParameter("email");
        HigherQualification = request.getParameter("HigherQualification");
        BestAchievement = request.getParameter("BestAchievement");
        bio = request.getParameter("bio");
        //out.println(fullname + email + HigherQualification + BestAchievement + bio);
        String UserEmail = (String) session.getAttribute("email");
        //out.println(UserEmail);
        if (fullname != null && email != null) {
            Connection con;
            PreparedStatement ps = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
                String UpdateQuiry = "update newuser set higher_edu = '" + HigherQualification + "',best_achievement = '" + BestAchievement + "' ,bio = '" + bio + "' where email = '" + UserEmail + "'";
                ps = con.prepareStatement(UpdateQuiry);
                ps.executeUpdate();
                con.close();
                ps.close();
                //out.println("Profile has been successfull updated");
%>
<script>window.alert("Profile has been successfull updated");
        window.location = "http://localhost:8081/InquiryHere/profile.jsp";</script>
    <%
                } catch (Exception e) {
                    out.println("Error : " + e);
                }
            } else {
                out.println("Value can't be Null");
            }
        } else {
            out.println("You can't access this page directly");
        }

    %>

