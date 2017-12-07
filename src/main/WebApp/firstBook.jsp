<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp"/>

<div class="container">
    <jsp:include page="menu.jsp"/>

    <h1> ${book.name} </h1>
    </tr>
    <h1> ${book.description} </h1>
    </tr>
    <h1> ${book.price} </h1>
    </tr>
    <h1> ${book.stockLeft} </h1>
    </tr>
    <h1> ${book.max} </h1>

</div>

<jsp:include page="footer.jsp"/>