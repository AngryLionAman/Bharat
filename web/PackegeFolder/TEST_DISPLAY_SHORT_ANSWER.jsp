<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div><table border="1">
    <tr>
        <th>QUESTION</th>
        <th>ANSWER</th>
    </tr>
    <c:forEach var="QUESTION" items="${answerPojoClass}">
    <tr>
        <td><c:out value="${QUESTION.question}"></c:out></td>  
        <td><c:out value="${QUESTION.answer}"></c:out></td> 
    </tr>
    </c:forEach>
    </table>
</div>
