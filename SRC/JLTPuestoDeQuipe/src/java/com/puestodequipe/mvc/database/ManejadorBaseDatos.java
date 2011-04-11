/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.database;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//Para Leer Archivos Externos
//import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


/**
 *
 * @author Tomas Jimenez
 */
public class ManejadorBaseDatos {





     // atributos
 protected String driver = "com.mysql.jdbc.Driver";
 protected String nombreIPServidorBD = ""; // 127.0.0.1 o la real del PC si esta en red
 protected String url = "";
 protected int puertoServidorBD = 3306;
 protected String usuarioBD ="root";
 protected String passwordUsuarioBD="";
 protected String nombreBD="";
 private Connection conexion;
 private PreparedStatement sentencia;
 private ResultSet filasConsulta;

    // constructores
     public ManejadorBaseDatos( ) throws Exception{
          url = url+nombreIPServidorBD+":"+puertoServidorBD+"/"+nombreBD;
          this.conectar();
    }

    public ManejadorBaseDatos(String driver, String servidor, String url, String usuarioBD, String passwordUsuarioBD, String nombreBD) throws Exception {



        this.driver = driver;
        this.nombreIPServidorBD = servidor;
        this.url = url;
        this.usuarioBD = usuarioBD;
        this.passwordUsuarioBD = passwordUsuarioBD;
        this.nombreBD = nombreBD;
        this.conectar();
    }

    // setter y getter

    //...

    // operaciones sobre BD
     public void conectar( ) throws  Exception {
         //... colcar aqui el codigo para conectar al SMBD deseado

                  try {
            Class.forName(driver); // registro el driver de la SMBD
         }
         catch (ClassNotFoundException ex) {
            throw new Exception("Error de Driver "+ex.getMessage());
         }
         try {

             //Begin:Conexion desde XML
           
File file = new File("/var/www/configuracionwebapp/configdatabase.xml");
  DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
  DocumentBuilder db = dbf.newDocumentBuilder();
  Document doc = db.parse(file);
  doc.getDocumentElement().normalize();
  System.out.println("Root element " + doc.getDocumentElement().getNodeName());
  NodeList nodeLst = doc.getElementsByTagName("configuration");
  System.out.println("Information of all employees");

  for (int s = 0; s < nodeLst.getLength(); s++) {

    Node fstNode = nodeLst.item(s);

    if (fstNode.getNodeType() == Node.ELEMENT_NODE) {

           Element fstElmnt = (Element) fstNode;
      NodeList fstNmElmntLst = fstElmnt.getElementsByTagName("ServidorDB");
      Element fstNmElmnt = (Element) fstNmElmntLst.item(0);
      NodeList fstNm = fstNmElmnt.getChildNodes();
      System.out.println("Servidor de Base de Datos : "  + ((Node) fstNm.item(0)).getNodeValue());
      
      
      NodeList lstNmElmntLst = fstElmnt.getElementsByTagName("PuertoDB");
      Element lstNmElmnt = (Element) lstNmElmntLst.item(0);
      NodeList lstNm = lstNmElmnt.getChildNodes();
      System.out.println("PuertoDB: " + ((Node) lstNm.item(0)).getNodeValue());


      NodeList lstNmElmntLst1 = fstElmnt.getElementsByTagName("UsuarioDB");
      Element lstNmElmnt1 = (Element) lstNmElmntLst1.item(0);
      NodeList lstNm1 = lstNmElmnt1.getChildNodes();
      System.out.println("UsaurioDB : " + ((Node) lstNm1.item(0)).getNodeValue());
      
      
           NodeList lstNmElmntLst2 = fstElmnt.getElementsByTagName("ContrasenaDB");
      Element lstNmElmnt2 = (Element) lstNmElmntLst2.item(0);
      NodeList lstNm2 = lstNmElmnt2.getChildNodes();
      System.out.println("ContrasenaDB: " + ((Node) lstNm2.item(0)).getNodeValue());

                 NodeList lstNmElmntLst3 = fstElmnt.getElementsByTagName("ShemaDB");
      Element lstNmElmnt3 = (Element) lstNmElmntLst3.item(0);
      NodeList lstNm3 = lstNmElmnt3.getChildNodes();
      System.out.println("Schema DB: " + ((Node) lstNm3.item(0)).getNodeValue());



    conexion = DriverManager.getConnection("jdbc:mysql://"+((Node) fstNm.item(0)).getNodeValue()+"/"+((Node) lstNm3.item(0)).getNodeValue(), ((Node) lstNm1.item(0)).getNodeValue(), ((Node) lstNm2.item(0)).getNodeValue());

    }
             }



             
                //End:Conexion desde XML
         }
         catch (SQLException ex) {
            throw new Exception("Error de Conexion \n Codigo:"+ex.getErrorCode()+" Explicacion:"+ex.getMessage());
         }

    }

    public int actualizar(PreparedStatement sentencia) throws Exception {
         try {
             int res =  sentencia.executeUpdate();
             return res;
         }
         catch (SQLException ex) {
             throw new SQLException("Error al ejecutar sentencia BD Conexion \n Codigo:"+ex.getErrorCode()+" Explicacion:"+ex.getMessage());
         }
     }

   public ResultSet consultar(PreparedStatement sentencia) throws Exception{
         try {
            ResultSet filasBD = sentencia.executeQuery(); // solo para Select
             return filasBD;
         }
         catch (SQLException ex) {
             throw new SQLException("Error al ejecutar sentencia BD Conexion "+ex.getMessage());
         }
     }

    public void desconectar(){
         try {
             conexion.close();
         } catch (SQLException ex) {
            conexion = null;
         }
     }

    public PreparedStatement crearSentencia(String sql)throws Exception{
         try {
             PreparedStatement sentencia = conexion.prepareStatement(sql);
             return  sentencia;
         }
         catch (SQLException ex) {
             throw new SQLException("Error de Sentencia DB \n Codigo:"+ex.getErrorCode()+" Explicacion:"+ex.getMessage());
         }
     }

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    public ResultSet getFilasConsulta() {
        return filasConsulta;
    }

    public void setFilasConsulta(ResultSet filasConsulta) {
        this.filasConsulta = filasConsulta;
    }

    public String getNombreBD() {
        return nombreBD;
    }

    public void setNombreBD(String nombreBD) {
        this.nombreBD = nombreBD;
    }

    public String getNombreIPServidorBD() {
        return nombreIPServidorBD;
    }

    public void setNombreIPServidorBD(String nombreIPServidorBD) {
        this.nombreIPServidorBD = nombreIPServidorBD;
    }

    public String getPasswordUsuarioBD() {
        return passwordUsuarioBD;
    }

    public void setPasswordUsuarioBD(String passwordUsuarioBD) {
        this.passwordUsuarioBD = passwordUsuarioBD;
    }

    public int getPuertoServidorBD() {
        return puertoServidorBD;
    }

    public void setPuertoServidorBD(int puertoServidorBD) {
        this.puertoServidorBD = puertoServidorBD;
    }

    public PreparedStatement getSentencia() {
        return sentencia;
    }

    public void setSentencia(PreparedStatement sentencia) {
        this.sentencia = sentencia;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsuarioBD() {
        return usuarioBD;
    }

    public void setUsuarioBD(String usuarioBD) {
        this.usuarioBD = usuarioBD;
    }

}
