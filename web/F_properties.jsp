<%@page import="java.io.InputStream" %>
<%@page import="java.util.Properties" %>

<%try{
    InputStream stream = Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties");
    Properties props = new Properties();
    props.load(stream);
    props.list(System.err);
    out.println("Done");
}catch(Exception e){
    out.println(e.fillInStackTrace());
}
%>