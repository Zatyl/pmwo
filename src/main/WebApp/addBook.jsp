<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
    <title>Spring Security Example</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<form:form method="POST" modelAttribute="book" action="${pageContext.request.contextPath}/addBook">
   <table>
        <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
        </tr>
        <tr>
                <td>Description:</td>
                <td><form:input path="description" /></td>
        </tr>
        <tr>
                <td>Price:</td>
                <td><form:input path="price" /></td>
        </tr>
        <tr>
                        <td>Stock Left:</td>
                        <td><form:input path="stockLeft" /></td>
                </tr>
        <tr>
                        <td>Max:</td>
                        <td><form:input path="max" /></td>
                </tr>

        <tr>
            <td>
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>