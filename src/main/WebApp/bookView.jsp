<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="menu.jsp"/>

    <table>
        <tr>
            <td>Name</td>
            <td>Description</td>
            <td>Price</td>
            <td>Stock Left</td>
            <td>Max</td>
            <td>Rating</td>
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
                        <input type="submit" value="Edit"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

<jsp:include page="footer.jsp"/>