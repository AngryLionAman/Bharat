<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    out.println("<br>This is testing page");
%>
<a href="try1">Display All Topic</a> <BR><BR>
<a href="FollowedTopicbyUser">Display All Topic OF SPECIFIC USER</a> <BR><BR>
<a href="ResentPostQuestion"RelatdQuestionOffollowedTopicByUser>Display TOP 10 RESENT QUESTION</a><BR><BR>
<a href="RelatdQuestionOffollowedTopicByUser"TrandingQuestion>Display question of user by followed topic</a><BR><BR>
<a href="TrandingQuestion">Display Trending question </a><BR><BR>
<div><table border="1">
    <tr>
        <th>Id</th>
        <th>Topic name</th>
    </tr>
    <c:forEach var="top" items="${topic}">
    <tr>
        <td>${top.topicId}</td>
        <td><c:out value="${top.topicName}"></c:out></td>    
    </tr>
    </c:forEach>
    </table>
</div>
