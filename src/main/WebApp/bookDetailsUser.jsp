<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>
    <h1>Book Shelf Details</h1>
    <jsp:include page="menu.jsp"/>

    <table class="table table-striped">
        <tr>
            <th>Description</th>
            <th>Expire Date</th>
        </tr>
        <c:forEach items="${books}" var="book">
            <tr>
                <td><c:out value="${book.description}"/></td>
                <td><c:out value="${book.expireDate}"/></td>
            </tr>
        </c:forEach>
    </table>

</div>

<jsp:include page="footer.jsp"/>