<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.puestodequipe.mvc.models.*" %>
<%@page import="java.util.ArrayList" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<link type="text/css" rel="stylesheet" href="administrator/img/Panel/datepicker.css">
		<link type="text/css" rel="stylesheet" href="administrator/img/Panel/admin.css">
		<link type="text/css" rel="stylesheet" href="administrator/img/Panel/jquery.cluetip.css">
		<link type="text/css" rel="stylesheet" href="administrator/img/Panel/admin(1).css">
		<title>PuestoDeQuipe.Com Panel Administrativo</title>
		<script type="text/javascript">
			var helpboxes = 1;
			var roundMode = 2;
		</script>
		<script type="text/javascript" src="administrator/img/Panel/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="administrator/img/Panel/jquery.hoverIntent.minified.js"></script>
		<script type="text/javascript" src="administrator/img/Panel/jquery.cluetip.js"></script>
		<script type="text/javascript" src="administrator/img/Panel/admin.js"></script>
		<script type="text/javascript" src="administrator/img/Panel/toggle.js"></script>
		<script type="text/javascript" src="administrator/img/Panel/tools.js"></script>
		<script type="text/javascript" src="administrator/img/Panel/ajax.js"></script>
		<link rel="shortcut icon" href="http://www.jimenezsoft.com/favicon.ico">
		
		<!--[if IE]>
		<link type="text/css" rel="stylesheet" href="/demo/css/admin-ie.css" />
		<![endif]-->
		<style type="text/css">
			div#header_infos, div#header_infos a#header_shopname, div#header_infos a#header_logout, div#header_infos a#header_foaccess {
				color:#383838
			}
		</style>


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
	<h3>El Front-office y Back-office se pueden administrar por aqui</h3>
	<div id="top_container">
		<div id="container">
			<div id="header_infos"><span>
				<a id="header_shopname" href=""><span>PuestoDeQuipe.Com Administrador</span></a><br>
				
				[ <a href="" id="header_logout"><span>logout</span></a> ]
				- <a href="" style="font-size: 10px;"><img src="administrator/img/Panel/employee.gif" alt="">
                                    Mi Preferencia</a>
			</span></div>
			<div id="header_search">
				<form method="post" action="">
      </form>
			</div>
			<div id="header_quick">
				<script type="text/javascript">
				function quickSelect(elt)
				{
					var eltVal = $(elt).val();
					if (eltVal == "0") return false;
					else if (eltVal.substr(eltVal.length - 6) == "_blank") window.open(eltVal.substr(0, eltVal.length - 6), "_blank");
					else location.href = eltVal;
				}
				</script>
    </div>
			<div class="flatclear">&nbsp;</div>
			
			<ul id="menu"><li class="submenu_size active" id="maintab1">
			<a href="">
				<img src="administrator/img/Panel/AdminCatalog.gif" alt=""> Ordenes
			</a>
		</li><li class="submenu_size " id="maintab2">
			<a href="">
				<img src="administrator/img/Panel/AdminCustomers.gif" alt=""> Ofertas
			</a>
		</li><li class="submenu_size " id="maintab3">
			<a href="">
				<img src="administrator/img/Panel/AdminOrders.gif" alt=""> Inventario
			</a>
		</li><li class="submenu_size " id="maintab4">
			<a href="">
				<img src="administrator/img/Panel/AdminPayment.gif" alt=""> Administrativo
			</a>
		

		</li>
                        </ul><div id="tab1_subtabs" style="display:none">

                            </div>
                        
                        
    <div id="tab2_subtabs" style="display:none"> </div>
                       <div id="main">
      <div id="content">
          <div class="path_bar">





        <div class="cat_bar"><span style="color: #3C8534;">Modulo de Ordenes</span>&nbsp;&nbsp;&nbsp;
        </div>
        

              <div style="margin:10px;"></div>
      </div>

<!--Begin:Informacion-->





			<h1>Ordenes de Hoy</h1>

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
ArrayList<IEntidad> listaOrdenesHoy = (ArrayList) request.getAttribute("lista.ordeneshoy");
if(listaOrdenesHoy == null){
	//out.println("No hay Productos registrados en el Sistema");
}
else{
	for (IEntidad entidad : listaOrdenesHoy)
	{
            String color = (listaOrdenesHoy.indexOf(entidad) % 2 == 0)?"#CEF6F5":"#E0E0F8";
            EntidadOrdenes ordenes = (EntidadOrdenes) entidad;
%>


		<tr class="odd gradeA">
			<td><% out.print( ordenes.getOrdenID()); %></td>
			<td><% out.print( ordenes.getNombreSolicitante()); %></td>
			<td><% out.print( ordenes.getTelefono()); %></td>
			<td class="center"><% out.print( ordenes.getFechaPedido()); %></td>
                        <td class="center"><a href="ServletControlOrdenes?accion=listadoDetalle&ordenid=<% out.print( ordenes.getOrdenID()); %>"> Ver </a> </td>

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
			<th>Detalle</th>
		</tr>
	</tfoot>
</table>


			</div>
	<h1>Ordenes Anteriores</h1>

      <iframe src="ServletControlOrdenes?accion=listadoAnterior" width="100%" height="200" id='frameDemo'></iframe>
<script>$("#frameDemo").contents().find("a").css("background-color","#BADA55");</script>
			</div>
			
			<div id="footer">
				<div style="float:left;margin-left:10px;padding-top:6px">
					<a href="" target="_blank" style="font-weight:700;color:#666666">PuestoDeQuipe.com</a><br>
					<span style="font-size:10px">Load time: 0.210s</span>
				</div>
				<div style="float:right;height:40px;margin-right:10px;line-height:38px;vertical-align:middle">				| <a href="" target="_blank" class="footer_link">Contact</a>
					| <a href="" target="_blank" class="footer_link">Soporte Tecnicor</a>
				
				</div>
			</div>
		</div>
	</div>
	
</body></html>