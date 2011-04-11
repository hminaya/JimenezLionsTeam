/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.models;

/**
 *
 * @author developer
 */
public class EntidadInventario implements IEntidad {


    private String nombreProducto;
    private double cantidadActual;
    private double cantidadMinimaRequerida;



   public EntidadInventario(String nombreProducto,double cantidadActual,double cantidadMinimaRequerida){

       this.nombreProducto=nombreProducto;
       this.cantidadActual=cantidadActual;
       this.cantidadMinimaRequerida=cantidadMinimaRequerida;


    }

    public EntidadInventario(){

    }

    

    public boolean comparar(IEntidad objeto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * @return the nombreProducto
     */
    public String getNombreProducto() {
        return nombreProducto;
    }

    /**
     * @param nombreProducto the nombreProducto to set
     */
    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    /**
     * @return the cantidadActual
     */
    public double getCantidadActual() {
        return cantidadActual;
    }

    /**
     * @param cantidadActual the cantidadActual to set
     */
    public void setCantidadActual(double cantidadActual) {
        this.cantidadActual = cantidadActual;
    }

    /**
     * @return the cantidadMinimaRequerida
     */
    public double getCantidadMinimaRequerida() {
        return cantidadMinimaRequerida;
    }

    /**
     * @param cantidadMinimaRequerida the cantidadMinimaRequerida to set
     */
    public void setCantidadMinimaRequerida(double cantidadMinimaRequerida) {
        this.cantidadMinimaRequerida = cantidadMinimaRequerida;
    }

}
