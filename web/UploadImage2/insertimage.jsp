<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    try {
        String ImageFile = "";
        String itemName = "";
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart) {
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;
            try {
                items = upload.parseRequest(request);
            } catch (FileUploadException e) {
                out.println("<br>Error upper prog: -"+e);
            }

            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    String value = item.getString();
                    if (name.equals("ImageFile")) {
                        ImageFile = value;
                    }

                } else {
                    try {
                        itemName = item.getName();
                        File savedFile = new File(config.getServletContext().getRealPath(" / ")+"F:/"+itemName);
                        item.write(savedFile);
                    } catch (Exception e) {
                        out.println("<br>Error in downprog" + e);
                    }
                }
            }
        }
    } catch (Exception e) {
        out.println(e.getMessage());
    }
%>