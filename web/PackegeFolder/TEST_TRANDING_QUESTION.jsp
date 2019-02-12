<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<a href="topic">Display All Topic</a> <BR><BR>
<a href="FollowedTopicbyUser">Display All Topic OF SPECIFIC USER</a> <BR><BR>
<a href="ResentPostQuestion"RelatdQuestionOffollowedTopicByUser>Display TOP 10 RESENT QUESTION</a><BR><BR>
<a href="RelatdQuestionOffollowedTopicByUser"TrandingQuestion>Display question of user by followed topic</a><BR><BR>
<a href="TrandingQuestion">Display Trending question </a><BR><BR>
<div><table border="1">
    <tr>
        <th>TRENDING QUESTION</th>
    </tr>
    <c:forEach var="QUESTION" items="${trandingQuestion}">
    <tr>
        <td><c:out value="${QUESTION.question}"></c:out></td>   
    </tr>
    </c:forEach>
    </table>
</div>
