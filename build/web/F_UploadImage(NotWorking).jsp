<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@include file="site.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!    String str;
    File file;
    int maxSize = 1024 * 1024 * 1024;
    int maxFactSize = 1024 * 1024 * 1024;
    String path = "C:/Users/AngryLion/Documents/NetBeansProjects/InquiryHere/web/images/UploadedImage";
%>
<%
    if (session.getAttribute("email") != null) {
        String type = request.getContentType();
        String filename = request.getContextPath();
        try {
                String UserEmail = (String) session.getAttribute("email");
                        try {
                            String updateSQL = "UPDATE newuser SET imagepath = ? WHERE email=?";

                            try (Connection conn = DriverManager.getConnection(DB_URL_, DB_USERNAME_, DB_PASSWORD_);
                                    PreparedStatement pstmt = conn.prepareStatement(updateSQL)) {

                                // read the file
                                File file = new File(filename);
                                FileInputStream input = new FileInputStream(file);

                                // set parameters
                                pstmt.setBinaryStream(1, input);
                                pstmt.setString(2, UserEmail);

                                // store the resume file in database
                                out.println("Reading file " + file.getAbsolutePath());
                                out.println("Store file in the database.");
                                pstmt.executeUpdate();

                            } catch (SQLException | FileNotFoundException e) {
                                out.println(e.getMessage());
                            }
                        } catch (Exception e1) {
                            out.print("Error:-" + e1);
                        }
                    
        } catch (Exception x) {
            out.println("Error in Image file uploading" + x);
        }
    } else {
        out.println("You can't access this page directly");
    }
%>
