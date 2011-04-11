/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.models;

import java.util.Date;
/**
 *
 * @author developer
 */
public class EntidadDetalleOrdenes implements IEntidad {


private int ordenID;
private String detalleID;
private String nombre_Producto;
private double cantidad;
private double precio_Venta;
private double subTotal;



public EntidadDetalleOrdenes(int ordenID,String detalleID,String nombre_Producto,double cantidad,double precio_Venta,double subTotal){

this.ordenID=ordenID;
this.detalleID=detalleID;
this.nombre_Producto=nombre_Producto;
this.cantidad=cantidad;
this.precio_Venta=precio_Venta;
this.subTotal=subTotal;

}

public EntidadDetalleOrdenes(){


}



    public boolean comparar(IEntidad objeto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * @return the ordenID
     */
    public int getOrdenID() {
        return ordenID;
    }

    /**
     * @param ordenID the ordenID to set
     */
    public void setOrdenID(int ordenID) {
        this.ordenID = ordenID;
    }

    /**
     * @return the detalleID
     */
    public String getDetalleID() {
        return detalleID;
    }

    /**
     * @param detalleID the detalleID to set
     */
    public void setDetalleID(String detalleID) {
        this.detalleID = detalleID;
    }

    /**
     * @return the nombre_Producto
     */
    public String getNombre_Producto() {
        return nombre_Producto;
    }

    /**
     * @param nombre_Producto the nombre_Producto to set
     */
    public void setNombre_Producto(String nombre_Producto) {
        this.nombre_Producto = nombre_Producto;
    }

    /**
     * @return the cantidad
     */
    public double getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the precio_Venta
     */
    public double getPrecio_Venta() {
        return precio_Venta;
    }

    /**
     * @param precio_Venta the precio_Venta to set
     */
    public void setPrecio_Venta(double precio_Venta) {
        this.precio_Venta = precio_Venta;
    }

    /**
     * @return the subTotal
     */
    public double getSubTotal() {
        return subTotal;
    }

    /**
     * @param subTotal the subTotal to set
     */
    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }

  



}
