package project1.Stac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectToMysql {

	public static final String DRIVER="com.mysql.cj.jdbc.Driver";
	public static final String URL="jdbc:mysql://localhost:3306/";
	public static final String DB_NAME="project1";
	public static final String USER_NAME="root";
	public static final String PASSWORD="root";
	
	public static Connection startsConnection()
	{
		Connection con = null;
	try {
		Class.forName(DRIVER);
		con=DriverManager.getConnection(URL+DB_NAME,USER_NAME,PASSWORD);
	}catch(SQLException |ClassNotFoundException e) {
		e.printStackTrace();
	}
	return con;
	}
}
