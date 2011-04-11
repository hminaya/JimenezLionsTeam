<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.puestodequipe.mvc.models.*" %>
<%@page import="java.util.ArrayList" %>
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
    <div id="contact"> 
      <h2>Contacto</h2>
      <form name="contact" action="#" method="post">
        <label class="con">Tu Nombre</label>
        <input type="text" name="your_name" class="txt5" />
        <label class="con">Telefono</label>
        <input type="text" name="phone_no" class="txt5" />
        <label class="con">Email</label>
        <input type="text" name="email_id" class="txt5" />
        <label class="con">Tu Comentario</label>
        <textarea name="comments" cols="" rows=""></textarea>
        <a href="javascript:document.contact.reset();"><img src="images/btn_reset.gif" alt="reset" class="reset"/></a> 
        <input name="submit" type="image" value="submit" src="images/btn_submit.gif" alt="submit" />
      </form>
    </div>
  </div>
  <!--left panel end -->
  <div id="right-panel"> 
    <!--Begin:Despliege de Productos-->
    <form action="procesarorden.jsp" method="get">
      <!-- Smart Cart HTML Starts -->
      <div id="SmartCart" class="scMain"> 
        <%
ArrayList<IEntidad> listaProductos = (ArrayList) request.getAttribute("lista.productos");
if(listaProductos == null){
	//out.println("No hay Productos registrados en el Sistema");
}
else{
	for (IEntidad entidad : listaProductos)
	{
            String color = (listaProductos.indexOf(entidad) % 2 == 0)?"#CEF6F5":"#E0E0F8";
            EntidadProductos productos = (EntidadProductos) entidad;
%>
        <input type="hidden" pimage="<% out.print( productos.getImagen()); %>"
 pprice="<% out.print( productos.getPrecio()); %>" 
 pdesc="<% out.print(productos.getDecripcion()); %>"
 pcategory="<% out.print( productos.getCategoria()); %>"
 pname="<% out.print(productos.getNombre()); %>"
 pid="<% out.print( productos.getProductoID()); %>">
        <%
	}
  }
%>
      </div>
      <!-- Smart Cart HTML Ends -->
      <!--service div end -->
    </form>
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
