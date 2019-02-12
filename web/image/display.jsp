<%@page import="java.util.Base64"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
    Blob image = null;
    Connection con = null;
    byte[] imgData = null;
    Statement stmt = null;
    ResultSet rs = null;
    String imgDataBase64 = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appdbt", "root", null);
        stmt = con.createStatement();
        rs = stmt.executeQuery("select photo from contacts where contact_id = '9'");
        if (rs.next()) {
            image = rs.getBlob("photo");
            imgData = image.getBytes(1, (int) image.length());
            imgDataBase64 = new String(Base64.getEncoder().encode(imgData));
        } else {
            out.println("Display Blob Example");
            out.println("image not found for given id>");
            return;
        }
        //response.setContentType("image/gif");// display the image
        //OutputStream o = response.getOutputStream();
        //out.println("what is this");
        //o.write(imgData);

%>
<img src="data:image/gif;base64,<%= imgDataBase64%>" alt="images Here" width="250px" height="200px"/>
<%
        //o.flush();
        //o.close();
    } catch (Exception e) {
        out.println("Unable To Display image");
        out.println("<br>Image Display Error=" + e.getMessage());
        return;
    } finally {
        try {
            rs.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>