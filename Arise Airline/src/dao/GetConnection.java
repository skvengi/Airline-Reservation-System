package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConnection {

	public Connection getCon() throws ClassNotFoundException, SQLException {
		String url="jdbc:mysql://localhost:3306/arise";
		String user="root";
		String password="root";
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		Connection con=DriverManager.getConnection(url, user, password);
		return con;
		
	}
}
