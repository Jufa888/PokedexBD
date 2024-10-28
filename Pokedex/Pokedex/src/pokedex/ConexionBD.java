/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pokedex;

/**
 *
 * @author MEDAC
 */
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionBD {
    
            private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
        private static final String URL_CONEXION = "jdbc:mysql://localhost:3306/prueba";
        
        public static void main(String args[]) throws SQLException {

            final String usuario = "root";
            final String password = "1234";
            Connection dbConnection = null;
            Statement statement = null;
            Statement statement2 = null;
            try {
                Class.forName(DRIVER);
                Connection conn = DriverManager.getConnection(URL_CONEXION, usuario, password);   
                
            
                
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            } catch (ClassNotFoundException e) {
                System.out.println(e.getMessage());
            } finally {
                if (statement != null) {
                    statement.close();
                }
                if (dbConnection != null) {
                    dbConnection.close();
                }
            }
            
    } 
     
    
}
