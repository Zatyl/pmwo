<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

    <h1>Book List User</h1>
    <jsp:include page="menu.jsp"/>

    <table class="table table-striped">
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Stock Left</th>
            <th>Rating</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${bookList}" var="book">
            <tr>
                <td><c:out value="${book.name}"/></td>
                <td><c:out value="${book.description}"/></td>
                <td><c:out value="${book.price}"/></td>
                <td><c:out value="${book.stockLeft}"/></td>
                <td><c:out value="${book.rating}"/></td>
                <td>
                    <form action="http://localhost:8081${pageContext.request.contextPath}/rentBook?bookId=${book.id}&userId=1&bookshelfId=${id}">
                        <button class="btn btn-success" type="submit"/>Rent</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

<jsp:include page="footer.jsp"/>