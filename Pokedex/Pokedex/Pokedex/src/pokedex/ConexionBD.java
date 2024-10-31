package pokedex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class ConexionBD {
	private static final String CONTROLADOR="com.mysql.jbdc.Driver";
	private static final String URL ="jdbc:mysql://localhost:3306/pokedex?useSSL=false";
	private static final String USUARIO ="root";
	private static final String CLAVE="1234";
	Connection con=null;
	Statement stm = null;
	ResultSet resultado=null;
	
	public Connection conexion_correcta()
	{
		
		try {
			con=DriverManager.getConnection(URL, USUARIO, CLAVE);
			
			System.out.println("Conexion realizada correctamente");
                        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en la conexion");
			e.printStackTrace();
		}
		return con;
	}

}