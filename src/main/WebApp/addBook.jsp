<jsp:include page="header.jsp"/>

    <h1>Add Book</h1>
    <jsp:include page="menu.jsp"/>
    <form:form method="POST" modelAttribute="book" action="${pageContext.request.contextPath}/addBook">
        <table class="table table-striped">
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
                    <button class="btn btn-success" type="submit"/>Submit</button>
                </td>
                <td></td>
            </tr>
        </table>

    </form:form>
</div>

<jsp:include page="footer.jsp"/>