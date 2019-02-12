<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>This is the example of XML file handling</h1></center>
        <%
            ServletContext servletContext = getServletContext();
            String UserName = servletContext.getInitParameter("UserName");
            String PassWord = servletContext.getInitParameter("PassWord");
            String url = servletContext.getInitParameter("url");
            out.println("UserName:- " + UserName);
            out.println("<br>Password:- " + PassWord);
            out.println("<br>Database Url:- " + url);
        %>
    </body>
</html>
