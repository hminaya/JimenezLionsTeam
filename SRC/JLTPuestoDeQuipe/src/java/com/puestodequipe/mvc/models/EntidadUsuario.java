/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.models;

/**
 *
 * @author developer
 */
public class EntidadUsuario  implements IEntidad {

   private int codUsuario;
   private String nombreUsuario;
   private String clave;
   private int roll;
   private int estado;



    public EntidadUsuario(int codUsuario,String nombreUsuario,String clave,int roll,int estado ){

        this.codUsuario=codUsuario;
        this.nombreUsuario=nombreUsuario;
        this.clave=clave;
        this.roll=roll;
        this.estado=estado;


    }

    public EntidadUsuario(){

    }

    public boolean comparar(IEntidad objeto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * @return the codUsuario
     */
    public int getCodUsuario() {
        return codUsuario;
    }

    /**
     * @param codUsuario the codUsuario to set
     */
    public void setCodUsuario(int codUsuario) {
        this.codUsuario = codUsuario;
    }

    /**
     * @return the nombreUsuario
     */
    public String getNombreUsuario() {
        return nombreUsuario;
    }

    /**
     * @param nombreUsuario the nombreUsuario to set
     */
    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    /**
     * @return the clave
     */
    public String getClave() {
        return clave;
    }

    /**
     * @param clave the clave to set
     */
    public void setClave(String clave) {
        this.clave = clave;
    }

    /**
     * @return the roll
     */
    public int getRoll() {
        return roll;
    }

    /**
     * @param roll the roll to set
     */
    public void setRoll(int roll) {
        this.roll = roll;
    }

    /**
     * @return the estado
     */
    public int getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(int estado) {
        this.estado = estado;
    }
    


}
