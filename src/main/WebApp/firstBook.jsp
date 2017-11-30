<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
    <title>Spring Security Example</title>
</head>
<body>
<jsp:include page="menu.jsp" />

    <h1> ${book.name} </h1>
    </tr>
    <h1> ${book.description} </h1>
    </tr>
        <h1> ${book.price} </h1>
        </tr>
            <h1> ${book.stockLeft} </h1>
            </tr>
                <h1> ${book.max} </h1>

</body>
</html>