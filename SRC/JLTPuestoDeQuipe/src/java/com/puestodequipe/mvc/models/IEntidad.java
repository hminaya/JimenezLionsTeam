/* * Tomas Jimenez
 * Interfaz que se utilizara por las entidades para comparar si alguno de sus
 * objetos es igual a otro objeto entidad proveniente de una consulta de la BD
 */

package com.puestodequipe.mvc.models;

/**
 *
 * @author John Carlos Arrieta
 */
public interface IEntidad {
    public boolean comparar( IEntidad objeto);
}
