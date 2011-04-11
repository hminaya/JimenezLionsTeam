<%-- 
    Document   : OrdenesAnteriores
    Created on : 04/11/2011, 12:08:37 AM
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
                   <style type="text/css" title="currentStyle">
			@import "DataTables/css/demo_page.css";
			@import "DataTables/css/demo_table.css";
		</style>
		<script type="text/javascript" language="javascript" src="DataTables/js/jquery.js"></script>
		<script type="text/javascript" language="javascript" src="DataTables/js/jquery.dataTables.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#example').dataTable();
			} );
		</script>
    </head>
    <body>


			<div id="demo">
<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
	<thead>
		<tr>
			<th>Codigo</th>
			<th>Nombre Solicitante</th>
			<th>Telefono</th>
			<th>Fecha</th>


		</tr>
	</thead>


	<tbody>


 <!--Begin:Datos del Grid-->

 <%
ArrayList<IEntidad> listaOrdenesAnterirores = (ArrayList) request.getAttribute("lista.ordenesAnterior");
if(listaOrdenesAnterirores == null){
	//out.println("No hay Productos registrados en el Sistema");
}
else{
	for (IEntidad entidad : listaOrdenesAnterirores)
	{
            String color = (listaOrdenesAnterirores.indexOf(entidad) % 2 == 0)?"#CEF6F5":"#E0E0F8";
            EntidadOrdenes ordenes = (EntidadOrdenes) entidad;
%>


		<tr class="odd gradeA">
			<td><% out.print( ordenes.getOrdenID()); %></td>
			<td><% out.print( ordenes.getNombreSolicitante()); %></td>
			<td><% out.print( ordenes.getTelefono()); %></td>
			<td class="center"><% out.print( ordenes.getFechaPedido()); %></td>
                     

                </tr>
<%
	}
  }
%>

     <!--End:Datos del Grid-->



	</tbody>
	<tfoot>
		<tr>
			<th>Codigo</th>
			<th>Nombre Solicitante</th>
			<th>Telefono</th>
			<th>Fecha</th>
		
		</tr>
	</tfoot>
</table>


			</div>


    </body>
</html>
