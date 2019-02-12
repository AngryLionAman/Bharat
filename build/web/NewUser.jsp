
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%
    String firstname, lastname, password, email;
    firstname = request.getParameter("firstname");
    lastname = request.getParameter("lastname");
    email = request.getParameter("email");
    password = request.getParameter("password");

    if (firstname == null || lastname == null || email == null || password == null) {
        out.println("you can't access this page direcitly");
    } else {
        Statement stmt_check;
        Connection con_check;
        ResultSet rs_check;
        String Email = request.getParameter("email");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con_check = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
            stmt_check = con_check.createStatement();
            String v_check = "SELECT email FROM newuser WHERE email = '" + Email + "'";
            rs_check = stmt_check.executeQuery(v_check);
            int i = 0;
            while (rs_check.next()) {
                String Stored_email = rs_check.getString("email");
                if (Stored_email.equals(Email)) {
                    i = 1;
                }
            }
            rs_check.close();
            stmt_check.close();
            con_check.close();
            if (i == 1) {
                response.sendRedirect("signup.jsp?Error=This email is already registered please choose another one");
            } else {
                Statement st1;
                Connection cn;
                ResultSet rs;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    cn = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                    st1 = cn.createStatement();
                    String p = "insert into newuser(firstname,lastname,email,password) values('" + firstname + "','" + lastname + "','" + email + "','" + password + "')";
                    st1.execute(p);
                    st1.close();
                    cn.close();
                    session.setAttribute("email", email);
                    response.sendRedirect("CompleteProfilefFollowTopic.jsp");
                } catch (Exception e1) {
                    out.print("Error:-" + e1);
                }
            }
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    }
%>