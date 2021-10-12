<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL If</title>
    </head>
    <body>
        <h1>Mostrar sectores de forma condicional</h1>
        <p>Para visualizar el texto condiciones necesita agregar un parametro en
            la barra de direcciones ej. ?login = ok</p>
        <c:if test="${param.login == 'ok'}" var="resultado" scope="request">
            <h3 style="color:red">Este texto solo se muestra si el parametro enviado es ok</h3>
        </c:if>
        <a href="index.jsp">Volver</a>
    </body>
</html>
