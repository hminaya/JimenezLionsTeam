<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
	
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<link type="text/css" rel="stylesheet" href="administrator/css/login.css" />
		<title>PuestoDeQuipe.Com Panel Administrativo</title>
	</head>
	<body>
                  <form name="form1" method="post" action="PanelAdministrativo.jsp">



	<div id="container">
			<div id="login">
				<h1>PuestoDeQuipe.Com</h1>
				<form action="PanelAdministrativo.jsp" method="post">
                                    <label>Usuario</label><br />
					<input type="text" id="email" name="email" value="admin" class="input"/>
					<div style="margin: 1.8em 0 0 0;">
						<label>Clave</label><br />
						<input type="password" name="passwd" class="input" value="admin"/>
					</div>
					<div>
						<div id="submit"><input type="submit" name="Submit" value="ENTRAR" class="button" /></div>
						<div id="lost"><a href="password.jsp">Usted perdio su Clave, Recuperala aqui?</a></div>
					</div>
	<script type="text/javascript">
<!--
if (document.getElementById('email')) document.getElementById('email').focus();
-->
</script>



				</form>
			</div>
			<h2><a href="">&copy; Copyright by Jimenez Lions Team. all rights reserved.</a></h2>
		</div>

                      </form>	

	</body>


<meta http-equiv="content-type" content="text/html;charset=utf-8">
</html>