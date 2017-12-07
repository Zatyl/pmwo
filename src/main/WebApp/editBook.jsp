<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="menu.jsp"/>
    <form:form method="POST" modelAttribute="book" action="${pageContext.request.contextPath}/addBook">
        <table>
            <form:input type="hidden" path="id" value="${book.id}"/>
            <tr>
                <td>Name: ${book.name}</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Description: ${book.description}</td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>Price: ${book.price}</td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td>Stock Left: ${book.stockLeft}</td>
                <td><form:input path="stockLeft"/></td>
            </tr>
            <tr>
                <td>Max: ${book.max}</td>
                <td><form:input path="max"/></td>
            </tr>
            <tr>
                <td>Rating: ${book.rating}</td>
                <td><form:input path="rating"/></td>
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