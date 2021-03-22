package com.smartcity.DAOLayer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.smartcity.model.Contact;

import JDBCConnection.JdbcConnection;


public class ContactDAOLayer {
	
		static Connection connection = JdbcConnection.getConnection();
		static PreparedStatement pst;

		public void insertMessage(Contact c) throws SQLException {
			String query = "insert into contact values(?,?,?,?)";
			
			connection = JdbcConnection.getConnection();
			pst = connection.prepareStatement(query);
			String result = "";
			pst.setString(1, c.getName());
			pst.setString(2, c.getEmail());
			pst.setString(3, c.getSubject());
			pst.setString(4, c.getMessage());

			pst.executeUpdate();
			result = "Data Added Successfully...";
			System.out.println(result);
		}

	}



