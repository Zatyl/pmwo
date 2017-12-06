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
                  <td>Description</td>
                  <td>Expire Date</td>
                </tr>
          <c:forEach items="${books}" var="book">
            <tr>
              <td><c:out value="${book.description}" /></td>
               <td><c:out value="${book.expireDate}" /></td>
            </tr>
          </c:forEach>
    </table>

</body>
</html>