<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%   String URL = request.getParameter("URL");
    if (session.getAttribute("email") != null) {
        Statement st1;
        Connection cn;
        ResultSet rs;
        String firstname, lastname, password, email;
        String v = request.getParameter("q_id");
        String v2 = request.getParameter("_id_of_user");
        int Q_id = Integer.valueOf(v);
        int id_of_user = Integer.valueOf(v2);
        String answer = request.getParameter("answer");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
            st1 = cn.createStatement();
            String p = "insert into answer(q_id,answer,Answer_by_id) values('" + Q_id + "','" + answer + "','" + id_of_user + "')";
            st1.execute(p);
            st1.close();
            cn.close();
            out.println("Data has been inserted");
            response.sendRedirect("index.jsp");
        } catch (Exception e1) {
            out.print("Error:-" + e1);
        }
    } else {
        session.setAttribute("URL", URL);
        response.sendRedirect("Login.jsp?Error=Please Login");
        out.println("please login first" + URL);
    }

%>
