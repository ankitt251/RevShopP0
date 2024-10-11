package com.app.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtil {
	private static Connection conn;

	public DBUtil() {
	}

	public static Connection provideConnection() {
	    if (conn == null || !isValidConnection(conn)) {
	        try {
	            ResourceBundle rb = ResourceBundle.getBundle("application");
	            String connectionString = rb.getString("db.connectionString");
	            String driverName = rb.getString("db.driverName");
	            String username = rb.getString("db.username");
	            String password = rb.getString("db.password");

	            // Load the driver
	            try {
	                Class.forName(driverName);
	            } catch (ClassNotFoundException e) {
	                e.printStackTrace();
	                throw new RuntimeException("Failed to load database driver: " + driverName, e);
	            }

	            // Establish the connection
	            conn = DriverManager.getConnection(connectionString, username, password);

	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw new RuntimeException("Failed to establish a database connection.", e);
	        }
	    }
	    return conn;
	}

	// Helper method to check if the connection is valid
	private static boolean isValidConnection(Connection conn) {
	    try {
	        return conn != null && !conn.isClosed() && conn.isValid(2); // 2 seconds timeout
	    } catch (SQLException e) {
	        return false;
	    }
	}


	public static void closeConnection(Connection con) {
		/*
		 * try { if (con != null && !con.isClosed()) {
		 * 
		 * con.close(); } } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */
	}

	public static void closeConnection(ResultSet rs) {
		try {
			if (rs != null && !rs.isClosed()) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void closeConnection(PreparedStatement ps) {
		try {
			if (ps != null && !ps.isClosed()) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}