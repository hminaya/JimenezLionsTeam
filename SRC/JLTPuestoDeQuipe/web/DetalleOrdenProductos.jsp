<%-- 
    Document   : DetalleOrdenProductos
    Created on : 04/10/2011, 05:45:06 PM
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
        <title>JSP Page</title>
    </head>
    <body>
 <%

 double TotalGeneral=0;
ArrayList<IEntidad> listaOrdenes = (ArrayList) request.getAttribute("lista.ordenesdetalles");
if(listaOrdenes == null){
	//out.println("No hay Productos registrados en el Sistema");
}
else{
	for (IEntidad entidad : listaOrdenes)
	{
            String color = (listaOrdenes.indexOf(entidad) % 2 == 0)?"#CEF6F5":"#E0E0F8";
            EntidadDetalleOrdenes ordenes = (EntidadDetalleOrdenes) entidad;
%>


Codigo: <% out.print( ordenes.getOrdenID()); %>  --
Nombre Producto: <% out.print( ordenes.getNombre_Producto()); %>  --
Precio: <% out.print( ordenes.getPrecio_Venta()); %>   --
Cantidad: <% out.print( ordenes.getCantidad()); %>  --
Subtotal: <% out.print( ordenes.getSubTotal()); %>
<br/>

<% TotalGeneral=TotalGeneral+ordenes.getSubTotal(); %>





<%
	}

   out.print("Total Ganeral..:  "+ TotalGeneral);

  }
%>
    </body>
</html>
