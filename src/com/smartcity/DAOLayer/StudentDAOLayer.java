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

import com.smartcity.model.Student;


import JDBCConnection.JdbcConnection;

public class StudentDAOLayer {
	static Connection connection = JdbcConnection.getConnection();
	static PreparedStatement pst;

	public void addEdu(Student s) throws SQLException {
		String result="";
		String query = "insert into student values(?,?,?,?)";
		pst=connection.prepareStatement(query); 
		pst.setString(1, s.getCollegeName());
		pst.setString(2, s.getCollegeAdd());
		pst.setString(3, s.getCollegeDescrp());
		pst.setBlob(4, s.getPhoto());
		pst.executeUpdate();
		result = "Data Added Successfully...";
		System.out.println(result);
		

	}
	
	public static List<Student> eduList() throws SQLException, IOException{
		
		List<Student> sl=new ArrayList<Student>();
		Student s;
		String query = "select * from student";
		pst=connection.prepareStatement(query);
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			s=new Student();
			s.setCollegeName(rs.getString("EduName"));
			s.setCollegeAdd(rs.getString("Location"));
			s.setCollegeDescrp(rs.getString("descrp"));
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
			s.setBase64Image(base64Image);
			
			sl.add(s);
			
		}
		String result = "Data Retrive Successfully...";
		System.out.println(result);
		
		return sl;
		
	}
}
