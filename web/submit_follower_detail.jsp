<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<% if(session.getAttribute("email")==null) response.sendRedirect("Login.jsp"); %>
<%  
    Statement st1;
    Connection cn;
    String user_id = request.getParameter("val_topic");
    String followers_id = request.getParameter("val2_topic");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        cn = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
        st1 = cn.createStatement();
        String p = "insert into ak_follower_detail(user_id,followers_id) values('" + user_id + "','" + followers_id + "')";
        st1.execute(p);
        st1.close();
        cn.close();
        out.println("Followed");
    } catch (Exception e1) {
        out.println("Error:-" + e1);
    }
%>
