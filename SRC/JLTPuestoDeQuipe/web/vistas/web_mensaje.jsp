<%-- 
    Document   : web_error
    Created on : 18-jun-2010, 23:27:49
    Author     : John Carlos Arrieta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MVC con Java - ::: Mensaje  ::: -</title>
    </head>
    <body>
        <h1><center>
                <%= (request.getParameter("mensaje")!= null)?request.getParameter("mensaje"):"Error desconocido" %>
               
            </center
        </h1>

    </body>
</html>
