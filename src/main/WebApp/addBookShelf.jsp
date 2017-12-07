<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="menu.jsp"/>
    <form:form method="POST" modelAttribute="bookShelf" action="${pageContext.request.contextPath}/addBookShelf/${id}">
        <table>
            <tr>
                <td>Description:</td>
                <td><form:input path="description"/></td>
            </tr>

            <tr>
                <td>
                    <input type="submit" value="Submit"/>
                </td>
            </tr>
        </table>
    </form:form>
</div>

<jsp:include page="footer.jsp"/>