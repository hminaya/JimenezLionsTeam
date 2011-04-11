<%-- 
    Document   : index
    Created on : 04/08/2011, 06:55:26 AM
    Author     : developer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puesto de Quipe</title>
    </head>
    <body>
        <h1>Redireccionar a Web Site</h1>
        <%
    String redirectURL = "ServletControlProductos?accion=listado";
    response.sendRedirect(redirectURL);
        %>

    </body>
</html>
