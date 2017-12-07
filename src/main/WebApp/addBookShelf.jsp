<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp"/>
    <h1>Add Book Shelf</h1>
    <jsp:include page="menu.jsp"/>
    <form:form method="POST" modelAttribute="bookShelf" action="${pageContext.request.contextPath}/addBookShelf/${id}">
        <table class="table table-striped">
            <tr>
                <th>Description:</th>
            </tr>
            <tr>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>
                    <button class="btn btn-success" type="submit"/>Add Shelf</button>
                </td>
            </tr>
        </table>
    </form:form>
</div>

<jsp:include page="footer.jsp"/>