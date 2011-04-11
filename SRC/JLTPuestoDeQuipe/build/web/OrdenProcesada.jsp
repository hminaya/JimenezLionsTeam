<%-- 
    Document   : OrdenProcesada
    Created on : 04/10/2011, 06:25:22 PM
    Author     : developer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.puestodequipe.mvc.models.*" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmacion de Orden</title>
    </head>
    <body>
        <h1>Su Orden ha sido procesada satisfactoriamente</h1>
			<div id="demo">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
			<th>Codigo</th>
			<th>Nombre Solicitante</th>
			<th>Telefono</th>
			<th>Fecha</th>
                        <th>Detalle</th>

		</tr>
	</thead>


	<tbody>


 <!--Begin:Datos del Grid-->

 <%
String OrdenP= request.getAttribute("ordenidvar").toString();



	
%>

        <a href="index.jsp">Volver a la pagina principal</a>
		<tr class="odd gradeA">

                    
			<td></td>

                </tr>
<%
	

%>

     <!--End:Datos del Grid-->



        
    </body>
</html>
