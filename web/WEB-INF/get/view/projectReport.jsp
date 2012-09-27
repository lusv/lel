<%-- 
    Document   : projectReport
    Created on : Sep 25, 2012, 11:42:48 AM
    Author     : Luis Salazar <bp.lusv@gmail.com>
--%>
<h1><fmt:message key="project" />:&nbsp;<c:out value="${project.name}" /></h1>
<c:forEach var="definition" items="${projectFacade.getDefinitionCollection(project.id)}">
    <div>
        <b><fmt:message key="symbols" />:&nbsp;</b>
        <c:forEach var="synonym" items="${definitionFacade.getSynonymsGroup(definition.id)}" varStatus="iter">
            <c:out value="${synonym.name}" /><c:if test="${!iter.last}">,&nbsp;</c:if>
        </c:forEach>
    </div>
    <div><b><fmt:message key="classification" />:&nbsp;</b><fmt:message key="${empty definition.classification.name ? 'n/a' : definition.classification.name}" /></div>
    <div><b><fmt:message key="category" />:&nbsp;</b><fmt:message key="${definition.category.name}" /></div>
    <div><b><fmt:message key="notion" />:&nbsp;</b><c:out value="${definition.notion}" /></div>
    <div><b><fmt:message key="actual intention" />:&nbsp;</b><c:out value="${definition.actualIntention}" /></div>
    <div><b><fmt:message key="future intention" />:&nbsp;</b><c:out value="${definition.futureIntention}" /></div>
    <hr />
</c:forEach>