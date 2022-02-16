package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GenericDao {
	private Connection connection;

	public Connection getConnection() throws ClassNotFoundException, SQLException{
		String hostName = "localhost";
		String dbName = "EX1_VIAGENS";
		String user = "SA";
		String senha = "Maycon@1234";
		Class.forName("net.sourceforge.jtds.jdbc.Driver");
		String connect = String.format("jdbc:jtds:sqlserver://%s:1433;databaseName=%s;user=%s;password=%s", 
				hostName, dbName, user, senha);
		
		connection = DriverManager.getConnection(connect);
		return connection;
	}
	
}
