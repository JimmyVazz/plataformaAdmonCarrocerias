/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package databaseControl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cjvas
 */
public class DatabaseHandler {
   
    
    /**
     * Objeto ensapsulado con donde se guarda el estado de la conexion a la BD
     * @return 
     */
    private static Connection con;   
    
    /***
     * Contructor vacio que manda un mensaje del estado de la BD
     */
    public DatabaseHandler(){
        System.out.println("Base de datos conectada");
    }
   
    /***
     * Metodo estatico connection para realizar la conexion a la BD
     * Try
     * Catch
     * Para manejar las excepciones
     * @return retorna la conexion o un null
     */
    public static Connection getConnection() {
        if(con == null){
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carroceria", "root", "");
            }catch (ClassNotFoundException ex){
                Logger.getLogger(DatabaseHandler.class.getName()).log(Level.SEVERE, null, ex);
            }catch(SQLException ex){
                Logger.getLogger(DatabaseHandler.class.getName()).log(Level.SEVERE, null, ex);
            
            }
        }
        return con;
    }
    /***
     * metodo statico para desconectar para la BD
     * regresa su valor a null, dejando fuera la conexion
     */
    public static void disconnect(){
        if(con != null){
            con=null;
        }
    }
    

    
}