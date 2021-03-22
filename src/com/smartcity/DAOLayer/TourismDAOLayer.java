package com.smartcity.DAOLayer;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import com.smartcity.model.Tourism;

import JDBCConnection.JdbcConnection;

public class TourismDAOLayer {
	static Connection connection = JdbcConnection.getConnection();
	static PreparedStatement pst;

	public void addTourism(Tourism t) throws SQLException {
		String result="";
		String query = "insert into tourism values(?,?,?,?)";
		pst=connection.prepareStatement(query); 
		pst.setString(1, t.getpName());
		pst.setString(2, t.getLocation());
		pst.setString(3, t.getDescrp());
		pst.setBlob(4, t.getPhoto());
		pst.executeUpdate();
		result = "Data Added Successfully...";
		System.out.println(result);
		

	}
	
	public static List<Tourism> placesList() throws SQLException, IOException{
		
		List<Tourism> pl=new ArrayList<Tourism>();
		Tourism t;
		String query = "select * from Tourism";
		pst=connection.prepareStatement(query);
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			t=new Tourism();
			t.setpName(rs.getString("placeName"));
			t.setLocation(rs.getString("Location"));
			t.setDescrp(rs.getString("descrp"));
			//for image
			java.sql.Blob blob = rs.getBlob("photo");
			InputStream inputStream = blob.getBinaryStream();
			ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
			byte[] buffer = new byte[14096];
			int bytesRead = -1;
			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outputStream.write(buffer, 0, bytesRead);

			}

			byte[] imageBytes = outputStream.toByteArray();
			String base64Image = Base64.getEncoder().encodeToString(imageBytes);
			inputStream.close();
			outputStream.close();
			t.setBase64Image(base64Image);
			
			pl.add(t);
			
		}
		String result = "Data Retrive Successfully...";
		System.out.println(result);
		
		return pl;
		
	}
}
