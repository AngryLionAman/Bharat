<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    String query = request.getParameter("str");
    if (query != null && query.length() != 0) {
        Statement stmt;
        Connection con;
        ResultSet rs;
        String StoredQuestin = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
            stmt = con.createStatement();
            String v = "SELECT * FROM question WHERE question LIKE '%" + query + "%' limit 10";
            rs = stmt.executeQuery(v);
            int i = 0;
            while (rs.next()) {
                StoredQuestin = rs.getString("question");
                // out.println("<br>" +QuestionId+" "+ StoredQuestin);
%>
<a href="Answer.jsp?Id=<%=StoredQuestin%>"><%=StoredQuestin%></a>
<%
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            out.println("Exception in SearchHind ->" + e);
        }
    }
%>