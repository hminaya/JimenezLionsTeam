Sistema PuestodeQuipe.Com Version 1.0.2.3
Por JIMENEZ LIONS TEAM

Descripción General: 

En base al caso planteado, Jimenez Lions Team decidimos realizar el Sistema en JAVA EE, ya que esto satisfacía la necesidad del cliente y del equipo de desarrollo que se integraría a trabajar. Se realizo el uso de las siguientes Tecnología Java EE, Jquery, OOP, MVC, MySQl Store Procedure, AJAX, Servlet, JSP, DAO.


Instrucciones Instalación Sistema PuestoDeQuipe.Com:

1-	Instalar Ubuntu Server 10.10
2-	Instalar Apache Tomcat 6.0
3-	Instalar MySQL CE o EE
4-	Realizar el Upload de WAR en Tomcat via la herramienta Manager.
5-	Copiar la siguiente ruta “/var/www/configuracionwebapp” la carpeta “configuracionwebapp”
6-	Dar permiso a la carpeta: configuracionwebapp “chmod 777 –R configuracionwebapp”
7-	Crear un base de dato con el nombre puestodequipe
7-	Correr el Archivo puestodequipe.sql en el MySQL

Aclaracion:

Deve de configurar el archivo configdatabase.xml que esta dentro de la carpeta configuracionwebapp y tiene la siguiente estructura

<?xml version="1.0"?>
<company>
	<configuration>
		<ServidorDB>localhost</ServidorDB>
		<PuertoDB>3306</PuertoDB>
		<UsuarioDB>root</UsuarioDB>
		<ContrasenaDB>0108019</ContrasenaDB>
		<ShemaDB>puestodequipe</ShemaDB>
	</configuration>
</company>


***Para acceder al area administrativa Link (Inventario, Ofertas, Interacion FaceBook & Twitter, API Quisquellano, Interface visible en Iphone y BlackBerry Toch, Procesamiento de Ordenes)

http://localhost:8084/JLTPuestoDeQuipe/login.jsp


***Para ver el solicitud via web (Creacion y SOlicitud de Ordenes)

http://localhost:8084/JLTPuestoDeQuipe/
http://localhost:8084/JLTPuestoDeQuipe/index


****Redes Sociales*****

FaceBook: jimenezlionsteam@yahoo.com
123456987
 
Twitter: jimenezlionsteam@yahoo.com
123456987




