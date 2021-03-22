package com.smartcity.DAOLayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.smartcity.model.Register;

import JDBCConnection.JdbcConnection;

public class RegisterDAO {
	static Connection connection = JdbcConnection.getConnection();
	static PreparedStatement pst;
	
	public int register(Register r) throws SQLException {

		String query="insert into register values(?,?,?,?,?,?,?,?,?)";
		pst=connection.prepareStatement(query);
		pst.setString(1, r.getfName());
		pst.setString(2, r.getlName());
		pst.setString(3, r.getPassword());
		pst.setString(4, r.getGender());
		pst.setString(5, r.getUserType());
		pst.setString(6, r.getEmail());
		pst.setString(7, r.getMobile());
		pst.setString(8, r.getCity());
		pst.setString(9, r.getCountry());
		int i=pst.executeUpdate();
		System.out.println("Added");
		return i;
		
	}

}
