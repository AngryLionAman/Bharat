<%
    session.setAttribute("name", null);
    session.setAttribute("email", null);
    session.invalidate();
    response.sendRedirect("Login.jsp?Error=Thanks for Using our service Please visit again!!");
%>
