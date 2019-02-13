<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    if (session.getAttribute("email") != null) {
        Statement st1;
        Connection cn;
        ResultSet rs;
        String blog_sub = request.getParameter("blog_subject");
        String blog_description = request.getParameter("blog_description");
        String id_of_user = request.getParameter("id");
         try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(DB_URL_,DB_USERNAME_,DB_PASSWORD_);
            st1 = cn.createStatement();
            String p = "insert into blog(blog_subject,blog,blog_posted_by) values('" + blog_sub + "','" + blog_description + "','" + id_of_user + "')";
            st1.execute(p);
            st1.close();
            cn.close();
            response.sendRedirect("profile.jsp");
        } catch (Exception e1) {
            out.print("Error:-" + e1);
        }
       
    } else {
       // session.setAttribute("URL", URL);
        //response.sendRedirect("Login.jsp?Error=Please Login");
        out.println("please login first");
    }

%>