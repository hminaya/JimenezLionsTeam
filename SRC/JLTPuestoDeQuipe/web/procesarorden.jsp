<%@page import="java.util.Vector"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Puesto de Quipe - CodeJam2011 - Jimenez Lions Team</title>
<!--Estilo de la Pagina-->
<link href="Styles/style.css" rel="stylesheet" type="text/css" />

<!--Begin:JQuery Implementacion - PiriBox Extende-->
<link href="JavaScriptFramework/jquery/SmartCart2.0/styles/demo_style.css" rel="stylesheet" type="text/css">

<!-- Smart Cart Files Include -->
<link href="JavaScriptFramework/jquery/SmartCart2.0/styles/smart_cart.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="JavaScriptFramework/jquery/SmartCart2.0/js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="JavaScriptFramework/jquery/SmartCart2.0/js/jquery.smartCart-2.0.js"></script>

<script type="text/javascript">
   
    $(document).ready(function(){
    	// Call Smart Cart    	
  		$('#SmartCart').smartCart();
		});
</script>


<!--End:JQuery Implementacion - PiriBox Extende-->




</head>
<body>
<!--nav start -->
<div id="top">
<div id="nav-main">
<div id="nav">
<ul>
<li class="home">Portada</li>
<li><a href="#">Nosotros</a></li>
<li><a href="#">Mapa</a></li>
<li><a href="#">Contacto</a></li>

</ul>
</div>
</div>
</div>
<!--nav end -->
<!--header start -->
<div id="header-main">
  <div id="header"> 
    <div id="logo"> <img src="images/delivery.gif" alt="effective look" /> 
      <h2>Buscar</h2>
      <form name="email" action="#" method="post">
        <input name="email" type="text" class="txt" value="escriba aqui...." />
        <input name="" type="image" value="submit" src="images/btn_serch.gif" alt="serch" class="serch"/>
      </form>
    </div>
  </div>
</div>
<!--header end -->
<!--body start -->
<div id="body"> 
  <!--left panel start -->
  <div id="left"> 
    <div id="contact"> </div>
  </div>
  <!--left panel end -->
  <div id="right-panel"> 
    <!--Begin:Despliege de Productos-->
    <!--service div end -->
    <% String [] requests = request.getParameterValues("products_selected");
ArrayList<String> a = new ArrayList<String>();
String primeraDepuracionData=null;
for(int i = 0; i < requests.length;i++)
{
    a.add(requests[i]);
    //out.println(requests[i]+",");

}
primeraDepuracionData=a.toString().replace("[", "").replace("]", "");

%>
    <div id="contact"> Datos del Cliente 
      <form name="contact" action="ServletControlOrdenes" method="post">
        <label class="con">nombre del Solicitante</label>
        <input type="text" name="nombre" class="txt5" maxlength="50" />
        <label class="con">Correo Electronico (email)</label>
        <input type="text" name="email" class="txt5"  maxlength="50"  />
        <label class="con">Telefono</label>
        <input type="text" name="telefono" class="txt5" />
        <label class="con">Celular</label>
        <input type="text" name="celular" class="txt5" />
        <label class="con">Tu Direccion</label>
        <textarea name="direccion" cols="" rows=""></textarea>
        <a href="javascript:document.contact.reset();"><img src="images/btn_reset.gif" alt="" class="reset"/></a> 
        <input name="submit" type="image" value="Solicitar Orden" src="images/btn_submit.gif" alt="Enviar Solicitud" />
        <input type="hidden" name="totalorden" value="200">
        <input type="hidden" name="arrayproductocantidad" value="<%=primeraDepuracionData%>">
        <input type="hidden" name="accion" value="CreacionClienteNuevo">
      </form>
    </div>
    <!--End:Despliege de Productos-->
    <p class="quote">No Detengas tu paladar, solo clickquea y comienza a disfrutar 
      <span>....Calidad, Precio, Garantia</span> </p>
  </div>
</div>
<!--body end -->
<!--footer start -->
<div id="footer-main">
  <div id="footer"> 
    <ul>
      <li class="home">Portada</li>
      <li><a href="#">Realizar Ordenes</a></li>
      <li><a href="#">Mapa</a></li>
      <li ><a href="#">Contacto</a></li>
    </ul>
    <p class="copyright">&copy; Copyright PuestoDeQuipe.com <a "http://jigsaw.w3.org/css-validator/check/referer" target="_blank" class="cs">css</a> 
      <a "http://validator.w3.org/check?uri=referer" target="_blank" class="xht">xhtml</a></p>
    <p class="design">Disenado y Programado por: <a href="http://jimenezsoft.blogspot.com/" target="_blank" class="link"> 
      Jimenez Lions Team</a></p>
  </div>
</div>
<!--footer end -->
</body>
</html>
