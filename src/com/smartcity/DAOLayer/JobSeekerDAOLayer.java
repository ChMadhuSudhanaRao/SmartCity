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
import com.smartcity.model.JobSeeker;
import JDBCConnection.JdbcConnection;

public class JobSeekerDAOLayer {
	static Connection connection = JdbcConnection.getConnection();
	static PreparedStatement pst;

	public void addJob(JobSeeker j) throws SQLException {
		String result="";
		String query = "insert into JobSeeker values(?,?,?,?,?)";
		pst=connection.prepareStatement(query); 
		pst.setString(1, j.getCompanyName());
		pst.setString(2, j.getJobTitle());
		pst.setString(3, j.getLink());
		pst.setString(4, j.getDescrp());
		pst.setBlob(5, j.getPhoto());
		pst.executeUpdate();
		result = "Data Added Successfully...";
		System.out.println(result);
		

	}
	
	public static List<JobSeeker> jobList() throws SQLException, IOException{
		
		List<JobSeeker> jl=new ArrayList<JobSeeker>();
		JobSeeker j;
		String query = "select * from JobSeeker";
		pst=connection.prepareStatement(query);
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			j=new JobSeeker();
			j.setCompanyName(rs.getString("CompanyName"));
			j.setJobTitle(rs.getString("JobTitle"));
			
			j.setLink(rs.getString("Link"));
			j.setDescrp(rs.getString("descrp"));
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
			j.setBase64Image(base64Image);
			
			jl.add(j);
			
		}
		String result = "Data Retrive Successfully...";
		System.out.println(result);
		
		return jl;
		
	}
}
