package com.rood.Servicio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DataBaseServices {
    private static DataBaseServices blogDBInstancia;
    private String URL = "jdbc:h2:tcp://localhost/~/rood-gerard";


    private  DataBaseServices(){
        registrarDriver();
    }

    private void registrarDriver() {
        try {
            Class.forName("org.h2.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataBaseServices.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Retornando la instancia.
     * @return
     */
    public static DataBaseServices getInstancia(){
        if(blogDBInstancia==null){
            blogDBInstancia = new DataBaseServices();
        }
        return blogDBInstancia;
    }

    public Connection getConexion() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(URL, "sa", "");
        } catch (SQLException ex) {
            Logger.getLogger(DataBaseServices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

    public void testConexion() {
        getConexion();
        System.out.println("Se realizo una conexion exitosa...");
    }

}
