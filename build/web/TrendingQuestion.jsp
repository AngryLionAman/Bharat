<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    Statement Trending_stmt;
    Connection Trending_con;
    ResultSet Trending_rs;
    String UserName_for_trending_question = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Trending_con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
        Trending_stmt = Trending_con.createStatement();
        String v_count = "SELECT * FROM question ORDER BY TotalLiked DESC limit 10;";
        Trending_rs = Trending_stmt.executeQuery(v_count);
        while (Trending_rs.next()) {
            String TrendingQuestion = Trending_rs.getString("question");
             //out.println(TrendingQuestion);
%>
<a href="Answer.jsp?Id=<%=TrendingQuestion%>" ><%=TrendingQuestion%></a><br><br>
<%
        }

        Trending_stmt.close();
        Trending_rs.close();
        Trending_con.close();
    } catch (Exception e) {
        out.println("Error " + e);
    }
%>