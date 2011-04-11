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
import com.puestodequipe.mvc.models.EntidadDetalleOrdenes;
import com.puestodequipe.mvc.models.IEntidad;
/**
 *
 * @author developer
 */
public class DAOEntidadDetalleOrdenes extends ManejadorBaseDatos implements IDAOPersistencia{



  public DAOEntidadDetalleOrdenes(String driver, String servidor, String url, String usuarioBD, String passwordUsuarioBD, String nombreBD) throws Exception {
        super(driver, servidor, url, usuarioBD, passwordUsuarioBD, nombreBD);
    }

    public DAOEntidadDetalleOrdenes() throws Exception {
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

    public ArrayList<IEntidad> listarDetalleOrden(IEntidad objeto) throws Exception {

            ArrayList<IEntidad> listaordenes = new ArrayList<IEntidad>();
            EntidadDetalleOrdenes ordenes= (EntidadDetalleOrdenes) objeto;
            Connection con = getConexion();
            String sentenciaSQL = "SELECT OrdenID, DetalleID,Nombre_Producto,Cantidad,Precio_Venta,SubTotal FROM vw_Lista_Detalle_Orden where OrdenID="+ordenes.getOrdenID()+";";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  ordenes = new EntidadDetalleOrdenes( filasConsulta.getInt("OrdenID"),
                                          filasConsulta.getString( "DetalleID" ),
                                          filasConsulta.getString( "Nombre_Producto" ),
                                          filasConsulta.getDouble( "Cantidad" ),
                                          filasConsulta.getDouble( "Precio_Venta" ),
                                          filasConsulta.getDouble( "SubTotal" )
                                        );

                listaordenes.add( ordenes );
            }
            desconectar( );
            return listaordenes ;
    }

    public ArrayList<IEntidad> listar(String condicion) throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    

}
