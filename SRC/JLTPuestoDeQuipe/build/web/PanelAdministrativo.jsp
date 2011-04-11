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
			<a href="ServletControlOrdenes?accion=listado">
				<img src="administrator/img/Panel/AdminCatalog.gif" alt="" border="0"> Ordenes
			</a>
		</li><li class="submenu_size " id="maintab2">
			<a href="Ofertas.jsp">
				<img src="administrator/img/Panel/AdminCustomers.gif" alt="" border="0"> Ofertas
			</a>
		</li><li class="submenu_size " id="maintab3">
			<a href="ServletControlInventario?accion=listado">
				<img src="administrator/img/Panel/AdminOrders.gif" alt="" border="0"> Inventario
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
          <table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td>
        <div class="path_bar">





        <div class="cat_bar"><span style="color: #3C8534;">Modulo de Ordenes</span>&nbsp;&nbsp;&nbsp;
        </div>
        

              <div style="margin:10px;">
                  <a href="ServletControlOrdenes?accion=listado">
                  <img src="administrator/img/modrdenes.jpg" width="370" height="153" border="0">
				  </a>
                  </img>
              </div>
      </div>

    </td>
    <td>

             <div class="path_bar">





        <div class="cat_bar"><span style="color: #3C8534;">Modulo de Inventario</span>&nbsp;&nbsp;&nbsp;
        </div>


              <div style="margin:10px;"><a href="ServletControlInventario?accion=listado"><img src="administrator/img/inventario.jpg" width="370" height="153" border="0"></a></div>
      </div>


    </td>
  </tr>
  <tr>
    <td>

             <div class="path_bar">





        <div class="cat_bar"><span style="color: #3C8534;">Modulo de Ofertas</span>&nbsp;&nbsp;&nbsp;
        </div>


              <div style="margin:10px;"><a href="Ofertas.jsp"><img src="administrator/img/Ofertas.jpg" width="370" height="153" border="0"></a></div>
      </div>



    </td>
    <td>

             <div class="path_bar">





        <div class="cat_bar"><span style="color: #3C8534;">Modulo de Configuracion/Parametrizacion de Sistema</span>&nbsp;&nbsp;&nbsp;
        </div>


              <div style="margin:10px;"><img src="administrator/img/Administrativo.jpg" width="370" height="153"></div>
      </div>



    </td>
  </tr>
</table>




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