<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

    <h1>User Bookshelf</h1>
    <jsp:include page="menu.jsp"/>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Description</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${shelfs}" var="bookShelf">
            <tr>
                <td><c:out value="${bookShelf.id}"/></td>
                <td><c:out value="${bookShelf.description}"/></td>
                <td>
                    <form action="http://localhost:8081${pageContext.request.contextPath}/bookshelf/${bookShelf.id}">
                        <button class="btn btn-info" type="submit" style="margin-bottom: 5px;"/>View</button>
                    </form>

                    <form action="http://localhost:8081${pageContext.request.contextPath}/bookList/${bookShelf.id}">
                        <button class="btn btn-success" type="submit"/>Add book</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <form action="http://localhost:8081${pageContext.request.contextPath}/addBookShelf/${id}">
        <button class="btn btn-success" type="submit"/>Add Book Shelf</button>
    </form>

</div>

<jsp:include page="footer.jsp"/>