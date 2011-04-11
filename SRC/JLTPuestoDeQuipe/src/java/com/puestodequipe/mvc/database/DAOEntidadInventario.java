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
import com.puestodequipe.mvc.models.EntidadInventario;
import com.puestodequipe.mvc.models.IEntidad;
/**
/**
 *
 * @author developer
 */
public class DAOEntidadInventario extends ManejadorBaseDatos implements IDAOPersistencia{

    public DAOEntidadInventario(String driver, String servidor, String url, String usuarioBD, String passwordUsuarioBD, String nombreBD) throws Exception {
        super(driver, servidor, url, usuarioBD, passwordUsuarioBD, nombreBD);
    }

    public DAOEntidadInventario() throws Exception {
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
          EntidadInventario inventario = null;

          ArrayList<IEntidad> listainventario = new ArrayList<IEntidad>();

            Connection con = getConexion();
            String sentenciaSQL = "SELECT Nombre_Producto,Cantidad_Actual, Cantidad_Minima_Requerida FROM vw_Inventario;";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  inventario = new EntidadInventario( filasConsulta.getString("Nombre_Producto"),
                                          filasConsulta.getDouble( "Cantidad_Actual" ),
                                          filasConsulta.getDouble( "Cantidad_Minima_Requerida" )
                                        );

                listainventario.add( inventario );
            }
            desconectar( );
            return listainventario ;
    }

  

}
