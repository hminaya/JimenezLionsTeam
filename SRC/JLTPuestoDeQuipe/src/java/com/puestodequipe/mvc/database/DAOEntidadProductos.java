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
import com.puestodequipe.mvc.models.EntidadProductos;
import com.puestodequipe.mvc.models.IEntidad;
/**
 *
 * @author developer
 */
public class DAOEntidadProductos extends ManejadorBaseDatos implements IDAOPersistencia{


    public DAOEntidadProductos(String driver, String servidor, String url, String usuarioBD, String passwordUsuarioBD, String nombreBD) throws Exception {
        super(driver, servidor, url, usuarioBD, passwordUsuarioBD, nombreBD);
    }

    public DAOEntidadProductos() throws Exception {
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
              ArrayList<IEntidad> listaproduto = new ArrayList<IEntidad>();
            EntidadProductos producto = null;
            Connection con = getConexion();
            String sentenciaSQL = "SELECT ProductoID,Nombre,Descripcion,Categoria,Precio,Imagen FROM vw_productos_ventas;";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  producto = new EntidadProductos( filasConsulta.getInt("ProductoID"),
                                          filasConsulta.getString( "Nombre" ),
                                          filasConsulta.getString( "Descripcion" ),
                                          filasConsulta.getString( "Categoria" ),
                                          filasConsulta.getFloat( "Precio" ),
                                          filasConsulta.getString( "Imagen" )
                                        );

                listaproduto.add( producto );
            }
            desconectar( );
            return listaproduto ;
    }

}
