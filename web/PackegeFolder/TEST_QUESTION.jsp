<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    out.println("<br>This is testing page");
%>
<a href="topic">Display All Topic</a> 
<div><table border="1">
    <tr>
        <th>Id</th>
        <th>Topic name</th>
    </tr>
    <c:forEach var="top" items="${followedtopicbyuser}">
    <tr>
        <td>${top.topicId}</td>
        <td><c:out value="${top.topicName}"></c:out></td>    
    </tr>
    </c:forEach>
    </table>
</div>
