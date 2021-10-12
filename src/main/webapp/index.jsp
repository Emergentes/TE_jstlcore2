<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("listaper") == null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
                // Agregamos lista a la colección
                lista.add(new Persona(1,"Freddy Condori","72012345","fredy@hotmail.es"));
                lista.add(new Persona(2,"German Martinez","70612345","gmartinez@yahoo.com"));
                lista.add(new Persona(3,"Noel Choque","79111109","papanoel@yahoo.es"));
                // Colocamos la lista como un atributo de session            
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp">Probando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recoriendo la colección con forEach</a></li>           
        </ul>
    </body>
</html>
