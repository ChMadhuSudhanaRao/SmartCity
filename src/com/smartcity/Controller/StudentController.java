package com.smartcity.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.smartcity.DAOLayer.StudentDAOLayer;

import com.smartcity.model.Student;


/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
@MultipartConfig(maxFileSize = 16177215)
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Student s=new Student();
		StudentDAOLayer sd=new StudentDAOLayer();
		s.setCollegeName(request.getParameter("cName"));
		s.setCollegeAdd(request.getParameter("location"));
		s.setCollegeDescrp(request.getParameter("description"));
		System.out.println(request.getParameter("cName"));
		System.out.println(request.getParameter("location"));
		
	
		// Image
		InputStream is = null;
		Part filePart = request.getPart("photo"); // obtains the upload file part in this multipart request
		if (filePart != null) {
			is = filePart.getInputStream();
		}

		s.setPhoto(is);
		
		try {
			sd.addEdu(s);
			request.setAttribute("message", "College Added Sucessfully");
			request.getRequestDispatcher("AddEduInstitue.jsp").include(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
