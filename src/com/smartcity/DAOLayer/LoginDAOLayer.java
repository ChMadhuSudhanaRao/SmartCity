package com.smartcity.DAOLayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.smartcity.model.Login;

import JDBCConnection.JdbcConnection;

public class LoginDAOLayer {
	static Connection connection = JdbcConnection.getConnection();
	static PreparedStatement pst;
	
	public Login loginUser(String email) throws SQLException {
		
		Login l=new Login();
		pst = connection.prepareStatement("select email,upassword,usertype from register where email=?");
		pst.setString(1, email);
		ResultSet rs= pst.executeQuery();
		if( rs.next()) {
			l.setUserName(rs.getString("email"));
			l.setPassword(rs.getString("upassword"));
			l.setUserType(rs.getString("usertype"));
			
		}
		return l;
	}
public static Login admin(String email) throws SQLException {
		
		Login l=new Login();
		pst = connection.prepareStatement("select * from admin where adminName=?");
		pst.setString(1, email);
		ResultSet rs= pst.executeQuery();
		if( rs.next()) {
			l.setUserName(rs.getString("adminName"));
			l.setPassword(rs.getString("adminPassword"));
			
		}
		return l;
	}
}
