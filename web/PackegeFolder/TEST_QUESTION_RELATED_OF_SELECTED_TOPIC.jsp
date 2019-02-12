<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    out.println("<br>This is testing page");
%>
<a href="topic">Display All Topic</a> 
<div><table border="1">
    <tr>
        <th>QUESTION_ID</th>
        <th>QUESTION</th>
        <TH>USER_ID</TH>
        <TH>USER_FIRST_NAME</TH>
    </tr>
    <c:forEach var="QUESTION" items="${RelatdQuestionOffollowedTopicByUser}">
    <tr>
        <td><c:out value="${QUESTION.questionId}"></c:out></td>  
        <td><c:out value="${QUESTION.question}"></c:out></td>  
        <td><c:out value="${QUESTION.userId}"></c:out></td>  
        <td><c:out value="${QUESTION.userFirstName}"></c:out></td>  
    </tr>
    </c:forEach>
    </table>
</div>
