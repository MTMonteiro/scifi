<%-- 
    Document   : logout
    Created on : 16/07/2012, 16:32:11
    Author     : carlosmaciel
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
    //Fecha a sess�o e redireciona para a p�gina inicial, como a sess�o est� fechada,
    //  ele reenvia para a pagina de login, quando o usuario loga, ele envia para a pagina inicial

    session.invalidate();
    response.sendRedirect("admin.jsf");
%>
