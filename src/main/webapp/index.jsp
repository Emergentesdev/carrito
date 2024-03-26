<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("lista") == null) {
        // Inicializar una coleccion
        ArrayList<String> listAux = new ArrayList<String>();
        // Se guarda el atributo lista
        session.setAttribute("lista", listAux);
    }

    ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Carrito de compras</h1>
        <p>Inserte los productos que desea</p>
        <form action="MainServlet" method="post">
            Producto: <input type="text" name="producto">
            <input type="submit">
        </form>
        <a href="MainServlet">Vaciar carrito</a>
        <ul>
            <%
                if (lista != null) {
                    for (String item : lista) {
            %>
            <li><%= item %></li>
                <%
                        }
                    }
                %>
        </ul>
    </body>
</html>
