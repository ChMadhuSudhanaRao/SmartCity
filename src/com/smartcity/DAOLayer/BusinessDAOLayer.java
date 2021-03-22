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

import com.smartcity.model.Business;
import JDBCConnection.JdbcConnection;


public class BusinessDAOLayer {

	

		static Connection connection = JdbcConnection.getConnection();
		static PreparedStatement pst;

		public void addNews(Business b) throws SQLException {
			String result="";
			String query = "insert into Business values(?,?,?,?)";
			pst=connection.prepareStatement(query); 
			pst.setString(1, b.getHeading());
			pst.setString(2, b.getDescription());
			pst.setString(3, b.getLink());
			pst.setBlob(4, b.getPhoto());
			pst.executeUpdate();
			result = "Data Added Successfully...";
			System.out.println(result);
			

		}
		
		public static List<Business> newsList() throws SQLException, IOException{
			
			List<Business> bl=new ArrayList<Business>();
			Business b;
			String query = "select * from Business";
			pst=connection.prepareStatement(query);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				b=new Business();
				b.setHeading(rs.getString("NewsHeading"));
				b.setDescription(rs.getString("Description"));
				
				b.setLink(rs.getString("Link"));
				
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
				b.setBase64Image(base64Image);
				
				bl.add(b);
				
			}
			String result = "Data Retrive Successfully...";
			System.out.println(result);
			
			return bl;
			
		
	}

}
