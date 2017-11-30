<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title>Spring Security Example</title>
</head>
<body>
<jsp:include page="menu.jsp" />

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
              <td><c:out value="${book.name}" /></td>
              <td><c:out value="${book.description}" /></td>
              <td><c:out value="${book.price}" /></td>
              <td><c:out value="${book.stockLeft}" /></td>
              <td><c:out value="${book.max}" /></td>
              <td><c:out value="${book.rating}" /></td>
            </tr>
          </c:forEach>
    </table>

</body>
</html>