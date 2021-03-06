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
import com.puestodequipe.mvc.database.DAOEntidadProductos;
import com.puestodequipe.mvc.models.EntidadProductos;


/**
 *
 * @author developer
 */
public class ServletControlProductos extends HttpServlet {
   
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
            if(accion == null || accion.isEmpty()){
                        response.sendRedirect( "vistas/web_mensaje.jsp?mensaje=El sistema no reconoce esta Accion" );
           }
            else  if(accion.equals("listado")){

                DAOEntidadProductos daoproducto = new DAOEntidadProductos();
                    ArrayList listaproducto = daoproducto.listar(null); // si es null no se aplica el Where en la clausula select del metodo listar;
                    request.setAttribute("lista.productos",listaproducto );
                    getServletContext().getRequestDispatcher("/portada.jsp").forward(request, response);
            }else{

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
