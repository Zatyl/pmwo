<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="menu.jsp"/>
    <form:form method="POST" modelAttribute="book" action="${pageContext.request.contextPath}/addBook">
        <table>
            <tr>
                <td>Name:</td>
                <td><form:input path="name"/></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td>Stock Left:</td>
                <td><form:input path="stockLeft"/></td>
            </tr>
            <tr>
                <td>Max:</td>
                <td><form:input path="max"/></td>
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