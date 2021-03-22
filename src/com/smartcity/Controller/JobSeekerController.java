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

import com.smartcity.DAOLayer.JobSeekerDAOLayer;
import com.smartcity.model.JobSeeker;

/**
 * Servlet implementation class JobSeekerController
 */
@WebServlet("/JobSeekerController")
@MultipartConfig(maxFileSize = 16177215)
public class JobSeekerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobSeekerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		JobSeeker j=new JobSeeker();
		JobSeekerDAOLayer jd=new JobSeekerDAOLayer();
		j.setCompanyName(request.getParameter("companyName"));
		j.setJobTitle(request.getParameter("JobTitle"));
		j.setLink(request.getParameter("link"));
		j.setDescrp(request.getParameter("description"));
		
		System.out.println(request.getParameter("companyName"));
		System.out.println(request.getParameter("JobTitle"));
		System.out.println(request.getParameter("link"));
		System.out.println(request.getParameter("description"));
	
	// Image
		InputStream is = null;
		Part filePart = request.getPart("photo"); // obtains the upload file part in this multipart request
		if (filePart != null) {
			is = filePart.getInputStream();
		}

		j.setPhoto(is);
		
		try {
			jd.addJob(j);
			request.setAttribute("message", "Job Added Sucessfully");
			request.getRequestDispatcher("AddJobSeeker.jsp").include(request, response);
			
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
