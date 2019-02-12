<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.sql.SQLException"%>
<!--@MultipartConfig(maxFileSize = 16177215)-->
<%
     // database connection settings
     final String dbURL = "jdbc:mysql://localhost:3306/AppDBT";
     final String dbUser = "root";
     final String dbPass = null;
     
   
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
         
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        String message = null;
        Part filePart = request.getPart("photo");
        if (filePart != null) {
           
             message = filePart.getName();
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
          // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO contacts (first_name, last_name, photo) values (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, firstName);
            statement.setString(2, lastName);
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputStream);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    message = "Error "+ex;
                }
            }
            out.println(message);
        }
%>