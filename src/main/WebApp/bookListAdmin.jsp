<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>
    <h1>Book List Admin</h1>
    <jsp:include page="menu.jsp"/>

    <table class="table table-striped">
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Stock Left</th>
            <th>Max</th>
            <th>Rating</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td><c:out value="${book.name}"/></td>
                <td><c:out value="${book.description}"/></td>
                <td><c:out value="${book.price}"/></td>
                <td><c:out value="${book.stockLeft}"/></td>
                <td><c:out value="${book.max}"/></td>
                <td><c:out value="${book.rating}"/></td>
                <td>
                    <form action="http://localhost:8081${pageContext.request.contextPath}/editBook/${book.id}">
                        <button class="btn btn-info" type="submit"/><span class="glyphicon glyphicon-edit" style="padding-right: 10px;"></span>Edit</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

<jsp:include page="footer.jsp"/>