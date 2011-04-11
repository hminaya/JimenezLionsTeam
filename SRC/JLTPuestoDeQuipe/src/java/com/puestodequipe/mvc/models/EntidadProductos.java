/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.models;

/**
 *
 * @author developer
 */
public class EntidadProductos implements IEntidad {
    
private int productoID;
private String nombre;
private String decripcion;
private String categoria;
private float  precio;
private String imagen;


    

   public EntidadProductos(int productoID,String nombre,String decripcion,String categoria,float  precio,String imagen){

        this.productoID=productoID;
        this.nombre=nombre;
        this.decripcion=decripcion;
        this.categoria=categoria;
        this.precio=precio;
        this.imagen=imagen;
    }


     public boolean comparar(IEntidad objeto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * @return the productoID
     */
    public int getProductoID() {
        return productoID;
    }

    /**
     * @param productoID the productoID to set
     */
    public void setProductoID(int productoID) {
        this.productoID = productoID;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the decripcion
     */
    public String getDecripcion() {
        return decripcion;
    }

    /**
     * @param decripcion the decripcion to set
     */
    public void setDecripcion(String decripcion) {
        this.decripcion = decripcion;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the precio
     */
    public float getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(float precio) {
        this.precio = precio;
    }

    /**
     * @return the imagen
     */
    public String getImagen() {
        return imagen;
    }

    /**
     * @param imagen the imagen to set
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

 


}
