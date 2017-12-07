<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="menu.jsp"/>

    <table>
        <tr>
            <td>Id</td>
            <td>Description</td>
        </tr>
        <c:forEach items="${shelfs}" var="bookShelf">
            <tr>
                <td><c:out value="${bookShelf.id}"/></td>
                <td><c:out value="${bookShelf.description}"/></td>
                <td>
                    <form action="http://localhost:8081${pageContext.request.contextPath}/bookshelf/${bookShelf.id}">
                        <input type="submit" value="View"/>
                    </form>
                </td>
                <td>
                    <form action="http://localhost:8081${pageContext.request.contextPath}/bookList/${bookShelf.id}">
                        <input type="submit" value="Add book"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <form action="http://localhost:8081${pageContext.request.contextPath}/addBookShelf/${id}">
        <input type="submit" value="Add Book Shelf"/>
    </form>

</div>

<jsp:include page="footer.jsp"/>