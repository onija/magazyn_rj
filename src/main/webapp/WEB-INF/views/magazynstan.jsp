<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <title>Magazyn - Praca ko?cowa - Robert J?drusik</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="${pageContext.request.contextPath}/resources/style/arkusz01.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
        <script type="text/javascript" language="javascript" src="js/jquery.dropdownPlain.js"></script>
    </head>
    <body>
        <div id="page-wrap">

            <%@ include file="./menu.jsp"%><br>
            
            <table>
                <tr>
                    <td>Id</td>
                    <td>Nazwa</td>
                    <td>Opis</td>
                    <td>Cena</td>
                    <td>Ilosc</td>
                    <td>Kategoria</td>
                    <td>Usu&#324;</td>
                    <td>Zmie&#324;</td>
                </tr>
                <c:forEach var="towar" items="${magazyn}">
                    <tr>
                        <td><c:out value="${towar.id+1}" /></td>
                        <td><c:out value="${towar.nazwa}" /></td>
                        <td><c:out value="${towar.opis}" /></td>
                        <td><c:out value="${towar.cena}" /></td>
                        <td><c:out value="${towar.ilosc}" /></td>
                        <td><c:out value="${towar.kategoria}" /></td>
                        <td><a href="magazyn?id=${towar.id}&action=delete">Usu&#324;</a></td>
                        <td><a href="magazynzmien?id=${towar.id}&action=update">Zmie&#324;</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>