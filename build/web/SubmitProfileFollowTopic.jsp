<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    Statement st1, stmt, stmt3;
    Connection cn;
    ResultSet rs, rs1, rs3;
    String email = (String) session.getAttribute("email");
    if (email == null) {
        out.println("you can't access this page direcitly");
    } else {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
            st1 = cn.createStatement();
            stmt = cn.createStatement();
            stmt3 = cn.createStatement();
            String v = "select ID from newuser where email='" + email + "'";
            rs1 = stmt.executeQuery(v);
            int user_id = 0;
            while (rs1.next()) {
                user_id = rs1.getInt("ID");
            }
            String[] Topic = request.getParameterValues("MultipleSelectedTopic");
            //String result = new String("");
            for (int i = 0; i < Topic.length; i++) {
                int Topic_id3 = 0;
                String v3 = "SELECT  unique_id FROM topic WHERE topic_name = '" + Topic[i] + "'";
                rs3 = stmt.executeQuery(v3);
                while (rs3.next()) {
                    Topic_id3 = rs3.getInt("unique_id");
                }
                stmt3.close();
                rs3.close();

                String p = "insert into topic_followers_detail(topic_id,user_or_followers_id) values('" + Topic_id3 + "','" + user_id + "') ";
                st1.execute(p);
            }
            rs1.close();
            st1.close();
            stmt.close();
            cn.close();
            out.println("Recored has been successfully updated");
            response.sendRedirect("Login.jsp");
        } catch (Exception e1) {
            out.print("Error:-" + e1);
        }
    }
%>