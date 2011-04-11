/* * Tomas Jimenez
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import com.puestodequipe.mvc.models.EntidadOrdenes;
import com.puestodequipe.mvc.models.IEntidad;
/**

/**
 *
 * @author developer
 */
public class DAOEntidadOrdenes  extends ManejadorBaseDatos implements IDAOPersistencia{



  public DAOEntidadOrdenes(String driver, String servidor, String url, String usuarioBD, String passwordUsuarioBD, String nombreBD) throws Exception {
        super(driver, servidor, url, usuarioBD, passwordUsuarioBD, nombreBD);
    }

    public DAOEntidadOrdenes() throws Exception {
        super();
    }



    public int insertar(IEntidad objeto) throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int borrar(String condicion) throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int modificar(IEntidad objeto, String condicion) throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public IEntidad buscar(String codigo) throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public ArrayList<IEntidad> listar(String condicion) throws Exception {

                      ArrayList<IEntidad> listaordenes = new ArrayList<IEntidad>();
            EntidadOrdenes ordenes = null;
            Connection con = getConexion();
            String sentenciaSQL = "SELECT Antiguedad,OrdenID,Nombre_Solicitante,Correo_Electronico,Telefono,Celular,Direccion_Detallada,Fecha_Pedido FROM vw_lista_ordenes where Antiguedad='Hoy';";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  ordenes = new EntidadOrdenes( filasConsulta.getString("Antiguedad"),
                                          filasConsulta.getInt( "OrdenID" ),
                                          filasConsulta.getString( "Nombre_Solicitante" ),
                                          filasConsulta.getString( "Correo_Electronico" ),
                                          filasConsulta.getString( "Telefono" ),
                                          filasConsulta.getString( "Celular" ),
                                          filasConsulta.getString( "Direccion_Detallada" ),
                                           filasConsulta.getDate( "Fecha_Pedido" )

                                        );

                listaordenes.add( ordenes );
            }
            desconectar( );
            return listaordenes ;
    }

        public ArrayList<IEntidad> listarAnteriores(String condicion) throws Exception {

                      ArrayList<IEntidad> listaordenes = new ArrayList<IEntidad>();
            EntidadOrdenes ordenes = null;
            Connection con = getConexion();
            String sentenciaSQL = "SELECT Antiguedad,OrdenID,Nombre_Solicitante,Correo_Electronico,Telefono,Celular,Direccion_Detallada,Fecha_Pedido FROM vw_lista_ordenes where Antiguedad='Anteriores';";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  ordenes = new EntidadOrdenes( filasConsulta.getString("Antiguedad"),
                                          filasConsulta.getInt( "OrdenID" ),
                                          filasConsulta.getString( "Nombre_Solicitante" ),
                                          filasConsulta.getString( "Correo_Electronico" ),
                                          filasConsulta.getString( "Telefono" ),
                                          filasConsulta.getString( "Celular" ),
                                          filasConsulta.getString( "Direccion_Detallada" ),
                                           filasConsulta.getDate( "Fecha_Pedido" )
                                        );

                listaordenes.add( ordenes );
            }
            desconectar( );
            return listaordenes ;
    }



      public ArrayList<IEntidad> listarDetalle(IEntidad objeto) throws Exception {
            EntidadOrdenes ordenes = (EntidadOrdenes) objeto;

          ArrayList<IEntidad> listaordenes = new ArrayList<IEntidad>();
      
            Connection con = getConexion();
            String sentenciaSQL = "SELECT Antiguedad,OrdenID,Nombre_Solicitante,Correo_Electronico,Telefono,Celular,Direccion_Detallada,Fecha_Pedido FROM vw_lista_ordenes where Antiguedad='Hoy' and OrdenID="+ordenes.getOrdenID()+";";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  ordenes = new EntidadOrdenes( filasConsulta.getString("Antiguedad"),
                                          filasConsulta.getInt( "OrdenID" ),
                                          filasConsulta.getString( "Nombre_Solicitante" ),
                                          filasConsulta.getString( "Correo_Electronico" ),
                                          filasConsulta.getString( "Telefono" ),
                                          filasConsulta.getString( "Celular" ),
                                          filasConsulta.getString( "Direccion_Detallada" ),
                                           filasConsulta.getDate( "Fecha_Pedido" )
                                        );

                listaordenes.add( ordenes );
            }
            desconectar( );
            return listaordenes ;
    }


      public int ConfirmarOrdenedeCliente( IEntidad objeto)  throws Exception {
		int filas = 0;
		EntidadOrdenes ordenes = (EntidadOrdenes) objeto;
                Connection con = getConexion();
            String sentenciaSQL = "call pa_confirmacion_orden ('"+
                    ordenes.getOrdenID()+"')";

            conectar();
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );

            filas=actualizar(sentencia);
            desconectar();

            return filas;

	}

          public int CreacionNuevaOrdenCliente( IEntidad objeto)  throws Exception {
		int filas = 0;
		EntidadOrdenes ordenes = (EntidadOrdenes) objeto;
                Connection con = getConexion();
           String sentenciaSQL = "call pa_nueva_orden2('"+ ordenes.getNombreSolicitante()+"','"+ordenes.getCorreoElectronico()+"','"+ordenes.getTelefono()+ "','"+ordenes.getCelular()+"','"+ordenes.getDireccionDetallada()+"','"+ordenes.getArrayproductocantidad()+"',"+ordenes.getTotalorden()+");";

            conectar();
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );

            filas=actualizar(sentencia);
            desconectar();

            return filas;

	}







      

    }


