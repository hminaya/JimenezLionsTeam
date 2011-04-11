/* * Tomas Jimenez
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.puestodequipe.mvc.controllers;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.puestodequipe.mvc.database.DAOEntidadOrdenes;
import com.puestodequipe.mvc.models.EntidadOrdenes;
import javax.swing.text.html.parser.Parser;

/**
 *
 * @author developer
 */
public class ServletControlOrdenes extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String accion = request.getParameter("accion");
            String IdOredenes= request.getParameter("ordenid");

           

            if(accion == null || accion.isEmpty()){
                        response.sendRedirect( "vistas/web_mensaje.jsp?mensaje=El sistema no reconoce esta Accion" );
           }
            else  if(accion.equals("listado")){
                    DAOEntidadOrdenes daoordenes = new DAOEntidadOrdenes();

                    ArrayList listaordenesHOY = daoordenes.listar(null); // si es null no se aplica el Where en la clausula select del metodo listar;
                    request.setAttribute("lista.ordeneshoy",listaordenesHOY );

            
                    getServletContext().getRequestDispatcher("/Ordenes.jsp").forward(request, response);

            }
       else  if(accion.equals("listadoAnterior")){
                    DAOEntidadOrdenes daoordenes = new DAOEntidadOrdenes();

                    ArrayList listaordenesAnterior = daoordenes.listarAnteriores(null); // si es null no se aplica el Where en la clausula select del metodo listar;
                    request.setAttribute("lista.ordenesAnterior",listaordenesAnterior );


                    getServletContext().getRequestDispatcher("/OrdenesAnteriores.jsp").forward(request, response);

            }

            else if (accion.equals("listadoDetalle")) {
                     EntidadOrdenes ordenes = new EntidadOrdenes();
                     ordenes.setOrdenID(Integer.parseInt(IdOredenes));
                
                    DAOEntidadOrdenes daoordenes = new DAOEntidadOrdenes();

                    ArrayList listaordenesDetalle = daoordenes.listarDetalle(ordenes); // si es null no se aplica el Where en la clausula select del metodo listar;
                    request.setAttribute("lista.ordenesDetalle",listaordenesDetalle );
                    getServletContext().getRequestDispatcher("/DetalleOrden.jsp").forward(request, response);
            }
               else if (accion.equals("ConfirmarOrden")) {
                 

                    EntidadOrdenes ordenes = new EntidadOrdenes();
                    ordenes.setOrdenID(Integer.parseInt(IdOredenes)  );

                    DAOEntidadOrdenes daoordenes = new DAOEntidadOrdenes();
                    daoordenes.ConfirmarOrdenedeCliente(ordenes);

                    response.sendRedirect( "vistas/web_mensaje.jsp?mensaje=La Orden No.. "+ordenes.getOrdenID()+" ha sido procesada " );


            }
               else if(accion.equals("CreacionClienteNuevo"))
               {
                    String nombre= request.getParameter("nombre");
                    String email= request.getParameter("email");
                    String telefono= request.getParameter("telefono");
                    String celular= request.getParameter("celular");
                    String direccion= request.getParameter("direccion");
                    String totalorden= request.getParameter("totalorden");
                    String arrayproductocantidad= request.getParameter("arrayproductocantidad");




                    EntidadOrdenes ordenes = new EntidadOrdenes();
                    ordenes.setNombreSolicitante(nombre);
                    ordenes.setCorreoElectronico(email);
                    ordenes.setTelefono(telefono);
                    ordenes.setCelular(celular);
                    ordenes.setDireccionDetallada(direccion);
                    ordenes.setTotalorden(Double.parseDouble(totalorden) );
                    ordenes.setArrayproductocantidad(arrayproductocantidad);

                

                    DAOEntidadOrdenes daoordenes = new DAOEntidadOrdenes();
                    int OrdenMax=daoordenes.CreacionNuevaOrdenCliente(ordenes);
                    //ArrayList listaordenes = daoordenes.listarDetalle(ordenes); // si es null no se aplica el Where en la clausula select del metodo listar;
                  
                    request.setAttribute("ordenidvar",OrdenMax );

                    System.out.println(OrdenMax);
                    getServletContext().getRequestDispatcher("/OrdenProcesada.jsp").forward(request, response);



            }
           
        }
        catch(Exception error){
            error.printStackTrace();
             response.sendRedirect( "vistas/web_mensaje.jsp?mensaje="+error.getMessage());
        }
        finally {
            out.close();
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
