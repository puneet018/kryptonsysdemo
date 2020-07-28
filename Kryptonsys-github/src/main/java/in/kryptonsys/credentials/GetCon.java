package in.kryptonsys.credentials;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//@Configuration
//@PropertySource("classpath:db.properties")
public class GetCon {
	private GetCon() {
	}

	static {
		try {
			Class.forName(DBIntializer.DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// @Bean
	public static Connection getCon() {
		Connection con = null;
		try {
			con = DriverManager.getConnection(DBIntializer.CON_STRING);

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Exception in GetCon");
		}
		return con;
	}

	/*
	 * public static int getPrimaryKey(){ int nextvalue=0; Connection
	 * con=GetCon.getCon(); PreparedStatement ps2; try {
	 * 
	 * ps2=con.prepareStatement("select BANKACCOUNT.nextval from dual");
	 * 
	 * ResultSet rs=ps2.executeQuery(); rs.next(); nextvalue=rs.getInt(1);
	 * 
	 * 
	 * 
	 * } catch (SQLException e) {
	 * 
	 * e.printStackTrace(); } return nextvalue;
	 * 
	 * }
	 */
}
