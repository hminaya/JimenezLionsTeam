/* * Tomas Jimenez
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.database;

import java.util.ArrayList;

import com.puestodequipe.mvc.models.IEntidad;

/**
 *
 * @author John Carlos Arrieta
 */
public interface  IDAOPersistencia {
        public int insertar( IEntidad objeto) throws Exception;
	public int borrar(String condicion) throws Exception;
	public int modificar( IEntidad objeto, String condicion ) throws Exception;
	public IEntidad buscar( String codigo ) throws Exception;
	public ArrayList<IEntidad> listar( String condicion ) throws Exception;
}
