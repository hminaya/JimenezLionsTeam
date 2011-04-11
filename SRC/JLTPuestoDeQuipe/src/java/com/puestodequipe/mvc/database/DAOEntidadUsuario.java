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
import com.puestodequipe.mvc.models.EntidadUsuario;
import com.puestodequipe.mvc.models.IEntidad;
/**
 *
 * @author developer
 */
public class DAOEntidadUsuario  extends ManejadorBaseDatos implements IDAOPersistencia{


    public DAOEntidadUsuario(String driver, String servidor, String url, String usuarioBD, String passwordUsuarioBD, String nombreBD) throws Exception {
        super(driver, servidor, url, usuarioBD, passwordUsuarioBD, nombreBD);
    }

    public DAOEntidadUsuario() throws Exception {
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
        throw new UnsupportedOperationException("Not supported yet.");
    }


 public ArrayList<IEntidad> AutenticacionUsuario(IEntidad objeto) throws Exception {
            EntidadUsuario ordenes = (EntidadUsuario) objeto;

          ArrayList<IEntidad> listaousuarios = new ArrayList<IEntidad>();

            Connection con = getConexion();
            String sentenciaSQL = "SELECT UsuarioID,Usuario_Corto,Clave,Rol,Estado FROM vw_usuarios where Usuario_Corto='"+ordenes.getNombreUsuario()+"' and Clave='"+ordenes.getClave()+";";
            System.out.println(sentenciaSQL);
            PreparedStatement sentencia = crearSentencia( sentenciaSQL );
            ResultSet filasConsulta = consultar(sentencia);
            while (filasConsulta .next()) {

                  ordenes = new EntidadUsuario( filasConsulta.getInt("UsuarioID"),
                                          filasConsulta.getString( "Usuario_Corto" ),
                                          filasConsulta.getString( "Clave" ),
                                          filasConsulta.getInt( "Rol" ),
                                          filasConsulta.getInt( "Estado" )
             
                                        );

                listaousuarios.add( ordenes );
            }
            desconectar( );
            return listaousuarios ;
    }


}
