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
public class EntidadOrdenes implements IEntidad {

    private String antiguedad;
    private int ordenID;
    private String nombreSolicitante;
    private String correoElectronico;
    private String telefono;
    private String celular;
    private String direccionDetallada;
    private Date fechaPedido;
    private double totalorden;
    private String arrayproductocantidad;

   //constructor con   arrayproductocantidad
   public EntidadOrdenes(String antiguedad,int ordenID,String nombreSolicitante,String correoElectronico,String telefono,String celular,String direccionDetallada,Date fechaPedido,double totalorden,String arrayproductocantidad){


                this.antiguedad=antiguedad;
                this.ordenID=ordenID;
                this.nombreSolicitante=nombreSolicitante;
                this.correoElectronico=correoElectronico;
                this.telefono=telefono;
                this.celular=celular;
                this.direccionDetallada=direccionDetallada;
                this.fechaPedido=fechaPedido;
                this.totalorden=totalorden;
                this.arrayproductocantidad=arrayproductocantidad;


    }

     //Constructor con Total de Ordenes
    public EntidadOrdenes(String antiguedad,int ordenID,String nombreSolicitante,String correoElectronico,String telefono,String celular,String direccionDetallada,Date fechaPedido,double totalorden){


                this.antiguedad=antiguedad;
                this.ordenID=ordenID;
                this.nombreSolicitante=nombreSolicitante;
                this.correoElectronico=correoElectronico;
                this.telefono=telefono;
                this.celular=celular;
                this.direccionDetallada=direccionDetallada;
                this.fechaPedido=fechaPedido;
                this.totalorden=totalorden;


    }
    //Constructor con parametro

        public EntidadOrdenes(String antiguedad,int ordenID,String nombreSolicitante,String correoElectronico,String telefono,String celular,String direccionDetallada,Date fechaPedido){


                this.antiguedad=antiguedad;
                this.ordenID=ordenID;
                this.nombreSolicitante=nombreSolicitante;
                this.correoElectronico=correoElectronico;
                this.telefono=telefono;
                this.celular=celular;
                this.direccionDetallada=direccionDetallada;
                this.fechaPedido=fechaPedido;



    }
        //constructor sin parametro

  public EntidadOrdenes(){


    }

    public EntidadOrdenes(int ordenID){

        this.ordenID=ordenID;

    }



    public boolean comparar(IEntidad objeto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     * @return the antiguedad
     */
    public String getAntiguedad() {
        return antiguedad;
    }

    /**
     * @param antiguedad the antiguedad to set
     */
    public void setAntiguedad(String antiguedad) {
        this.antiguedad = antiguedad;
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
     * @return the nombreSolicitante
     */
    public String getNombreSolicitante() {
        return nombreSolicitante;
    }

    /**
     * @param nombreSolicitante the nombreSolicitante to set
     */
    public void setNombreSolicitante(String nombreSolicitante) {
        this.nombreSolicitante = nombreSolicitante;
    }

    /**
     * @return the correoElectronico
     */
    public String getCorreoElectronico() {
        return correoElectronico;
    }

    /**
     * @param correoElectronico the correoElectronico to set
     */
    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the celular
     */
    public String getCelular() {
        return celular;
    }

    /**
     * @param celular the celular to set
     */
    public void setCelular(String celular) {
        this.celular = celular;
    }

    /**
     * @return the direccionDetallada
     */
    public String getDireccionDetallada() {
        return direccionDetallada;
    }

    /**
     * @param direccionDetallada the direccionDetallada to set
     */
    public void setDireccionDetallada(String direccionDetallada) {
        this.direccionDetallada = direccionDetallada;
    }

    /**
     * @return the fechaPedido
     */
    public Date getFechaPedido() {
        return fechaPedido;
    }

    /**
     * @param fechaPedido the fechaPedido to set
     */
    public void setFechaPedido(Date fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    /**
     * @return the totalorden
     */
    public double getTotalorden() {
        return totalorden;
    }

    /**
     * @param totalorden the totalorden to set
     */
    public void setTotalorden(double totalorden) {
        this.totalorden = totalorden;
    }

    /**
     * @return the arrayproductocantidad
     */
    public String getArrayproductocantidad() {
        return arrayproductocantidad;
    }

    /**
     * @param arrayproductocantidad the arrayproductocantidad to set
     */
    public void setArrayproductocantidad(String arrayproductocantidad) {
        this.arrayproductocantidad = arrayproductocantidad;
    }

}
