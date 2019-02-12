<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    Statement Trending_stmt;
    Connection Trending_con;
    ResultSet Trending_rs;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Trending_con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
        Trending_stmt = Trending_con.createStatement();
        String v_count = "SELECT * FROM topic ORDER BY total_followers DESC limit 10;";
        Trending_rs = Trending_stmt.executeQuery(v_count);
        while (Trending_rs.next()) {
            String TopicName = Trending_rs.getString("topic_name");
            int TotalFollowers = Trending_rs.getInt("total_followers");
            out.println(TopicName+" ("+TotalFollowers+")</br>");
               }

        Trending_stmt.close();
        Trending_rs.close();
        Trending_con.close();
    } catch (Exception e) {
        out.println("Error " + e);
    }
%>